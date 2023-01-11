<?php
defined('BASEPATH') OR exit('No direct script access allowed');

	$firstname = '';
	$lastname = '';
	$staffId = '';
	$email = '';

class Users extends CI_Controller {

	public function __construct(){
		parent::__construct();

		if(!$this->session->userdata('logged_in')){
			redirect('auth', 'refresh');
		}

		$this->load->model('users_model');
	}
	
	public function index()
	{
		$data['users'] = $this->users_model->getUsers();
		$this->load->view('user/users_view', $data);
	}

	public function user($username){
		$data['user'] = $this->users_model->getUser($username);
		$this->load->view('user/user_view', $data);
	}

	public function add_user(){
		$this->load->view('user/add_user');
	}

	public function import_user(){
		$this->load->view('user/import_user');
	}

	public function edit_user($username){
		$data['user'] = $this->users_model->getUser($username);
		$this->load->view('user/add_user', $data);
	}

	public function user_notifications($username){
		$data['notifications'] = $this->users_model->userNotifications($username);
		$this->load->view('user/user_notifications', $data);
	}

	public function user_activity($username){
		$data['activities'] = $this->users_model->userActivity($username);
		$this->load->view('user/user_activity', $data);
	}

	public function user_settings($username){
		$data['settings'] = $this->users_model->userSettings($username);
		$this->load->view('user/user_settings', $data);
	}

	function addUser(){
		$this->users_model->addUser();
		redirect('users');
	}

	function updateUser($username){
		$this->users_model->update_user($username);
		redirect('users');
	}

	function deleteUser($username){
		$this->users_model->deleteUser($username);
		redirect('users');
	}

	function resetPassword($username){
		$this->users_model->resetPassword($username);
		redirect('users');
	}
}
