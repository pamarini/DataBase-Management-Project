<?php namespace Controller;

use \Psr\Container\ContainerInterface;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class ManagerController
{
    protected $container;

    public function __construct(ContainerInterface $container)
    {
        $this->container = $container;
    }

    public function manage($request, $response, $args)
    {
        $items = $this->container->db->select('stores');
        return $this->container->view->render($response, '/manager/manage.html.twig', [
            'stores' => $items
        ]);
    }

    public function inventory($request, $response, $args)
    {
        $query = 'SELECT product_upc, quantity, msrp, product_name, size, vendors.id as vendor_id, vendors.name as vendor_name, brands.name as brand_name  from stock
                    INNER JOIN products ON stock.product_upc = products.upc
                    INNER JOIN vendors ON stock.vendor_id = vendors.id
                    INNER JOIN brands ON products.brand_id = brands.id
                    WHERE stock.store_id = ' . $args['store'] .
                    ' AND stock.quantity < 5;';

        $items = $this->container->db->custom($query);
        $store = $this->container->db->select('stores', '*', ['id' => $args['store']])[0];

        return $this->container->view->render($response, '/manager/inventory.html.twig', [
            'store' => $store,
            'products' => $items
        ]);
    }

    public function request($request, $response, $args)
    {
        $requestBody = $request->getParsedBody();
        $shipmentId = $this->container->db->store('shipments', [
            'vendor_id' => $requestBody['vendor'],
            'store_id' => $requestBody['store'],
            'status' => 'pending',
            'sent_date' => '2017-12-01 01:01',
            'recieve_date' => '2017-12-01 01:01'
        ]);

        $this->container->db->store('product_shipment', [
            'shipment_id' => $shipmentId,
            'product_upc' => $requestBody['product'],
            'quantity' => $requestBody['amount'],
            'unit_price' => 1
        ]);

//        $addQuery = 'UPDATE stock
//                SET quantity = quantity +' . $requestBody['amount'] .
//            ' WHERE product_upc = ' . $requestBody['product'] .
//            ' AND store_id = ' . $requestBody['store'];
//
//        $this->container->db->custom($addQuery);

        return $response->withRedirect('/inventory/' . $requestBody['store']);

    }

}