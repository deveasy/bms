<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct(){
		parent::__construct();

		$this->load->model('auth_model');
	}
	
	public function index()
	{
		$this->load->view('auth/login');
	}

	public function login(){
		$this->form_validation->set_rules('username','Username', 'required');
		$this->form_validation->set_rules('password','Password', 'required|callback_check_database');
		if($this->form_validation->run() == FALSE){
			$this->load->view('auth/login');
		}
		else{
			redirect('dashboard');
		}
	}

	function check_database($password){
		$username = $this->input->post('username');

		$result = $this->auth_model->login($username, $password);

		if($result){
			$sess_array = array();
			foreach ($result as $row) {
				$sess_data = array(
					'email' => $row->email,
					'firstname' => $row->firstname,
					'lastname' => $row->lastname,
					'staffId' => $row->staff_id
				);
				$this->session->set_userdata('logged_in',$sess_data);
			}
			return true;
		}
		else{
			$this->form_validation->set_message('check_database','Invalid username or password');
			return false;
		}
	}

	public function logout(){
		$this->session->sess_destroy();
		redirect('auth');
	}

	public function reset_password(){
		$this->load->view('auth/reset');
	}

	public function reset(){
		$this->auth_model->reset_password($username);
		redirect('');
	}
}
