<?php

namespace APP\Controllers;

use \Psr\Http\Message\ServerRequestInterface;
use \Psr\Http\Message\ResponseInterface;
use APP\Components\Validators as v;
use APP\Components\SendResponse;
use APP\Model\LoginModel;
use APP\Model\UserModel;

class LoginController {

    protected $container;

    function __construct($c) {
        $this->container = $c;
    }

    public function changePassword(ServerRequestInterface $request, ResponseInterface $response) {
        
        $arrReturn = array();
        $arrReturn['statusCode'] = 400;
        $arrReturn['flagMsg'] = "INVOLDPASS";

        $arrRequestParams = $request->getParsedBody();

        // validating password
        if(!isset($arrRequestParams['password'])) {
            $arrRequestParams['password'] = "";
        }
        $arrPasswordValidationResponse = v::validatePasswordOnly($arrRequestParams['password']);
        if(!empty($arrPasswordValidationResponse)) {
            return SendResponse::output($response, $arrPasswordValidationResponse);
        }


        // validating oldPassword
        $oldpassword = '';
        if(isset($arrRequestParams['oldpassword']) && !empty($arrRequestParams['oldpassword'])) {
            $oldpassword = $arrRequestParams['oldpassword'];
        }
        
        $siteUserId = \APP\Components\appComponent::getLoggedinUserId();

        $objUserModel = new UserModel($this->container);
        $arrUserData = $objUserModel->getUserInformationFromUserId($siteUserId);
        
        if($arrUserData['password'] == md5($oldpassword)) {
            $arrParamsForUpdatePassword = array();
            $arrParamsForUpdatePassword['password'] = $arrRequestParams['password'];

            $objLogin = new LoginModel($this->container);
            $arrReturn = $objLogin->changePassword($arrParamsForUpdatePassword);
        }

        return SendResponse::output($response, $arrReturn);
    }

    public function forgotPassword(ServerRequestInterface $request, ResponseInterface $response) {
        $arrRequestParams = $request->getParsedBody();
        
        // validating email address
        if(!isset($arrRequestParams['email'])) {
            $arrRequestParams['email'] = "";
        }
        $arrEmailValidationResponse = v::validateEmail($arrRequestParams['email']);
        if(!empty($arrEmailValidationResponse)) {
            return SendResponse::output($response, $arrEmailValidationResponse);
        }

        $arrParamsForForgotPassword = array();
        $arrParamsForForgotPassword['email'] = $arrRequestParams['email'];

        $objLogin = new LoginModel($this->container);
        $arrReturn = $objLogin->forgotPassword($arrParamsForForgotPassword);

        return SendResponse::output($response, $arrReturn);

    }

    public function login(ServerRequestInterface $request, ResponseInterface $response) {
        $arrRequestParams = $request->getParsedBody();
        
        // validating email address
        if(!isset($arrRequestParams['email'])) {
            $arrRequestParams['email'] = "";
        }
        $arrEmailValidationResponse = v::validateEmail($arrRequestParams['email']);
        if(!empty($arrEmailValidationResponse)) {
            return SendResponse::output($response, $arrEmailValidationResponse);
        }

        // validating password
        if(!isset($arrRequestParams['password'])) {
            $arrRequestParams['password'] = "";
        }
        $arrPasswordValidationResponse = v::validatePasswordOnly($arrRequestParams['password']);
        if(!empty($arrPasswordValidationResponse)) {
            return SendResponse::output($response, $arrPasswordValidationResponse);
        }


        $arrParamsForLoginUser = array();
        $arrParamsForLoginUser['email'] = $arrRequestParams['email'];
        $arrParamsForLoginUser['password'] = $arrRequestParams['password'];

        $objLogin = new LoginModel($this->container);
        $arrReturn = $objLogin->loginAppUser($arrParamsForLoginUser);

        return SendResponse::output($response, $arrReturn);
    }

    public function registerUser (ServerRequestInterface $request, ResponseInterface $response) {

        $arrRequestParams = $request->getParsedBody();

        // validation name
        if(!isset($arrRequestParams['name'])) {
            $arrRequestParams['name'] = "";
        }
        $arrNameValidationResponse = v::validateName($arrRequestParams['name']);
        if(!empty($arrNameValidationResponse)) {
            return SendResponse::output($response, $arrNameValidationResponse);
        }

        // validating email address
        if(!isset($arrRequestParams['email'])) {
            $arrRequestParams['email'] = "";
        }
        $arrEmailValidationResponse = v::validateEmail($arrRequestParams['email']);
        if(!empty($arrEmailValidationResponse)) {
            return SendResponse::output($response, $arrEmailValidationResponse);
        }

        // validating password
        if(!isset($arrRequestParams['password'])) {
            $arrRequestParams['password'] = "";
        }
        if(!isset($arrRequestParams['confPassword'])) {
            $arrRequestParams['confPassword'] = "";
        }
        $arrPasswordValidationResponse = v::validatePassword($arrRequestParams['password'], $arrRequestParams['confPassword']);
        if(!empty($arrPasswordValidationResponse)) {
            return SendResponse::output($response, $arrPasswordValidationResponse);
        }

        // validating mobile number
        if(!isset($arrRequestParams['mobile'])) {
            $arrRequestParams['mobile'] = "";
        }
        $arrMobileValidationResponse = v::validateMobile($arrRequestParams['mobile']);
        if(!empty($arrMobileValidationResponse)) {
            return SendResponse::output($response, $arrMobileValidationResponse);
        }

        $arrParamsForRegisterUser = array();
        $arrParamsForRegisterUser['name'] = $arrRequestParams['name'];
        $arrParamsForRegisterUser['email'] = $arrRequestParams['email'];
        $arrParamsForRegisterUser['password'] = $arrRequestParams['password'];
        $arrParamsForRegisterUser['mobile'] = $arrRequestParams['mobile'];

        $objLogin = new LoginModel($this->container);
        $arrReturn = $objLogin->registerUser($arrParamsForRegisterUser);

        return SendResponse::output($response, $arrReturn);

    }
}