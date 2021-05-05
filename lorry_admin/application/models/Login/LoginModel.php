<?php
class LoginModel extends CI_Model {

        function __construct() {
                parent::__construct();
        }

        public function checkUserAuthentication($arrParams = array()) {

                $arrReturn = array();
                $arrReturn['code'] = 'ERR';

                $txtUserName = $arrParams['txtUserName'];
                $txtPassword = $arrParams['txtPassword'];
                
                $arrAdminUser = $this->getUserInfoFromUsername($txtUserName);

                if(!empty($arrAdminUser)) {

                        $recid = $arrAdminUser->recid;
                        $username = $arrAdminUser->username;
                        $password = $arrAdminUser->password;
                        $email = $arrAdminUser->email;
                        $status = $arrAdminUser->status;
                        $created = $arrAdminUser->created;

                        // encrypted.... password
                        $encryptedPassword = md5($txtPassword);
                        
                        // invalid password
                        if($encryptedPassword != $password) {
                                $arrReturn['code'] = 'INVPASS';
                        }
                        // valid password
                        else {
                                $arrReturn['code'] = 'USRLOGIN';
                                $arrReturn['data'] = $arrAdminUser;
                        }
                }
                else {
                        $arrReturn['code'] = 'NUSRF';
                }
                return $arrReturn;
        }

        public function getUserInfoFromUsername($userName = '') {

                $this->db->select('*');
                $this->db->from('users');
                $this->db->where('username', $userName);

                $objResult = $this->db->get();
                $arrUserInfo = $objResult->result();

                if(!empty($arrUserInfo)) {
                        $arrUserInfo = $arrUserInfo[0];
                }

                return $arrUserInfo;
        }
}