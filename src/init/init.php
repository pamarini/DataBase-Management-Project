<?php

$settings = require 'config.php'; // Global settings
$app = new \Slim\App(['settings' => $settings]); // Initialize Framework
$container = $app->getContainer(); // Get the dependency injection controller
$container['db'] = new Helper\Database($settings['db']); // Inject database as a dependency
$container['session'] = new \SlimSession\Helper;
$container['view'] = function ($container) {
    $view = new \Slim\Views\Twig('templates', [
        'cache' => false
    ]);

    $basePath = rtrim(str_ireplace('index.php', '', $container['request']->getUri()->getBasePath()), '/');
    $view->addExtension(new Slim\Views\TwigExtension($container['router'], $basePath));

    return $view;
};

$app->add(function ($request, $response, $next) use ($container) {
    $container['auth'] = new \Helper\Auth($container['db'], new \SlimSession\Helper);

    if($request->getRequestTarget() === '/login' || $container['auth']->authenticated()) {
        return $next($request, $response);
    } else {
        return $response->withRedirect('/login');
    }
});

$app->add(new \Slim\Middleware\Session([
    'name' => 'dbsg_session',
    'autorefresh' => true,
    'lifetime' => '1 hour'
]));

return $app;