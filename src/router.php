<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

return function(\Slim\App $app) {


    $app->get('/login', \Controller\AuthController::class . ':login');
    $app->post('/login', \Controller\AuthController::class . ':loginWork');
    $app->get('/logout', \Controller\AuthController::class . ':logout');

    $app->get('/stores', \Controller\ShopController::class . ':stores');
    $app->get('/products/{id}', \Controller\ShopController::class . ':products');
    $app->get('/add/{id}/{store}', \Controller\ShopController::class . ':addToCart');
    $app->get('/remove/{id}/{store}', \Controller\ShopController::class . ':removeFromCart');
    $app->get('/cart', \Controller\ShopController::class . ':cart');
    $app->get('/confirm/{store}', \Controller\ShopController::class . ':confirm');
    $app->get('/past', \Controller\ShopController::class . ':past');

    $app->get('/manage', \Controller\ManagerController::class . ':manage');
    $app->get('/inventory/{store}', \Controller\ManagerController::class . ':inventory');
    $app->post('/request', \Controller\ManagerController::class . ':request');

    $app->get('/vendor', \Controller\VendorController::class . ':requests');
    $app->post('/approve', \Controller\VendorController::class . ':approve');
    $app->post('/deny', \Controller\VendorController::class . ':deny');

    // Launch page logic
    $app->get('/', function (Request $request, Response $response) {
        return $this->view->render($response, 'landing.html.twig');
    });

    $app->get('/reset', function (Request $request, Response $response) {
        $session = $this->session;
        $user = $this->auth->getUser();
        $cart = $user->getCart($session);

        $cart->clear();
        $cart->save($session);

        return $response->withRedirect('/cart');
    });
};