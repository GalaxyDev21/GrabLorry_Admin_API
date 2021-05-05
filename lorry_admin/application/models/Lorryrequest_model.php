<?php

use Carbon\Carbon;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require FCPATH . 'vendor\phpmailer\phpmailer\src\Exception.php';
require FCPATH . 'vendor\phpmailer\phpmailer\src\PHPMailer.php';
require FCPATH . 'vendor\phpmailer\phpmailer\src\SMTP.php';

class Lorryrequest_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function getAllLorryRequest() {

        $this->db->select("*, lorryrequest.status lorryStatus, lorryrequest.recid lorryRequestId");
        $this->db->from("lorryrequest");
        $this->db->join("siteuser", "lorryrequest.siteuserid = siteuser.recid");

        $objResult = $this->db->get();
        $arrUserInfo = $objResult->result();

        return $arrUserInfo;
    }


    function mapSupplierWithLorryRequest($arrParams = array()) {

        $arrReturn = array();

        $rdSupplierId = $arrParams['rdSupplierId'];
        $hidRequestId = $arrParams['hidRequestId'];
        
        $now = Carbon::now()->toDateTimeString();

        $arrInsert = array(
            'lorryrequestid' => $hidRequestId,
            'supplierid' => $rdSupplierId,
            'assigndate' => $now,
        );
        $this->db->insert('lorryrequestsuppliermap', $arrInsert);

        $arrUpdateData = array(
            "status" => "ASSIGNED",
        );
        $this->db->where('recid', $hidRequestId);
        $this->db->update('lorryrequest', $arrUpdateData);


        $this->sendMailToSupplier($arrParams);
        
        return true;
    }

    public function sendMailToSupplier($arrParams = array()) {

        $rdSupplierId = $arrParams['rdSupplierId'];
        $hidRequestId = $arrParams['hidRequestId'];

        // lorry request application
        $this->db->select('*');
        $this->db->from('lorryrequest');
        $this->db->where('recid', $hidRequestId);

        $objResult = $this->db->get();
        $arrLorryRequest = $objResult->result();

        if(!empty($arrLorryRequest)) {
            $arrLorryRequest = $arrLorryRequest[0];
        }
        else {
            return false;
        }

        // addon booked info at the time of lorry book
        $this->db->select('*');
        $this->db->from('addonbooked');
        $this->db->where('lorryrequestid', $hidRequestId);

        $objResult = $this->db->get();
        $arrAddonBookedWithRequest = $objResult->result();

        if(!empty($arrAddonBookedWithRequest)) {
            $arrAddonBookedWithRequest = $arrAddonBookedWithRequest[0];
        }

        // supplier info selected
        $this->db->select('*');
        $this->db->from('suppliers');
        $this->db->where('recid', $rdSupplierId);

        $objResult = $this->db->get();
        $arrSupplierInformation = $objResult->result();

        if(!empty($arrSupplierInformation)) {
            $arrSupplierInformation = $arrSupplierInformation[0];
        }
        else {
            return false;
        }

        // users info who raised request
        $this->db->select('*');
        $this->db->from('siteuser');
        $this->db->where('recid', $arrLorryRequest->siteuserid);

        $objResult = $this->db->get();
        $arrSiteUserInfo = $objResult->result();

        if(!empty($arrSiteUserInfo)) {
            $arrSiteUserInfo = $arrSiteUserInfo[0];
        }
        else {
            return false;
        }

        $lorry_req_recid = $arrLorryRequest->recid;
        $lorry_req_siteuserid = $arrLorryRequest->siteuserid;
        $lorry_req_requestnumber = $arrLorryRequest->requestnumber;
        $lorry_req_aggregateid = $arrLorryRequest->aggregateid;
        $lorry_req_typeid = $arrLorryRequest->typeid;
        $lorry_req_trip = $arrLorryRequest->trip;
        $lorry_req_quantity = $arrLorryRequest->quantity;
        $lorry_req_ordertotal = $arrLorryRequest->ordertotal;
        $lorry_req_address = $arrLorryRequest->address;
        $lorry_req_notes = $arrLorryRequest->notes;
        $lorry_req_status = $arrLorryRequest->status;
        $lorry_req_datex = $arrLorryRequest->datex;
        $lorry_req_created = $arrLorryRequest->created;


        $add_on_recid = '0';
        $add_on_lorryrequestid = '';
        $add_on_addonid = '';
        $add_on_companyname = '';
        $add_on_productname = '';
        $add_on_details = '';
        $add_on_price = '';
        $add_on_size = '';
        $add_on_weight = '';
        $add_on_created = '';
        if(!empty($arrAddonBookedWithRequest)) {
            $add_on_recid = $arrAddonBookedWithRequest->recid;
            $add_on_lorryrequestid = $arrAddonBookedWithRequest->lorryrequestid;
            $add_on_addonid = $arrAddonBookedWithRequest->addonid;
            $add_on_companyname = $arrAddonBookedWithRequest->companyname;
            $add_on_productname = $arrAddonBookedWithRequest->productname;
            $add_on_details = $arrAddonBookedWithRequest->details;
            $add_on_price = $arrAddonBookedWithRequest->price;
            $add_on_size = $arrAddonBookedWithRequest->size;
            $add_on_weight = $arrAddonBookedWithRequest->weight;
            $add_on_created = $arrAddonBookedWithRequest->created;
        }


        $supplier_info_recid = $arrSupplierInformation->recid;
        $supplier_info_bussinessname = $arrSupplierInformation->bussinessname;
        $supplier_info_postcode = $arrSupplierInformation->postcode;
        $supplier_info_longitude = $arrSupplierInformation->longitude;
        $supplier_info_latitude = $arrSupplierInformation->latitude;
        $supplier_info_suit = $arrSupplierInformation->suit;
        $supplier_info_phone = $arrSupplierInformation->phone;
        $supplier_info_webaddress = $arrSupplierInformation->webaddress;
        $supplier_info_hours = $arrSupplierInformation->hours;
        $supplier_info_website = $arrSupplierInformation->website;
        $supplier_info_email = $arrSupplierInformation->email;
        $supplier_info_status = $arrSupplierInformation->status;
        $supplier_info_created = $arrSupplierInformation->created;

        
        $siteuser_info_recid = $arrSiteUserInfo->recid;
        $siteuser_info_name = $arrSiteUserInfo->name;
        $siteuser_info_email = $arrSiteUserInfo->email;
        $siteuser_info_password = $arrSiteUserInfo->password;
        $siteuser_info_mobile = $arrSiteUserInfo->mobile;
        $siteuser_info_radius = $arrSiteUserInfo->radius;
        $siteuser_info_longitude = $arrSiteUserInfo->longitude;
        $siteuser_info_latitude = $arrSiteUserInfo->latitude;
        $siteuser_info_created = $arrSiteUserInfo->created;
        $siteuser_info_status = $arrSiteUserInfo->status;
        
        $mailTemplate = FCPATH . 'application\views\mailtemplate\order_mail.html';
        $flagFileExists = file_exists($mailTemplate);

        if($flagFileExists) {

            $fopen = fopen($mailTemplate, 'r');
            $templateContent = fread($fopen, filesize($mailTemplate));

            $suppliersAddress = $supplier_info_bussinessname . "<br />" . $supplier_info_postcode . "<br />";

            $usersAddress  = $siteuser_info_email . "<br />Phone : " . $siteuser_info_mobile;

            $arrGrabLorryType = getGrabLorryType();

            $strTypeName = '';
            foreach($arrGrabLorryType AS $key => $arrGrabLorryTypeInfo) {
                if($arrGrabLorryTypeInfo['id'] == $lorry_req_aggregateid) {
                    $strTypeName = $arrGrabLorryTypeInfo['name'];
                }
            }
            $arrGrabLorryAggregates = getGrabLorryAggregates();

            $strAggregateName = "";
            foreach($arrGrabLorryAggregates AS $key => $arrGrabLorryAggregatesInfo) {
                if($arrGrabLorryAggregatesInfo['id'] == $lorry_req_typeid) {
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
            $productInfo .= "Quantity : " . $lorry_req_quantity . '<br />';
            $productInfo .= "Order Total : " . number_format($lorry_req_ordertotal, 2, '.', '') . '<br />';
            $productInfo .= "Address : " . $lorry_req_address . '<br />';
            $productInfo .= "Notes : " . $lorry_req_notes . '<br />';

            if(!empty($arrAddonBookedWithRequest)) {
                $productInfo .= "--------------------<br />";
                $productInfo .= "Add on<br />";
                $productInfo .= "--------------------<br />";
                $productInfo .= "Company Name : " . $add_on_companyname . '<br />';
                $productInfo .= "Product Name : " . $add_on_productname . '<br />';
                $productInfo .= "Details : " . $add_on_details . '<br />';
                $productInfo .= "Prize : " . number_format($add_on_price, 2, '.', '') . '<br />';
                $productInfo .= "Size : " . $add_on_size . '<br />';
                $productInfo .= "Weight : " . $add_on_weight . '<br />';
            }


            $templateContent = str_replace('{#lorryRequestId}', $lorry_req_requestnumber, $templateContent);
            $templateContent = str_replace('{#requestInitiadedDate}', $lorry_req_created, $templateContent);
            $templateContent = str_replace('{#userRequestedDate}', $lorry_req_datex, $templateContent);
            $templateContent = str_replace('{#usersAddress}', $usersAddress, $templateContent);
            $templateContent = str_replace('{#suppliersAddress}', $suppliersAddress, $templateContent);
            $templateContent = str_replace('{#productInfo}', $productInfo, $templateContent);
            $templateContent = str_replace('{#costing}', number_format($lorry_req_ordertotal, 2, '.', ''), $templateContent);

            $mail = new PHPMailer(true);

            try {
                //Server settings
                $mail->SMTPDebug = 0;                                 // Enable verbose debug output
                $mail->isSMTP();                                      // Set mailer to use SMTP
                $mail->Host = 'smtp.gmail.com';                       // Specify main and backup SMTP servers
                $mail->SMTPAuth = true;                               // Enable SMTP authentication
                $mail->Username = 'lorryapplication@gmail.com';                 // SMTP username
                $mail->Password = 'test1234!';                           // SMTP password
                $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
                $mail->Port = 587;                                    // TCP port to connect to

                //Recipients
                $mail->setFrom('lorryapplication@gmail.com', 'Lorry Application');
                $mail->addAddress($siteuser_info_email, $siteuser_info_name);               // Name is optional
                $mail->addReplyTo('lorryapplication@gmail.com', 'Lorry Application');

                //Content
                $mail->isHTML(true);                                  // Set email format to HTML
                $mail->Subject = 'Lorry Application';
                $mail->Body    = $templateContent;
                $mail->AltBody = $templateContent;

                $mail->send();
                echo 'Message has been sent';
            } catch (Exception $e) {
                echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
            }
        }
        return true;
    }
}