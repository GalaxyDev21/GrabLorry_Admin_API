<?php

namespace APP\Components;

class SendResponse {

    public static function output(\Psr\Http\Message\ResponseInterface &$response, $arrParams) {
        
        $arrParams = (array)$arrParams;
        $arrDataToReturn = array();
        $arrDataToReturn['error'] = "";
        $arrDataToReturn['flagMsg'] = "SMERR";
        $arrDataToReturn['data'] = array();

        $arrApiMessages = CommonVar::apiMessages();

        $statusCode = 200;
        if(isset($arrParams['statusCode']) && !empty($arrParams['statusCode'] && is_numeric($arrParams['statusCode']))) {
            $statusCode = $arrParams['statusCode'];
        }


        if(isset($arrParams['flagMsg'])) {
            $arrDataToReturn['flagMsg'] = $arrParams['flagMsg'];
        }

        if(isset($arrParams['error'])) {
            $arrDataToReturn['error'] = $arrParams['error'];
        }
        else if(isset($arrApiMessages[$arrDataToReturn['flagMsg']])) {
            $arrDataToReturn['error'] = $arrApiMessages[$arrDataToReturn['flagMsg']];
        }


        if(isset($arrParams['data']) && !empty($arrParams['data'])) {
            $arrDataToReturn['data'] = $arrParams['data'];
        }
        
        return $response->withJson($arrDataToReturn, $statusCode)
                    ->withHeader('Access-Control-Allow-Origin', '*')
                    ->withHeader('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,OPTIONS')
                    ->withHeader('Access-Control-Allow-Headers',
                        'Content-Type, Authorization, Content-Length, X-Powered-By, X-Header-DeviceID, X-Device-Type');
    }

}