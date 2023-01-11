<?php

class Users_model extends CI_Model{
	
	function __construct(){
		parent::__construct();
	}

	function getUsers(){
		$query = $this->db->get('employees');

        return $query->result();
	}

	public function getUser($username){
		$this->db->where('username', $username);
        $query = $this->db->get('employees');
        if($query->num_rows() > 0){
            return $query->row();
        }
        else{
            return false;
        }
	}

    public function addUser(){
        $data = array(
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'email' => $this->input->post('email'),
            'gender' => $this->input->post('gender'),
            'phone' => $this->input->post('phone'),
            'unit' => $this->input->post('unit'),
            'department' => $this->input->post('department'),
            'title' => $this->input->post('title'),
            'rank' => $this->input->post('rank'),
            'active' => 1
        );
        $this->db->insert('employees', $data);
    }

    public function updateUser($username){
        $this->db->where('usernmae', $username);
        $data = array(
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'email' => $this->input->post('email'),
            'gender' => $this->input->post('gender')
        );
        $this->db->update('employees', $data);
    }

    public function deleteUser($username){
        $this->db->where('username', $username);
        $this->db->delete('employees');
    }

    public function updatePassword($username){
        $data = array(
            'password' => '5f4dcc3b5aa765d61d8327deb882cf99'
        );
        $this->db->where('username', $username);
        $this->db->update('employees', $data);
    }
}