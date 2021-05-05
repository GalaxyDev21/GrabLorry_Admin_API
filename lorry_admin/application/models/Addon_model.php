<?php


class Addon_model extends CI_Model {

        function __construct() {
            parent::__construct();
        }

        function getAllAddons() {

            $this->db->select('*');
            $this->db->from('addon');
            $this->db->where('status <>', 'D');

            $objResult = $this->db->get();
            $arrUserInfo = $objResult->result();

            return $arrUserInfo;
        }

        function getAddOnInfoWithId($addOnId = 0) {

            $this->db->select('*');
            $this->db->from('addon');
            $this->db->where('status <>', 'D');
            $this->db->where('recid', $addOnId);

            $objResult = $this->db->get();
            $arrUserInfo = $objResult->result_array();

            if(!empty($arrUserInfo)) {
                    $arrUserInfo = $arrUserInfo[0];
            }

            return $arrUserInfo;
        }


        function addAddOns($arrParams = array()) {

            $txtCompanyName = $arrParams['txtCompanyName'];
            $txtProductName = $arrParams['txtProductName'];
            $txtDetails = $arrParams['txtDetails'];
            $txtPrice = $arrParams['txtPrice'];
            $txtSize = $arrParams['txtSize'];
            $txtWeight = $arrParams['txtWeight'];
            $txtStockCount = $arrParams['txtStockCount'];
            $addOnId = $arrParams['addOnId'];
              
            $arrAddOnInsert = array(
                'companyname' => $txtCompanyName,
                'productname' => $txtProductName,
                'details' => $txtDetails,
                'price' => $txtPrice,
                'size' => $txtSize,
                'weight' => $txtWeight,
                'stockcount' => $txtStockCount,
                'status' => 'A'
            );

            $this->db->insert('addon', $arrAddOnInsert);
            return true;
        }

        function updateAddons($arrParams = array()) {

            $txtCompanyName = $arrParams['txtCompanyName'];
            $txtProductName = $arrParams['txtProductName'];
            $txtDetails = $arrParams['txtDetails'];
            $txtPrice = $arrParams['txtPrice'];
            $txtSize = $arrParams['txtSize'];
            $txtWeight = $arrParams['txtWeight'];
            $txtStockCount = $arrParams['txtStockCount'];
            $addOnId = $arrParams['addOnId'];

            $arrAddonInsertData = array(
                'companyname' => $txtCompanyName,
                'productname' => $txtProductName,
                'details' => $txtDetails,
                'price' => $txtPrice,
                'size' => $txtSize,
                'weight' => $txtWeight,
                'stockcount' => $txtStockCount
            );
            
            $this->db->where('recid', $addOnId);
            $this->db->update('addon', $arrAddonInsertData);

            return true;
        }

        function deleteAddons($addOnId = 0) {

            $arrAddonData = array(
                    'status' => 'D'
            );
            $this->db->where('recid', $addOnId);
            $this->db->update('addon', $arrAddonData);
            return true;
        }
}