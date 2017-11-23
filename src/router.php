<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

return function(\Slim\App $app) {
    // Launch page logic
    $app->get('/', function (Request $request, Response $response) {
        return $this->view->render($response, 'landing.html.twig');
    });
};