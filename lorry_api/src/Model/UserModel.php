<?php

namespace APP\Model;

use APP\Components\appComponent;
use Carbon\Carbon;
use Hashids\Hashids;

class UserModel {
    
    protected $container;
    function __construct($container) {
        $this->db = $container->db;
        $this->settings = $container->get('settings');
    }

    public function getUserInformationFromUserId($appUserId = 0) {
        
        $arrReturn = array();

        $strTable = 'siteuser';
        $arrWhere = array(
            "recid[=]" => $appUserId
        );
        $arrUserInfo = $this->db->select($strTable, '*', $arrWhere);
        if(!empty($arrUserInfo[0])) {
            $arrReturn = $arrUserInfo[0];
        }
        return $arrReturn;
    }

    public function logoutUser($arrParams = array()) {
        
        $siteUserId = $arrParams['siteUserId'];

        $strUpdateTable = 'apikeys';

        $arrData = array(
            "status" => "I"
        );

        $arrWhere = array(
            "userid[=]" => $siteUserId,
            "status[=]" => "A"
        );

        $this->db->update($strUpdateTable, $arrData, $arrWhere);

        $arrReturn = array();
        $arrReturn['statusCode'] = 200;
        $arrReturn['flagMsg'] = 'USRLOGOUT';
        return $arrReturn;
    }

    public function updateDeviceLocation($arrParams = array()) {
        
        $longitude = $arrParams['longitude'];
        $latitude = $arrParams['latitude'];
        $userId = $arrParams['userId'];

        $strUpdateTable = 'siteuser';

        $arrData = array(
            "longitude" => $longitude,
            "latitude" => $latitude
        );

        $arrWhere = array(
            "recid[=]" => $userId
        );

        $this->db->update($strUpdateTable, $arrData, $arrWhere);

        $arrReturn = array();
        $arrReturn['statusCode'] = 200;
        $arrReturn['flagMsg'] = 'USRLOCUPD';
        return $arrReturn;
    }
}

?>