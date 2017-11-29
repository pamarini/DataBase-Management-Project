<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

return function(\Slim\App $app) {

    $app->get('/login', function (Request $request, Response $response) {
        return $this->view->render($response, 'login.html.twig');
    });

    $app->post('/login', function (Request $request, Response $response) {
        $email = $request->getParsedBodyParam('email');
        $password = $request->getParsedBodyParam('password');
        \Helper\Auth::login($email, $password, $this->db, $this->session);

        return $response->withRedirect('/');
    });

    $app->get('/logout', function (Request $request, Response $response) {
        \Helper\Auth::logout($this->session);
        return $response->withRedirect('/login');
    });

    // Launch page logic
    $app->get('/', function (Request $request, Response $response) {
        return $this->view->render($response, 'landing.html.twig');
    });
};