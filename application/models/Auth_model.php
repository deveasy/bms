<?php

class Auth_model extends CI_Model{
	
	function __construct(){
		parent::__construct();
	}

	function login($username, $password){
		$this->db->select('empName, email');
		$this->db->from('employees');
		$this->db->where('email', $username);
		$this->db->where('password',md5($password));
		$this->db->limit(1);

		$query = $this->db->get();
		if($query->num_rows() >= 1){
			return $query->result();
		}
		else{
			return false;
		}
	}

	public function reset_password($username){
		$data = array(
			'password' => md5($this->input->post('password'))
		);
		$this->db->where('username', $username);
		$this->db->update('employees', $data);
	}
}