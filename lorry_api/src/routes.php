<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes

$app->get('/{name}', function (Request $request, Response $response, array $args) {
    // Sample log message
    $this->logger->info("Slim-Skeleton '/' route");

    // Render index view
    return $this->renderer->render($response, 'index.phtml', $args);
});


$app->group('/login', function() {
    $this->map(["POST", "OPTIONS"], "/signUp", \APP\Controllers\LoginController::class . ":registerUser");
    $this->map(["POST", "OPTIONS"], "/signIn", \APP\Controllers\LoginController::class . ":login");
    $this->map(["POST", "OPTIONS"], "/forgotPassword", \APP\Controllers\LoginController::class . ":forgotPassword");
});

$app->group('/users', function() {
    $this->map(["POST", "OPTIONS"], "/changePassword", \APP\Controllers\LoginController::class . ":changePassword");
    $this->map(["POST", "OPTIONS"], "/changeRadius", \APP\Controllers\UserController::class . ":changeRadius");
    $this->map(["POST", "OPTIONS"], "/updateLocation", \APP\Controllers\UserController::class . ":updateLocation");
    $this->map(["POST", "OPTIONS"], "/logout", \APP\Controllers\UserController::class . ":logoutUser");
    // $this->map(["POST", "OPTIONS"], "/forgotPassword", \APP\Controllers\LoginController::class . ":forgotPassword");
});

$app->group('/lorry', function() {
    $this->map(["POST", "OPTIONS"], "/getFormFields", \APP\Controllers\LorryController::class . ":getFormFields");
    $this->map(["POST", "OPTIONS"], "/postGrabLorryRequest", \APP\Controllers\LorryController::class . ":postGrabLorryRequest");
    // $this->map(["POST", "OPTIONS"], "/changeRadius", \APP\Controllers\UserController::class . ":changeRadius");
    // $this->map(["POST", "OPTIONS"], "/updateLocation", \APP\Controllers\UserController::class . ":updateLocation");
    // $this->map(["POST", "OPTIONS"], "/logout", \APP\Controllers\UserController::class . ":logoutUser");
    // $this->map(["POST", "OPTIONS"], "/forgotPassword", \APP\Controllers\LoginController::class . ":forgotPassword");
});

$app->group('/suppliers', function() {
    $this->map(["GET", "OPTIONS"], "/getNearBySuppliers", \APP\Controllers\SuppliersController::class . ":getNearBySuppliers");
    // $this->map(["POST", "OPTIONS"], "/changeRadius", \APP\Controllers\UserController::class . ":changeRadius");
    // $this->map(["POST", "OPTIONS"], "/updateLocation", \APP\Controllers\UserController::class . ":updateLocation");
    // $this->map(["POST", "OPTIONS"], "/logout", \APP\Controllers\UserController::class . ":logoutUser");
    // $this->map(["POST", "OPTIONS"], "/forgotPassword", \APP\Controllers\LoginController::class . ":forgotPassword");
});