<?php

namespace APP\Model;

use APP\Components\appComponent;
use Carbon\Carbon;
use Hashids\Hashids;

class LoginModel {
    
    protected $container;
    function __construct($container) {
        $this->db = $container->db;
        $this->settings = $container->get('settings');
    }

    function changePassword($arrParams = array()) {
        
        $arrReturn = array();

        $password = $arrParams['password'];
        $newEncryptedPass = md5($password);

        $siteUserId = \APP\Components\appComponent::getLoggedinUserId();
        
        $strUpdateTable = 'siteuser';

        $arrData = array(
            "password" => $newEncryptedPass
        );

        $arrWhere = array(
            "recid[=]" => $siteUserId
        );

        $this->db->update($strUpdateTable, $arrData, $arrWhere);

        $arrReturn['statusCode'] = 200;
        $arrReturn['flagMsg'] = "UPDPASS";

        return $arrReturn;
    }

    function forgotPassword($arrParams = array()) {
        $arrReturn = array();

        $email = $arrParams['email'];
        
        $arrUserInfo = $this->getUserInformationFromEmail($email);

        if(!empty($arrUserInfo)) {

            $siteUserId = $arrUserInfo['recid'];
            $email = $arrUserInfo['email'];
            $name = $arrUserInfo['name'];

            $newPassowrd = $this->generateRandomString(8);
            $newEncryptPassword = md5($newPassowrd);

            $strUpdateTable = 'siteuser';

            $arrData = array(
                "password" => $newEncryptPassword
            );

            $arrWhere = array(
                "recid[=]" => $siteUserId
            );

            $this->db->update($strUpdateTable, $arrData, $arrWhere);

            $strMailBodyPath = __DIR__ . '/../view/mailtemplate/forgotpassword.html';
            $strMessageBody = '';
            if (file_exists($strMailBodyPath)) {
                $strMessageBody = file_get_contents($strMailBodyPath);
            }

            $strMailContent = "New Password for Lorry Application : " . $newPassowrd;

            $strMessageBody = str_replace('{#userName}', $name, $strMessageBody);
            $strMessageBody = str_replace('{#content}', $strMailContent, $strMessageBody);
            $strMessageBody = str_replace('{#thanksConten}', 'Lorry App', $strMessageBody);

            $objForgotPassMail = new MailerModel($this->settings['mailer']);
            $objForgotPassMail->setTo($email);
            $objForgotPassMail->setToName($name);
            $objForgotPassMail->setSubject('Lorry App : Forgot Password');
            $objForgotPassMail->setMessage($strMessageBody);
            $flagForgotPaswordMailSend = $objForgotPassMail->sendMail();

            if($flagForgotPaswordMailSend) {
                $arrReturn['statusCode'] = 200;
                $arrReturn['flagMsg'] = "FORGOTSUCC";
            }
            else {
                $arrReturn['statusCode'] = 200;
                $arrReturn['flagMsg'] = "FORPASSERR";
            }
        }
        else {
            $arrReturn['statusCode'] = 200;
            $arrReturn['flagMsg'] = "USRNTEXISTS";
        }
        return $arrReturn;
    }
    function generateRandomString($length = 10) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    function loginAppUser($arrParams = array()) {
        
        $arrReturn = array();
        
        $email = $arrParams['email'];
        $password = $arrParams['password'];
        
        $arrUserInfo = $this->getUserInformationFromEmail($email);

        if(!empty($arrUserInfo)) {

            $db_recid = $arrUserInfo['recid'];
            $db_name = $arrUserInfo['name'];
            $db_email = $arrUserInfo['email'];
            $db_password = $arrUserInfo['password'];
            $db_mobile = $arrUserInfo['mobile'];
            $db_created = $arrUserInfo['created'];
            $db_status = $arrUserInfo['status'];

            if($db_status == "I") {
                $arrReturn['statusCode'] = 200;
                $arrReturn['flagMsg'] = "USRINAC";
            }
            else if($db_status == "D") {
                $arrReturn['statusCode'] = 200;
                $arrReturn['flagMsg'] = "USRDEL";
            }

            if($db_password != md5($password)) {
                $arrReturn['statusCode'] = 200;
                $arrReturn['flagMsg'] = "INVPASS";
            }
            else {
                $arrParamsForApiKeyGeneration = array();
                $arrParamsForApiKeyGeneration['siteUserId'] = $db_recid;
                $arrParamsForApiKeyGeneration['deviceId'] = appComponent::getDeviceId();

                $apiKeyGenerated = $this->generateSiteUserAPIKey($arrParamsForApiKeyGeneration);
                
                $arrUserInfo['apikey'] = $apiKeyGenerated;
                $arrUserInfo['radius'] = number_format($arrUserInfo['radius'], 0, '','');

                if(!empty($apiKeyGenerated)) {
                    $arrReturn['statusCode'] = 200;
                    $arrReturn['flagMsg'] = "USRLOGIN";
                    $arrReturn['data'] = $arrUserInfo;
                }
                else {
                    $arrReturn['statusCode'] = 400;
                    $arrReturn['flagMsg'] = "USRNLGN";
                }
            }
        }
        else {
            $arrReturn['statusCode'] = 200;
            $arrReturn['flagMsg'] = "USRNTEXISTS";
        }
        return $arrReturn;
    }

    function registerUser($arrParams = array()) {
        
        $arrReturn = array();

        $name = $arrParams['name'];
        $email = $arrParams['email'];
        $password = $arrParams['password'];
        $mobile = $arrParams['mobile'];

        $arrUserInfo = $this->getUserInformationFromEmail($email);

        // no user exists for this email
        if(empty($arrUserInfo)) {

            $encryptedPassword = md5($password);

            $strInserTable = 'siteuser';

            $arrInsertData = array(
                "name"          =>  $name,
                "email"         =>  $email,
                "password"      =>  $encryptedPassword,
                "mobile"        =>  $mobile,
                "created"       =>  DATETIMESTAMP,
            );

            $this->db->insert($strInserTable, $arrInsertData);
            
            $siteUserId = $this->db->id();

            $arrParamsForApiKeyGeneration = array();
            $arrParamsForApiKeyGeneration['siteUserId'] = $siteUserId;
            $arrParamsForApiKeyGeneration['deviceId'] = appComponent::getDeviceId();

            $apiKeyGenerated = $this->generateSiteUserAPIKey($arrParamsForApiKeyGeneration);
            
            if(!empty($apiKeyGenerated)) {
                $arrReturn['statusCode'] = 200;
                $arrReturn['flagMsg'] = "USRREG";
                $arrReturn['data'] = array(
                    "apiKey" => $apiKeyGenerated
                );
            }
            else {
                $arrReturn['statusCode'] = 400;
                $arrReturn['flagMsg'] = "USRNREG";
            }
        }
        // email already exists
        else {
            $arrReturn['statusCode'] = 200;
            $arrReturn['flagMsg'] = "USREXISTS";
        }
        return $arrReturn;
    }


    function generateSiteUserAPIKey($arrParams = array()) {

        $apiKeyGenerated = '';

        $siteUserId = $arrParams['siteUserId'];
        $deviceId = $arrParams['deviceId'];
        $now = Carbon::now();
        $nowTimeStamp = $now->timestamp;


        // remove all the existing apis keys 
        $this->deactivateAllApiKeysForUser($siteUserId);
        
        $arrHashId = array(
            $siteUserId,
            $nowTimeStamp
        );

        $hashids = new Hashids($this->settings['hashid']['API']['HASHID_SALT'], $this->settings['hashid']['API']['HASHID_PAD']);
        $apiKeyGenerated = $hashids->encode($arrHashId);

        $strInserTable = 'apikeys';

        $arrInsertData = array(
            "userid"        =>  $siteUserId,
            "apikey"        =>  $apiKeyGenerated,
            "created"       =>  DATETIMESTAMP
        );

        $this->db->insert($strInserTable, $arrInsertData);

        return $apiKeyGenerated;
    }


    function deactivateAllApiKeysForUser($siteUserId = 0) {

        $strUpdateTable = 'apikeys';

        $arrData = array(
            "status" => 'I'
        );

        $arrWhere = array(
            "userid[=]" => $siteUserId
        );

        $this->db->update($strUpdateTable, $arrData, $arrWhere);
    }

    function getUserInformationFromEmail($email = '') {
        
        $arrReturn = array();

        $strTable = 'siteuser';

        $arrWhere = array(
            "email[=]" => $email
        );

        $arrUserInfo = $this->db->select($strTable, '*', $arrWhere);

        if(!empty($arrUserInfo[0])) {
            $arrReturn = $arrUserInfo[0];
        }
        return $arrReturn;
    }
}