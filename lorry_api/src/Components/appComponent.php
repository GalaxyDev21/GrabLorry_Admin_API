<?php

namespace APP\Components;

class appComponent {
    private static $headerPoweredBy;
    private static $headerDeviceId;
    private static $headerDeviceType;
    private static $headerAuthorization;
    
    private static $loggedInUserId;

    public static function setPoweredByHeader($headerValue) {
        self::$headerPoweredBy = $headerValue;
    }
    public static function getPoweredByHeader() {
        return self::$headerPoweredBy;
    }
    public static function setDeviceId($headerValue) {
        self::$headerDeviceId = $headerValue;
    }
    public static function getDeviceId() {
        return self::$headerDeviceId;
    }
    public static function setDeviceType($headerValue) {
        self::$headerDeviceType = $headerValue;
    }
    public static function getDeviceType() {
        return self::$headerDeviceType;
    }
    public static function setAuthorization($headerValue) {
        self::$headerAuthorization = $headerValue;
    }
    public static function getAuthorization() {
        return self::$headerAuthorization;
    }
    public static function setLoggedinUserId($loggedInUserId) {
        self::$loggedInUserId = $loggedInUserId;
    }
    public static function getLoggedinUserId() {
        return self::$loggedInUserId;
    }
}