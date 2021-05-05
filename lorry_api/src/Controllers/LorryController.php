<?php

namespace APP\Controllers;

use \Psr\Http\Message\ServerRequestInterface;
use \Psr\Http\Message\ResponseInterface;
use APP\Components\SendResponse;
use APP\Model\LorryModel;

class LorryController {

    protected $container;

    function __construct($c) {
        $this->container = $c;
        $this->db = $this->container->db;
    }

    public function postGrabLorryRequest(ServerRequestInterface $request, ResponseInterface $response) {
        $arrRequestParams = $request->getParsedBody();
        
        $addonID = 0;
        if(isset($arrRequestParams['addonID']) && is_numeric($arrRequestParams['addonID']) && $arrRequestParams['addonID'] > 0) {
            $addonID = $arrRequestParams['addonID'];
        }
        $address = $arrRequestParams['address'];
        $recid = $arrRequestParams['recid'];
        $aggregates = $arrRequestParams['aggregates'];
        $quantity = $arrRequestParams['quantity'];
        $trip = $arrRequestParams['trip'];
        $type = $arrRequestParams['type'];
        $dateandtime = $arrRequestParams['dateandtime'];
        $notes = $arrRequestParams['notes'];
        $ordertotal = $arrRequestParams['ordertotal'];
        
        $objLorry = new LorryModel($this->container);

        $arrayResponse = $objLorry->processLorryRequestApi($arrRequestParams);

        return SendResponse::output($response, $arrayResponse);
    }

    public function getFormFields(ServerRequestInterface $request, ResponseInterface $response) {

        $objLorry = new LorryModel($this->container);
        $arrAddOns = $objLorry->getAddons();

        $arrType = \APP\Components\CommonVar::getGrabLorryType();

        $arrAggregates = \APP\Components\CommonVar::getGrabLorryAggregates();

        $orderTotal = $objLorry->getOrderTotal();

        $arrReturn = array(
            "flagMsg" => "SUCCESS",
            "data"  => array(   
                                "arrAddons" => $arrAddOns,
                                "arrType" => $arrType,
                                "arrAggregates" => $arrAggregates,
                                "orderTotal" => $orderTotal
                            )
        );

        return SendResponse::output($response, $arrReturn);
    }

    public function logoutUser(ServerRequestInterface $request, ResponseInterface $response) {
        $siteUserId = \APP\Components\appComponent::getLoggedinUserId();

        $arrParamsToLogoutUser = array();
        $arrParamsToLogoutUser['siteUserId'] = $siteUserId;

        $objLogin = new UserModel($this->container);
        $arrReturn = $objLogin->logoutUser($arrParamsToLogoutUser);

        return SendResponse::output($response, $arrReturn);
    }
}

?>