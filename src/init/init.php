<?php

$settings = require 'config.php'; // Global settings
$app = new \Slim\App(['settings' => $settings]); // Initialize Framework
$container = $app->getContainer(); // Get the dependency injection controller
$container['db'] = new Helper\Database($settings['db']); // Inject database as a dependency
// Inject Twig Templating engine
$container['view'] = function ($container) {
    $view = new \Slim\Views\Twig('templates', [
        'cache' => false
    ]);

    $basePath = rtrim(str_ireplace('index.php', '', $container['request']->getUri()->getBasePath()), '/');
    $view->addExtension(new Slim\Views\TwigExtension($container['router'], $basePath));

    return $view;
};

// All we need from all this is the Slim container
return $app;