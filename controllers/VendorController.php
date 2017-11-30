<?php namespace Controller;

use \Psr\Container\ContainerInterface;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class VendorController
{
    protected $container;

    public function __construct(ContainerInterface $container)
    {
        $this->container = $container;
    }

    public function requests($request, $response, $args)
    {
        $query = 'SELECT shipments.id as shipment_id, stores.id as store_id, stores.name as store_name, product_upc, product_shipment.quantity, product_name, brands.name as brand_name  from shipments 
                    INNER JOIN stores on shipments.store_id = stores.id
                    INNER JOIN product_shipment on shipments.id = product_shipment.shipment_id
                    INNER JOIN products on product_shipment.product_upc = products.upc
                    INNER JOIN brands on products.brand_id = brands.id
                    WHERE shipments.status = \'pending\';';

        $items = $this->container->db->custom($query);

        return $this->container->view->render($response, '/vendor/requests.html.twig', [
            'shipments' => $items,
        ]);
    }

    public function approve($request, $response, $args)
    {
        $requestBody = $request->getParsedBody();
        $this->container->db->update('shipments', $requestBody['shipment'], 'id', [
            'status' => 'approved'
        ]);

        $addQuery = 'UPDATE stock
                SET quantity = quantity +' . $requestBody['amount'] .
            ' WHERE product_upc = ' . $requestBody['product'] .
            ' AND store_id = ' . $requestBody['store'];

        $this->container->db->custom($addQuery);

        return $response->withRedirect('/vendor');
    }

    public function deny($request, $response, $args)
    {
        $requestBody = $request->getParsedBody();
        $this->container->db->update('shipments', $requestBody['shipment'], 'id', [
            'status' => 'denied'
        ]);
        return $response->withRedirect('/vendor');
    }

}