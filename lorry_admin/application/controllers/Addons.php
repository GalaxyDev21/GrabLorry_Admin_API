<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Addons extends CI_Controller {
	
	public function __construct() {
		parent::__construct();

		checkUserLoggedIn();
		
		$this->load->model('Addon_model');

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
		
        $arrAddonsList = $this->Addon_model->getAllAddons();
        
		$arrInfoToPass = array();
		$arrInfoToPass['arrAddonsList'] = $arrAddonsList;

        $this->load->view('modules/header');
		$this->load->view('addons/list', $arrInfoToPass);
        $this->load->view('modules/footer');
	}

	public function add() {

        $this->load->view('modules/header');
		$this->load->view('addons/toAddEdit');
        $this->load->view('modules/footer');
	}

	public function edit() {
		
		$addOnId = $this->uri->segment(3);

		$arrAddonsList = $this->Addon_model->getAddOnInfoWithId($addOnId);

		$arrInfoToPass['arrAddonsList'] = $arrAddonsList;
		
		$this->load->view('modules/header');
		$this->load->view('addons/toAddEdit', $arrInfoToPass);
        $this->load->view('modules/footer');
	}

	public function delete() {

		$addOnId = $this->uri->segment(3);
		$this->Addon_model->deleteAddons($addOnId);
		redirect(base_url() . 'addons');
	}

	public function addUpdate() {

        $params = $this->input->post();
        
        $txtCompanyName = $params['txtCompanyName'];
        $txtProductName = $params['txtProductName'];
        $txtDetails = $params['txtDetails'];
        $txtPrice = $params['txtPrice'];
        $txtSize = $params['txtSize'];
        $txtWeight = $params['txtWeight'];
        $txtStockCount = $params['txtStockCount'];
        $hidAddOnId = $params['hidAddOnId'];

        $arrParamsForAddOnsAddEdit = array();
        $arrParamsForAddOnsAddEdit['txtCompanyName'] = $txtCompanyName;
        $arrParamsForAddOnsAddEdit['txtProductName'] = $txtProductName;
        $arrParamsForAddOnsAddEdit['txtDetails'] = $txtDetails;
        $arrParamsForAddOnsAddEdit['txtPrice'] = $txtPrice;
        $arrParamsForAddOnsAddEdit['txtSize'] = $txtSize;
        $arrParamsForAddOnsAddEdit['txtWeight'] = $txtWeight;
        $arrParamsForAddOnsAddEdit['txtStockCount'] = $txtStockCount;
        $arrParamsForAddOnsAddEdit['addOnId'] = $hidAddOnId;

		// add addon
		if($hidAddOnId == 0) {
			$this->Addon_model->addAddOns($arrParamsForAddOnsAddEdit);
		}
		// update addon
		else {
			$this->Addon_model->updateAddons($arrParamsForAddOnsAddEdit);
		}
		redirect(base_url() . 'addons');
	}

	
}
