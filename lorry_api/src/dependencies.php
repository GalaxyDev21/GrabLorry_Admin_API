<?php

use Medoo\Medoo;

// DIC configuration

$container = $app->getContainer();

// view renderer
$container['renderer'] = function ($c) {
    $settings = $c->get('settings')['renderer'];
    return new Slim\Views\PhpRenderer($settings['template_path']);
};

// monolog
$container['logger'] = function ($c) {
    $settings = $c->get('settings')['logger'];
    $logger = new Monolog\Logger($settings['name']);
    $logger->pushProcessor(new Monolog\Processor\UidProcessor());
    $logger->pushHandler(new Monolog\Handler\StreamHandler($settings['path'], $settings['level']));
    return $logger;
};

// database connection
$container['db'] = function($c) {
    
    $settings = $c->get('settings')['database'];
    
    $objMeedo = new Medoo([
        'database_type' => 'mysql',
		'database_name' => $settings['dbName'],
		'server' => $settings['host'],
		'username' => $settings['dbUserName'],
		'password' => $settings['dbPassword'],
    ]);

    return $objMeedo; 
};
