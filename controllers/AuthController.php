<?php namespace Controller;

use \Psr\Container\ContainerInterface;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class AuthController
{
    protected $container;

    public function __construct(ContainerInterface $container)
    {
        $this->container = $container;
    }

    public function login($request, $response, $args)
    {
        return $this->container->view->render($response, 'login.html.twig');
    }

    public function loginWork($request, $response, $args)
    {
        $email = $request->getParsedBodyParam('email');
        $password = $request->getParsedBodyParam('password');
        \Helper\Auth::login($email, $password, $this->container->db, $this->container->session);

        return $response->withRedirect('/');
    }

    public function logout($request, $response, $args)
    {
        \Helper\Auth::logout($this->container->session);
        return $response->withRedirect('/login');
    }
}