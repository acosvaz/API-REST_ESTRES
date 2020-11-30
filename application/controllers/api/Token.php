<?php

require_once APPPATH . '/libraries/REST_Controller.php';
//require_once APPPATH . '/libraries/jwt/JWT.php';
use \Firebase\JWT\JWT;

class Token extends REST_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('Loginapi_model');
    }
    public function login_post() {
        
        $username = $this->post('username');
        $password = $this->post('password');
        
        $invalidLogin = array ('invalid' => $username,
                               'status' => false);
        
        if(!$username || !$password) $this->response($username, REST_Controller::HTTP_NOT_FOUND);
        
        $id = $this->Loginapi_model->login($username,$password);
        $nu_rol = $this->Loginapi_model->rol($id);
     /*   $nu_fecha = $this->Loginapi_model->fecha($id);
        $max_fecha = MAX($nu_fecha);
        $fe_max = array_values($max_fecha);
        $total = $this->db->get_where('cuestionarios', ['user_id' => $id, 'created_at' => $fe_max[0]])->result();*/
        
        if($id) {
            
            $token['id'] = $id;
            $token['username'] = $username;
            $date = new DateTime();
            $token['iat'] = $date->getTimestamp();
            $output['id_token'] = JWT::encode($token, "my Secret key!");
            
            $valid = array ('id' => $id,
                            'username' => $username,
                            'rol' => $nu_rol,
                           // 'total' => ,
                           // 'fecha' => ,
                            'token' => JWT::encode($token, "my Secret key!"));
            
            $this->set_response($valid, REST_Controller::HTTP_OK);
        }
        else {
            $this->set_response($invalidLogin, REST_Controller::HTTP_NOT_FOUND);
        }
    }
}

