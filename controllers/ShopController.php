<?php namespace Controller;

use Helper\Cart;
use \Psr\Container\ContainerInterface;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class ShopController
{
    protected $container;

    public function __construct(ContainerInterface $container)
    {
        $this->container = $container;
    }

    public function stores(Request $request, Response $response, $args)
    {
        $items = $this->container->db->select('stores');
        return $this->container->view->render($response, '/shop/stores.html.twig', [
            'stores' => $items
        ]);
    }

    public function products(Request $request, Response $response, $args)
    {
        $query = 'SELECT brands.name as brand_name, products.*, stores.name, stores.id as store_id FROM products 
                    INNER JOIN stock ON products.upc = stock.product_upc
                    INNER JOIN brands ON products.brand_id = brands.id
                    INNER JOIN stores ON stock.store_id = stores.id
                    WHERE stock.quantity > 0
                    AND stores.id = ' . $args['id'];
        $items = $this->container->db->custom($query);
        return $this->container->view->render($response, '/shop/products.html.twig', [
            'products' => $items
        ]);
    }

    public function addToCart(Request $request, Response $response, $args)
    {
        $session = $this->container->session;
        $cart = $this->container->auth->getUser()->getCart($session);
        $cart->addItem($args['id'], $args['store']);
        $cart->save($session);

        return $response->withRedirect('/products/' . $args['store']);
    }

    public function removeFromCart(Request $request, Response $response, $args)
    {
        $session = $this->container->session;
        $cart = $this->container->auth->getUser()->getCart($session);
        $cart->removeItem($args['id'], $args['store']);
        $cart->save($session);

        return $response->withRedirect('/cart');
    }

    public function cart(Request $request, Response $response, $args)
    {
        $session = $this->container->session;
        $cart = $this->container->auth->getUser()->getCart($session);

        foreach($cart->products as $product)
        {
            $product->getItemData($this->container->db);
        }

        $groupedArray = [];
        foreach($cart->products as $key => $item)
        {
            $groupedArray[$item->storeId][$key] = $item;
        }

        return $this->container->view->render($response, '/shop/cart.html.twig', [
            'carts' => $groupedArray
        ]);
    }

    public function confirm(Request $request, Response $response, $args)
    {
        $session = $this->container->session;
        $user = $this->container->auth->getUser();
        $cart = $user->getCart($session);

        $customerId = $this->container->db->select('customers', 'id', [
            'user_id' => $user->id
        ])[0]['id'];

        $orderId = $this->container->db->store('orders', [
            'customer_id' => $customerId,
            'store_id' => $args['store']
        ]);

        foreach($cart->products as $key => $product)
        {
            if($product->storeId == $args['store'])
            {
                $this->container->db->store('order_product', [
                    'order_id' => $orderId,
                    'product_upc' => $product->productId,
                    'quantity' => $product->quantity,
                    'unit_price' => 0
                ]);

                $subtractQuery = 'UPDATE stock 
                                    SET quantity = quantity -' . $product->quantity .
                                    ' WHERE product_upc = ' . $product->productId .
                                    ' AND store_id = ' . $args['store'];

                $this->container->db->custom($subtractQuery);

                unset($cart->products[$key]);
            }
        }

        $cart->save($session);

        return $response->withRedirect('/cart');
    }

    public function past(Request $request, Response $response, $args)
    {
        $session = $this->container->session;
        $user = $this->container->auth->getUser();
        $cart = $user->getCart($session);
        $groupedArray = [];

        $query = 'SELECT orders.id as order_id, order_product.quantity, products.product_name, products.size, products.msrp, brands.name as brand_name FROM orders
                    INNER JOIN customers ON orders.customer_id = customers.id
                    INNER JOIN order_product ON orders.id = order_product.order_id
                    INNER JOIN products ON order_product.product_upc = products.upc
                    INNER JOIN brands ON products.brand_id = brands.id
                    WHERE customers.user_id = ' . $user->id . ';';

        $result = $this->container->db->custom($query);

        foreach($result as $key => $item)
        {
            $groupedArray[$item['order_id']][$key] = $item;
        }

        return $this->container->view->render($response, '/shop/past.html.twig', [
            'orders' => $groupedArray
        ]);
    }

}