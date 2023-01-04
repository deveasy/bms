<?php

class Users_model extends CI_Model{
	
	function __construct(){
		parent::__construct();
	}

	function getUsers(){
		$query = $this->db->get('users');

        return $query->result();
	}

	public function getUser($username){
		$this->db->where('username', $username);
        $query = $this->db->get('users');
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
            'gender' => $this->input->post('gender')
        );
        $this->db->insert('users', $data);
    }

    public function updateUser($username){
        $this->db->where('usernmae', $username);
        $data = array(
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'email' => $this->input->post('email'),
            'gender' => $this->input->post('gender')
        );
        $this->db->update('users', $data);
    }

    public function deleteUser($username){
        $this->db->where('username', $username);
        $this->db->delete('users');
    }
}