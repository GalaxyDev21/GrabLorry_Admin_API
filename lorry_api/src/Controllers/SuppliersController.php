<?php

namespace APP\Controllers;

use \Psr\Http\Message\ServerRequestInterface;
use \Psr\Http\Message\ResponseInterface;
use APP\Components\SendResponse;
use APP\Model\LorryModel;

class SuppliersController {

    protected $container;

    function __construct($c) {
        $this->container = $c;
        $this->db = $this->container->db;
    }

    public function getNearBySuppliers(ServerRequestInterface $request, ResponseInterface $response) {

        $siteUserId = \APP\Components\appComponent::getLoggedinUserId();

        $objLorry = new LorryModel($this->container);
        $arrResponse = $objLorry->getNearBySuppliersCountFromUser($siteUserId);

        $arrReturn = array();
        $arrReturn['flagMsg'] = "NRBYLORY";
        $arrReturn['data'] = $arrResponse;

        return SendResponse::output($response, $arrReturn);
    }
}

?>