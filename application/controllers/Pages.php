<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {

	public function __construct(){
		parent::__construct();

		if(!$this->session->userdata('logged_in')){
			redirect('auth', 'refresh');
		}

		$this->load->model('users_model');
	}
	
	public function approval()
	{
		$this->load->view('pages/approval');
	}

	public function cheques($username){
		$this->load->view('pages/user_view');
	}

	public function esubtrans(){
		$this->load->view('pages/add_user');
	}

	public function employee_invoices(){
		$this->load->view('pages/import_user');
	}

	public function fxtable($username){
		$this->load->view('pages/add_user');
	}

	public function gensubfrm($username){
		$this->load->view('pages/user_notifications');
	}

	public function imprest_retrd($username){
		$this->load->view('pages/user_activity');
	}

	public function isubtrans($username){
		$this->load->view('pages/user_settings');
	}

	public function petsubfrm($username){
		$this->load->view('pages/user_settings');
	}

	public function petty($username){
		$this->load->view('pages/user_settings');
	}

	public function strans($username){
		$this->load->view('pages/user_settings');
	}

	public function subchqform($username){
		$this->load->view('pages/user_settings');
	}

	public function submitter($username){
		$this->load->view('pages/user_settings');
	}

	public function supplier_invoices($username){
		$this->load->view('pages/user_settings');
	}

	public function travel_request($username){
		$this->load->view('pages/user_settings');
	}

	public function viament($username){
		$this->load->view('pages/user_settings');
	}

	public function viasub_subform($username){
		$this->load->view('pages/user_settings');
	}
}
