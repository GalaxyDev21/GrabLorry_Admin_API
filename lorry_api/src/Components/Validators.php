<?php

namespace APP\Components;

use Respect\Validation\Validator as v;

class Validators {

    public static function validateEmail($strEmail = '') {
        $arrReturn = array();

        if(!v::email()->validate($strEmail)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "INVEMAIL";
        }
        return $arrReturn;
    }

    public static function validateName($strName = '') {
        $arrReturn = array();
        
        if(!v::stringType()->notEmpty()->validate($strName)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "NMEMP";
        }
        else if(!v::stringType()->length(3, NULL)->validate($strName)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "NMLEN";
        }
        return $arrReturn;
    }

    public static function validatePassword($password = '', $confPassword = '') {
        $arrReturn = array();

        if(!v::stringType()->notEmpty()->validate($password)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "PASSEMP";
        }
        else if(!v::stringType()->noWhitespace()->validate($password)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "PASSPACE";
        }
        else if(!v::stringType()->length(6, 16)->validate($password)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "PASSLEN";
        }
        else if(!v::equals($password)->validate($confPassword)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "PASSNEQ";
        }
        return $arrReturn;
    }

    public static function validatePasswordOnly($password = '') {
        $arrReturn = array();

        if(!v::stringType()->notEmpty()->validate($password)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "PASSEMP";
        }
        else if(!v::stringType()->noWhitespace()->validate($password)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "PASSPACE";
        }
        else if(!v::stringType()->length(6, 16)->validate($password)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "PASSLEN";
        }
        
        return $arrReturn;
    }

    public static function validateMobile($strMobile = '') {
        $arrReturn = array();
        
        if(!v::intVal()->validate($strMobile)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "MOBEMP";
        }
        else if(!v::stringType()->length(10, NULL)->validate($strMobile)) {
            $arrReturn['statusCode'] = 400;
            $arrReturn['flagMsg'] = "MOBLEN";
        }
        return $arrReturn;
    }

}