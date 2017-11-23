<?php

// Some configuration for the framework.
// This gets most of the info from /.env (which I like to use for portability reasons)
$config = new \Dotenv\Dotenv(__DIR__ . '/../../');
$config->load();

return [
    'addContentLengthHeader' => false,
    'displayErrorDetails' => getenv('SHOW_ERRORS') === 'true',

    'db' => [
        'host' => getenv('DB_HOST'),
        'port' => getenv('DB_PORT'),
        'database' => getenv('DB_DATABASE'),
        'username' => getenv('DB_USER'),
        'password' => getenv('DB_PASSWORD'),
    ]
];