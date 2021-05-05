<?php

namespace APP\Components;

class CommonVar {
    
    public static function apiMessages() {
        return array(
            "HDRDID"    =>  "DeviceId header missing",
            "HDRAUTH"   =>  "Authorization header missing",
            "DBCONERR"  =>  "Database connection error",
            "SMERR"     =>  "Some Error Occured",
            "NMEMP"     =>  "Name cannot be empty",
            "NMLEN"     =>  "Name length should be at least 3 characters long",
            "INVEMAIL"  =>  "Invalid Email",
            "PASSEMP"   =>  "Password cannot be empty",
            "PASSPACE"  =>  "Password cannot contain spaces",
            "PASSLEN"   =>  "Password Length Should be between 6 to 16 characters",
            "PASSNEQ"   =>  "Password and confirm password are not same",
            "MOBEMP"    =>  "Please enter valid mobile number",
            "MOBLEN"    =>  "Mobile number length should be greater than 10",
            "USREXISTS" =>  "User with this email already exists",
            "USRREG"    =>  "User registered with system",
            "USRNREG"   =>  "User not able to register, please try again later.",
            "USRNTEXISTS"   =>  "User dosent exist in the system",
            "USRINAC"   =>  "User Inactive.",
            "USRDEL"    =>  "User deleted",
            "INVPASS"   =>  "Invalid password for this account.",
            "USRLOGIN"  =>  "User loggedin",
            "USRNLGN"   =>  "Unable to login, Please try again",
            "FORGOTSUCC"=>  "New password is generated, and sent to the registered mail.",
            "FORPASSERR"    =>  "Please try again for change the password.",
            "HDRAUTHINV"    =>  "Invalid Authorization header",
            "UPDPASS"   =>  "Password Updated",
            "RADUPD"    =>  "Radius Updated",
            "USRLOCUPD" =>  "User location updated",
            "USRLOGOUT" =>  "User Loggedout sucessfully",
            "NRBYLORY"  =>  "Near by lorries fetched",
            "INVADDON"  =>  "Invalid Addon Id",
            "NQTYADDON" =>  "Addon quantity not available",
            "REQACCEPT" =>  "Request Added to the server",
            "INVOLDPASS" => "Invalid Old Password"
        );
    }

    public static function getGrabLorryType() {

        return array(
            array(
                "id" => "1",
                "name" => "4 wheeler"
            ),
            array(
                "id" => "2",
                "name" => "6 wheeler"
            ),
            array(
                "id" => "3",
                "name" => "8 wheeler"
            )
        );
    }

    public static function getGrabLorryAggregates() {

        return array(
            array(
                "id" => "1",
                "name" => "Muck away"
            ),
            array(
                "id" => "2",
                "name" => "Hardcore"
            ),
            array(
                "id" => "3",
                "name" => "Soil"
            ),
            array(
                "id" => "4",
                "name" => "Mixed Aggregates"
            ),
            array(
                "id" => "5",
                "name" => "Building Debris"
            ),
            array(
                "id" => "6",
                "name" => "General Waste"
            )
        );

    }
}