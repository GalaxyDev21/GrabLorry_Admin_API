<?php

use APP\Components\SendResponse;

// Application middleware

// e.g: $app->add(new \Slim\Csrf\Guard);
$app->add(function(\Psr\Http\Message\ServerRequestInterface $request, \Psr\Http\Message\ResponseInterface $response, $next) {
    
    if(!$this->db) {
        $arrResponce = array();
        $arrResponce['statusCode'] = 401;
        $arrResponce['flagMsg'] = "DBCONERR";
        return SendResponse::output($response, $arrResponce);   
    }

    $headerDeviceId = $request->getHeaderLine("X-Header-DeviceID");
    $headerAuthorization = $request->getHeaderLine("Authorization");

    $objUri = $request->getUri();
    $requestedPath = $objUri->getPath();

    if(empty($headerDeviceId)) {
        $arrResponce = array();
        $arrResponce['statusCode'] = 401;
        $arrResponce['flagMsg'] = "HDRDID";
        return SendResponse::output($response, $arrResponce);
    }

    \APP\Components\appComponent::setDeviceId($headerDeviceId);

    // check for post login request
    if(strpos($requestedPath, 'login/') !== 0) {
        if(empty($headerAuthorization)) {
            $arrResponce = array();
            $arrResponce['statusCode'] = 401;
            $arrResponce['flagMsg'] = "HDRAUTH";
            return SendResponse::output($response, $arrResponce);
        }

        // api keys
        $strSelect = "  SELECT s.*
                        FROM siteuser s, apikeys a
                        WHERE s.recid = a.userid
                        AND a.status = 'A'
                        AND a.apikey = '" . addslashes($headerAuthorization) . "'";

        $arrAuthorizationCheck = $this->db->query($strSelect)->fetchAll();
        
        if(!empty($arrAuthorizationCheck)) {
            $arrAuthorizationCheck = $arrAuthorizationCheck[0];
        }

        if(empty($arrAuthorizationCheck)) {
            $arrResponce = array();
            $arrResponce['statusCode'] = 401;
            $arrResponce['flagMsg'] = "HDRAUTHINV";
            return SendResponse::output($response, $arrResponce);
        }
        else {
            \APP\Components\appComponent::setLoggedinUserId($arrAuthorizationCheck['recid']);
        }
    }


    return $next($request, $response);

});