<?php

namespace APP\Model;

use APP\Components\appComponent;
use Carbon\Carbon;
use Hashids\Hashids;

class LorryModel {
    
    protected $container;
    function __construct($container) {
        $this->db = $container->db;
        $this->settings = $container->get('settings');
        $this->container = $container;
    }

    public function getOrderTotal() {

        $intReturn = 50;

        $table = 'settings';
        $columns = '*';
        $where = array(
            'recid' => 1
        );
        $arrOrderTotalSettings = $this->db->select($table, $columns, $where);

        if(!empty($arrOrderTotalSettings)) {
            $arrOrderTotalSettings = $arrOrderTotalSettings[0];
            $intReturn = number_format($arrOrderTotalSettings['value'], 2, '.', '');
        }
        return $intReturn;
    }

    public function processLorryRequestApi($arrParams = array()) {

        $arrReturn = array();
        $arrReturn['flagMsg'] = 'SMERR';

        $siteUserId = \APP\Components\appComponent::getLoggedinUserId();

        $addonID = $arrParams['addonID'];
        $address = $arrParams['address'];
        $recid = $arrParams['recid'];
        $aggregates = $arrParams['aggregates'];
        $quantity = $arrParams['quantity'];
        $trip = $arrParams['trip'];
        $type = $arrParams['type'];
        $dateandtime = $arrParams['dateandtime'];
        $notes = $arrParams['notes'];
        $ordertotal = $arrParams['ordertotal'];

        $now = Carbon::now()->toDateTimeString();
        $currentDate = $now;

        $lorryRequestedDateTime = Carbon::parse($dateandtime . ':00')->toDateTimeString();
        

        $strNearBySuppliersId = '0';
        $arrNearBySuppliers = $this->getNearBySuppliersCountFromUser($siteUserId);
        
        if($arrNearBySuppliers['count'] > 0) {
            $strNearBySuppliersId = '';
            foreach($arrNearBySuppliers['arrSuppliers'] AS $key => $arrEachSupplierInfo) {
                $supplierId = $arrEachSupplierInfo['recid'];
                $strNearBySuppliersId .= $supplierId . ",";
            }
            $strNearBySuppliersId = rtrim($strNearBySuppliersId, ',');
        }


        // Inserting into lorry request table
        $strTableInsert = "lorryrequest";
        $arrDataToInsert = array(
            'requestnumber' => '',
            'siteuserid' => $siteUserId,
            'aggregateid' => $aggregates,
            'typeid' => $type,
            'trip' => $trip,
            'quantity' => $quantity,
            'ordertotal' => $ordertotal,
            'address' => $address,
            'notes' => $notes,
            'nearbysuppliers' => $strNearBySuppliersId,
            'datex' => $lorryRequestedDateTime,
            'created' => $currentDate
        );

        $this->db->insert($strTableInsert, $arrDataToInsert);

        $insertedLorryRequestId = $this->db->id();

        // updating lorry request order number
        $hashids = new Hashids($this->settings['hashid']['LORRYREQID']['HASHID_SALT'], $this->settings['hashid']['LORRYREQID']['HASHID_PAD']);
        $lorryRequestId = 'LA-' . $hashids->encode($insertedLorryRequestId);

        $table = "lorryrequest";
        $data = array(
            'requestnumber' => $lorryRequestId,
        );
        $where = array(
            'recid' => $insertedLorryRequestId
        );
        $this->db->update($table, $data, $where);

        $arrReturn['flagMsg'] = 'REQACCEPT';
        $arrReturn['data'] = array(
            'lorryRequestId' => $lorryRequestId
        );

        
        if($addonID > 0) {

            // check addon quantity
            $table = 'addon';
            $columns = '*';
            $where = array(
                'recid' => $addonID
            );
            $arrAddonInfo = $this->db->select($table, $columns, $where);

            if(!empty($arrAddonInfo)) {

                $arrAddonInfo = $arrAddonInfo[0];

                // insert into addon book records.
                $table = 'addonbooked';
                $data = array(
                    'lorryrequestid' => $insertedLorryRequestId,
                    'addonid' => $addonID,
                    'companyname' => $arrAddonInfo['companyname'],
                    'productname' => $arrAddonInfo['productname'],
                    'details' => $arrAddonInfo['details'],
                    'price' => $arrAddonInfo['price'],
                    'size' => $arrAddonInfo['size'],
                    'weight' => $arrAddonInfo['weight'],
                    'created' => $currentDate
                );
                $this->db->insert($table, $data);


                // reducing addon count
                $table = "addon";
                $data = array(
                    'stockcount[-]' => $quantity,
                );
                $where = array(
                    'recid' => $addonID
                );
                $this->db->update($table, $data, $where);
            }
        }

        $this->sendMailToAdminnGrabRequest($lorryRequestId);

        return $arrReturn;
    }

    public function sendMailToAdminnGrabRequest($lorryRequestId = null) {
        if(empty($lorryRequestId)) {
            return false;
        }
        

        // fetch lorry request information
        $strSelect = "lorryrequest";
        $arrWhereData = array(
            "requestnumber[=]" => $lorryRequestId
        );

        $arrLorryRequestInfo = $this->db->select($strSelect, '*', $arrWhereData);
        if(!empty($arrLorryRequestInfo)) {
            $arrLorryRequestInfo = $arrLorryRequestInfo[0];
        }

        $lorryRequest_recid = $arrLorryRequestInfo['recid'];
        $lorryRequest_siteuserid = $arrLorryRequestInfo['siteuserid'];
        $lorryRequest_requestnumber = $arrLorryRequestInfo['requestnumber'];
        $lorryRequest_aggregateid = $arrLorryRequestInfo['aggregateid'];
        $lorryRequest_typeid = $arrLorryRequestInfo['typeid'];
        $lorryRequest_trip = $arrLorryRequestInfo['trip'];
        $lorryRequest_quantity = $arrLorryRequestInfo['quantity'];
        $lorryRequest_ordertotal = $arrLorryRequestInfo['ordertotal'];
        $lorryRequest_address = $arrLorryRequestInfo['address'];
        $lorryRequest_notes = $arrLorryRequestInfo['notes'];
        $lorryRequest_nearbysuppliers = $arrLorryRequestInfo['nearbysuppliers'];
        $lorryRequest_status = $arrLorryRequestInfo['status'];
        $lorryRequest_datex = $arrLorryRequestInfo['datex'];
        $lorryRequest_created = $arrLorryRequestInfo['created'];


        // fetch addon bookedInfo
        $strSelect = "addonbooked";
        $arrWhereData = array(
            "lorryrequestid[=]" => $lorryRequest_recid
        );

        $arrBookedAddOnData = $this->db->select($strSelect, '*', $arrWhereData);
        $flagAddonAdded = false;
        if(!empty($arrBookedAddOnData)) {
            $flagAddonAdded = true;
            $arrBookedAddOnData = $arrBookedAddOnData[0];
        }

        $addonBokked_recid = $arrBookedAddOnData['recid'];
        $addonBokked_lorryrequestid = $arrBookedAddOnData['lorryrequestid'];
        $addonBokked_addonid = $arrBookedAddOnData['addonid'];
        $addonBokked_companyname = $arrBookedAddOnData['companyname'];
        $addonBokked_productname = $arrBookedAddOnData['productname'];
        $addonBokked_details = $arrBookedAddOnData['details'];
        $addonBokked_price = $arrBookedAddOnData['price'];
        $addonBokked_size = $arrBookedAddOnData['size'];
        $addonBokked_weight = $arrBookedAddOnData['weight'];
        $addonBokked_created = $arrBookedAddOnData['created'];



        // fetch addon siteuser info
        $strSelect = "siteuser";
        $arrWhereData = array(
            "recid[=]" => $lorryRequest_siteuserid
        );

        $arrSiteUserInfo = $this->db->select($strSelect, '*', $arrWhereData);
        if(!empty($arrSiteUserInfo)) {
            $arrSiteUserInfo = $arrSiteUserInfo[0];
        }


        $arrSiteUserInfo_recid = $arrSiteUserInfo['recid'];
        $arrSiteUserInfo_name = $arrSiteUserInfo['name'];
        $arrSiteUserInfo_email = $arrSiteUserInfo['email'];
        $arrSiteUserInfo_password = $arrSiteUserInfo['password'];
        $arrSiteUserInfo_mobile = $arrSiteUserInfo['mobile'];
        $arrSiteUserInfo_radius = $arrSiteUserInfo['radius'];
        $arrSiteUserInfo_longitude = $arrSiteUserInfo['longitude'];
        $arrSiteUserInfo_latitude = $arrSiteUserInfo['latitude'];
        $arrSiteUserInfo_created = $arrSiteUserInfo['created'];
        $arrSiteUserInfo_status = $arrSiteUserInfo['status'];
            







        $strMailBodyPath = __DIR__ . '/../view/mailtemplate/order_mail_to_admin.html';
        $strMessageBody = '';
        if (file_exists($strMailBodyPath)) {
            $strMessageBody = file_get_contents($strMailBodyPath);
        }
        // email subject
        $strMailSubject = "New Grab Request from lorry application : " . $lorryRequestId;
        
        // user information
        $usersAddress  = $arrSiteUserInfo_email . "<br />Phone : " . $arrSiteUserInfo_mobile;

        // product information
        $arrGrabLorryType = \APP\Components\CommonVar::getGrabLorryType();

        $strTypeName = '';
        foreach($arrGrabLorryType AS $key => $arrGrabLorryTypeInfo) {
            if($arrGrabLorryTypeInfo['id'] == $lorryRequest_aggregateid) {
                $strTypeName = $arrGrabLorryTypeInfo['name'];
            }
        }
        $arrGrabLorryAggregates = \APP\Components\CommonVar::getGrabLorryAggregates();

        $strAggregateName = "";
        foreach($arrGrabLorryAggregates AS $key => $arrGrabLorryAggregatesInfo) {
            if($arrGrabLorryAggregatesInfo['id'] == $lorryRequest_typeid) {
                $strAggregateName = $arrGrabLorryAggregatesInfo['name'];
            }
        }

        $productInfo = "";
        if(!empty($strAggregateName)) {
            $productInfo .= "Aggregate : " . $strAggregateName . '<br />';
        }
        if(!empty($strTypeName)) {
            $productInfo .= "Type : " . $strTypeName . '<br />';
        }
        $productInfo .= "Quantity : " . $lorryRequest_quantity . '<br />';
        $productInfo .= "Order Total : " . number_format($lorryRequest_ordertotal, 2, '.', '') . '<br />';
        $productInfo .= "Address : " . $lorryRequest_address . '<br />';
        $productInfo .= "Notes : " . $lorryRequest_notes . '<br />';

        if(!empty($flagAddonAdded)) {
            $productInfo .= "--------------------<br />";
            $productInfo .= "Add on<br />";
            $productInfo .= "--------------------<br />";
            $productInfo .= "Company Name : " . $addonBokked_companyname . '<br />';
            $productInfo .= "Product Name : " . $addonBokked_productname . '<br />';
            $productInfo .= "Details : " . $addonBokked_details . '<br />';
            $productInfo .= "Prize : " . number_format($addonBokked_price, 2, '.', '') . '<br />';
            $productInfo .= "Size : " . $addonBokked_size . '<br />';
            $productInfo .= "Weight : " . $addonBokked_weight . '<br />';
        }

        $strMessageBody = str_replace('{#lorryRequestId}', $lorryRequest_requestnumber, $strMessageBody);
        $strMessageBody = str_replace('{#requestInitiadedDate}', $lorryRequest_created, $strMessageBody);
        $strMessageBody = str_replace('{#userRequestedDate}', $lorryRequest_datex, $strMessageBody);
        $strMessageBody = str_replace('{#usersAddress}', $usersAddress, $strMessageBody);
        $strMessageBody = str_replace('{#productInfo}', $productInfo, $strMessageBody);
        $strMessageBody = str_replace('{#costing}', number_format($lorryRequest_ordertotal, 2, '.', ''), $strMessageBody);


        $objMailToAdminOnGrabRequest = new MailerModel($this->settings['mailer']);
        $objMailToAdminOnGrabRequest->setTo($this->settings['adminMail']['email']);
        $objMailToAdminOnGrabRequest->setToName($this->settings['adminMail']['name']);
        $objMailToAdminOnGrabRequest->setSubject($strMailSubject);
        $objMailToAdminOnGrabRequest->setMessage($strMessageBody);
        $flagForgotPaswordMailSend = $objMailToAdminOnGrabRequest->sendMail();
    }

    public function getNearBySuppliersCountFromUser($siteUserId = 0) {
        
        $arrReturn = array();
        $arrReturn['count'] = 0;
        $arrReturn['arrSuppliers'] = array();

        $objUserModel = new \APP\Model\UserModel($this->container);
        
        $arrUserInfo = $objUserModel->getUserInformationFromUserId($siteUserId);

        if(!empty($arrUserInfo)) {
            $longitude = $arrUserInfo['longitude'];
            $latitude = $arrUserInfo['latitude'];
            $radius = $arrUserInfo['radius'];
            // $radius = 1000;

            $strQuery = "   SELECT *, (((acos(sin((".$latitude."*pi()/180)) *
                                    sin((s.latitude*pi()/180))+cos((".$latitude."*pi()/180)) *
                                    cos((s.latitude*pi()/180)) * cos(((".$longitude."-
                                    s.longitude)*pi()/180))))*180/pi())*60*1.1515*1.609344) 
                                    as distance
                                FROM suppliers s
                                WHERE s.status = '1'
                                HAVING distance <= " . $radius;
            
            $arrDataInfo = $this->db->query($strQuery)->fetchAll();   

            if(!empty($arrDataInfo)) {
                $arrReturn['count'] = COUNT($arrDataInfo);
                $arrReturn['arrSuppliers'] = $arrDataInfo;
            }
        }
        return $arrReturn;
    }

    public function insertIntoLorryDump($jsonData = '') {

        $strInserTable = 'supplier_dump';

        $arrInsertData = array(
            "data_dump"     =>  $jsonData,
            "created"       =>  DATETIMESTAMP,
        );

        $this->db->insert($strInserTable, $arrInsertData);

        return true;
    }

    public function getAddons() {

        $strSelect = 'addon';

        $arrWhere = array(
            "status[=]" => "A"
        );

        $arrReturn = $this->db->select($strSelect, '*', $arrWhere);

        if(!empty($arrReturn)) {
            foreach($arrReturn AS $key => $arrAddonInfo) {

                $recid = $arrAddonInfo['recid'];
                $companyname = $arrAddonInfo['companyname'];
                $productname = $arrAddonInfo['productname'];
                $details = $arrAddonInfo['details'];
                $price = $arrAddonInfo['price'];
                $size = $arrAddonInfo['size'];
                $weight = $arrAddonInfo['weight'];
                $stockcount = $arrAddonInfo['stockcount'];
                $status = $arrAddonInfo['status'];
                $created = $arrAddonInfo['created'];
                
                $arrReturn[$key]['price'] = \APP\Components\StringComponent::convertPriceFormat($price);
                // $arrReturn[$key]['weight'] = \APP\Components\StringComponent::convertPriceFormat($weight);
            }
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