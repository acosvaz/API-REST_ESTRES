<?php

class Loginapi_model extends CI_Model {
    
    public function __construct() {
        Parent::__construct();
    }
    
    public function login($username, $password) {
                $this->db->where('user_name',$username);
                $this->db->where('password',$password);
		$query = $this->db->get('usuarios');
        if ($query->num_rows() == 1) {
            $result = $query->result();
            return $result[0]->id;
            //return $query->row();
        }
        return false;
    }
    
    public function rol($id) {
                $this->db->select ('tipos_id');
                $this->db->from('usuarios');
                $this->db->where('id',$id);
		$query = $this->db->get();
        if ($query->num_rows() == 1) {
            $result = $query->result();
            return $result[0]->tipos_id;
            //return $query->row();
        }
        return false;
    }

    public function fecha($id) {
                $this->db->select ('created_at');
                $this->db->from('cuestionarios');
                $this->db->where('user_id',$id);
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            //$result = $query->result_array();
            return $query->result_array();
            //return $query->row();
        }
        return false;
    }

}