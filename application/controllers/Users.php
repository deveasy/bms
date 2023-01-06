<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {

	$firstname = '';
	$lastname = '';
	$staffId = '';
	$email = '';

	public function __construct(){
		parent::__construct();

		if(!$this->session->userdata('logged_in')){
			redirect('auth', 'refresh');
		}

		$this->load->model('dashboard_model');
	}
	
	public function index()
	{
		$this->load->view('pages/users_view');
	}

	public function user($username){
		$data['user'] = $this->users_model->getUser($username);
		$this->load->view('user/user_view', $data);
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

	public function delete_user($username){
		$this->users_model->deleteUser($username);
		redirect('users');
	}

	public function add_user(){
		$this->users_model->addUser();
		redirect('users');
	}

	public function update_user($username){
		$this->users_model->update_user($username);
		redirect('users');
	}
}
