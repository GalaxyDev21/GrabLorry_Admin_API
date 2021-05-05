<?php


class Suppliers_model extends CI_Model {

        function __construct() {
                parent::__construct();
        }

        function getAllSuppliersList() {

                $this->db->select('*');
                $this->db->from('suppliers');
                $this->db->where('status', 1);

                $objResult = $this->db->get();
                $arrUserInfo = $objResult->result();

                return $arrUserInfo;
        }

        function getSupplierInfoWithId($supplierId = 0) {

                $this->db->select('*');
                $this->db->from('suppliers');
                $this->db->where('status', 1);
                $this->db->where('recid', $supplierId);

                $objResult = $this->db->get();
                $arrUserInfo = $objResult->result_array();

                if(!empty($arrUserInfo)) {
                        $arrUserInfo = $arrUserInfo[0];
                }

                return $arrUserInfo;

        }

        function addSuppliers($arrParams = array()) {

                $txtSupplierName = $arrParams['txtSupplierName'];
		$txtPostCode = $arrParams['txtPostCode'];
		$txtLongitude = $arrParams['txtLongitude'];
		$txtLatitude = $arrParams['txtLatitude'];
		$txtSuit = $arrParams['txtSuit'];
		$txtPhone = $arrParams['txtPhone'];
		$txtWebsite = $arrParams['txtWebsite'];
		$txtEmail = $arrParams['txtEmail'];
                $supplierId = $arrParams['supplierId'];
                      
                $arrSupplierInsertData = array(
                        'bussinessname' => $txtSupplierName,
                        'postcode' => $txtPostCode,
                        'longitude' => $txtLongitude,
                        'latitude' => $txtLatitude,
                        'suit' => $txtSuit,
                        'phone' => $txtPhone,
                        'webaddress' => $txtWebsite,
                        'hours' => '0',
                        'website' => '',
                        'email' => $txtEmail,
                        'status' => 1
                );
                
                $this->db->insert('suppliers', $arrSupplierInsertData);
                return true;
        }

        function updateSupplier($arrParams = array()) {

                $txtSupplierName = $arrParams['txtSupplierName'];
		$txtPostCode = $arrParams['txtPostCode'];
		$txtLongitude = $arrParams['txtLongitude'];
		$txtLatitude = $arrParams['txtLatitude'];
		$txtSuit = $arrParams['txtSuit'];
		$txtPhone = $arrParams['txtPhone'];
		$txtWebsite = $arrParams['txtWebsite'];
		$txtEmail = $arrParams['txtEmail'];
                $supplierId = $arrParams['supplierId'];

                $arrSupplierInsertData = array(
                        'bussinessname' => $txtSupplierName,
                        'postcode' => $txtPostCode,
                        'longitude' => $txtLongitude,
                        'latitude' => $txtLatitude,
                        'suit' => $txtSuit,
                        'phone' => $txtPhone,
                        'webaddress' => $txtWebsite,
                        'hours' => '0',
                        'website' => '',
                        'email' => $txtEmail
                );
                
                $this->db->where('recid', $supplierId);
                $this->db->update('suppliers', $arrSupplierInsertData);

                return true;
        }

        function deleteSupplier($supplierId = 0) {

                $arrSupplierInsertData = array(
                        'status' => 2
                );
                $this->db->where('recid', $supplierId);
                $this->db->update('suppliers', $arrSupplierInsertData);
                return true;
        }
}