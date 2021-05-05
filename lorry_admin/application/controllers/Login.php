<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	
	public function __construct() {
		parent::__construct();

		checkUserLoggedIn();
		
		$this->load->model('Login/LoginModel');
	}

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index() {

		$arrFlashErrors = $this->session->flashdata('errors');

		$arrDataToPassInView = array();
		$arrDataToPassInView['errors'] = $arrFlashErrors;
		
		$this->load->view('login/Login', $arrDataToPassInView);
	}

	public function checkUserName() {

		$params = $this->input->post();

		$arrRequestErrors = array();
		if(!isset($params['txtUserName']) || empty($params['txtUserName'])) {
			$arrRequestErrors['txtUserName'] = 'Username cannot be empty';
		}

		if(!isset($params['txtPassword']) || empty($params['txtPassword'])) {
			$arrRequestErrors['txtPassword'] = 'Password cannot be empty';
		}
		
		if(!empty($arrRequestErrors)) {
			$this->session->set_flashdata('errors', $arrRequestErrors);
			redirect(base_url());
		}

		$arrLoginCheckParams = array();
		$arrLoginCheckParams['txtUserName'] = $params['txtUserName'];
		$arrLoginCheckParams['txtPassword'] = $params['txtPassword'];

		$arrUserAuthResponse = $this->LoginModel->checkUserAuthentication($arrLoginCheckParams);

		switch($arrUserAuthResponse['code']) {
			case 'INVPASS':
				$this->session->set_flashdata('errors', ['Invalid Password']);
				redirect(base_url());
				break;
			case 'USRLOGIN':
				$arrAdminUserInfo = $arrUserAuthResponse['data'];
				$this->session->set_userdata('adminId', $arrAdminUserInfo->recid);
				redirect(base_url() . 'dashboard');
				break;
			case 'NUSRF':
				$this->session->set_flashdata('errors', ['No User found with this username.']);
				redirect(base_url());
				break;
		}
	}

	public function test() {
		print "sdfsdf";
	}
}
