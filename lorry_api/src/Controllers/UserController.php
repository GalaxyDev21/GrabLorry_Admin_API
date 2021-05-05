<?php

namespace APP\Controllers;

use \Psr\Http\Message\ServerRequestInterface;
use \Psr\Http\Message\ResponseInterface;
use APP\Components\Validators as v;
use APP\Components\SendResponse;
use APP\Model\LoginModel;
use APP\Model\UserModel;

class UserController {

    protected $container;

    function __construct($c) {
        $this->container = $c;
        $this->db = $this->container->db;
    }

    public function logoutUser(ServerRequestInterface $request, ResponseInterface $response) {
        $siteUserId = \APP\Components\appComponent::getLoggedinUserId();

        $arrParamsToLogoutUser = array();
        $arrParamsToLogoutUser['siteUserId'] = $siteUserId;

        $objLogin = new UserModel($this->container);
        $arrReturn = $objLogin->logoutUser($arrParamsToLogoutUser);

        return SendResponse::output($response, $arrReturn);
    }

    public function updateLocation(ServerRequestInterface $request, ResponseInterface $response) {

        $arrRequestParams = $request->getParsedBody();

        $longitude = $arrRequestParams['longitude'];
        $latitude = $arrRequestParams['latitude'];

        $siteUserId = \APP\Components\appComponent::getLoggedinUserId();

        $arrParamsForUpdateDeviceLocation = array();
        $arrParamsForUpdateDeviceLocation['longitude'] = $longitude;
        $arrParamsForUpdateDeviceLocation['latitude'] = $latitude;
        $arrParamsForUpdateDeviceLocation['userId'] = $siteUserId;


        $objLogin = new UserModel($this->container);
        $arrReturn = $objLogin->updateDeviceLocation($arrParamsForUpdateDeviceLocation);

        return SendResponse::output($response, $arrReturn);
    }

    public function changeRadius(ServerRequestInterface $request, ResponseInterface $response) {
        
        $arrReturn = array();

        $arrRequestParams = $request->getParsedBody();

        $radiusRange = $arrRequestParams['radiusRange'];

        $siteUserId = \APP\Components\appComponent::getLoggedinUserId();

        $strUpdateTable = 'siteuser';

        $arrData = array(
            "radius" => $radiusRange
        );

        $arrWhere = array(
            "recid[=]" => $siteUserId
        );

        $this->db->update($strUpdateTable, $arrData, $arrWhere);

        $arrReturn['statusCode'] = 200;
        $arrReturn['flagMsg'] = "RADUPD";

        return SendResponse::output($response, $arrReturn);
    }
}

?>