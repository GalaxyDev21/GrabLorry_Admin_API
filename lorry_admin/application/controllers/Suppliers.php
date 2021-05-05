<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Suppliers extends CI_Controller {
	
	public function __construct() {
		parent::__construct();

		checkUserLoggedIn();
		
		$this->load->model('Suppliers_model');

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
		
		$arrSuppliersList = $this->Suppliers_model->getAllSuppliersList();

		$arrInfoToPass = array();
		$arrInfoToPass['arrSuppliersList'] = $arrSuppliersList;

        $this->load->view('modules/header');
		$this->load->view('suppliers/list', $arrInfoToPass);
        $this->load->view('modules/footer');
	}

	public function add() {

        $this->load->view('modules/header');
		$this->load->view('suppliers/toAddEdit');
        $this->load->view('modules/footer');
	}

	public function edit() {
		
		$supplierId = $this->uri->segment(3);

		$arrSupplierInfo = $this->Suppliers_model->getSupplierInfoWithId($supplierId);

		$arrInfoToPass['arrSupplierData'] = $arrSupplierInfo;
		
		$this->load->view('modules/header');
		$this->load->view('suppliers/toAddEdit', $arrInfoToPass);
        $this->load->view('modules/footer');
	}

	public function delete() {

		$supplierId = $this->uri->segment(3);
		$this->Suppliers_model->deleteSupplier($supplierId);
		redirect(base_url() . 'suppliers');
	}

	public function addUpdate() {

		$params = $this->input->post();

		$txtSupplierName = $params['txtSupplierName'];
		$txtPostCode = $params['txtPostCode'];
		$txtLongitude = $params['txtLongitude'];
		$txtLatitude = $params['txtLatitude'];
		$txtSuit = $params['txtSuit'];
		$txtPhone = $params['txtPhone'];
		$txtWebsite = $params['txtWebsite'];
		$txtEmail = $params['txtEmail'];
		$hidSupplierId = $params['hidSupplierId'];
		
		$arrParamsForSupplierAddEdit = array();
		$arrParamsForSupplierAddEdit['txtSupplierName'] = $txtSupplierName;
		$arrParamsForSupplierAddEdit['txtPostCode'] = $txtPostCode;
		$arrParamsForSupplierAddEdit['txtLongitude'] = $txtLongitude;
		$arrParamsForSupplierAddEdit['txtLatitude'] = $txtLatitude;
		$arrParamsForSupplierAddEdit['txtSuit'] = $txtSuit;
		$arrParamsForSupplierAddEdit['txtPhone'] = $txtPhone;
		$arrParamsForSupplierAddEdit['txtWebsite'] = $txtWebsite;
		$arrParamsForSupplierAddEdit['txtEmail'] = $txtEmail;
		$arrParamsForSupplierAddEdit['supplierId'] = $hidSupplierId;

		// add supplier
		if($hidSupplierId == 0) {
			$this->Suppliers_model->addSuppliers($arrParamsForSupplierAddEdit);
		}
		// update supplier
		else {
			$this->Suppliers_model->updateSupplier($arrParamsForSupplierAddEdit);
		}
		redirect(base_url() . 'suppliers');
	}

	
}
