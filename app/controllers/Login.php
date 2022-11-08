<?php

class Login extends Controlador{
	
    public function __construct(){	
        //echo 'Controlador paginas cargado';
    }

    public function index(){
        $datos = [   
        ];
		$this->vista('login/index', $datos);
   	}

	public function Logout(){
		unset($_SESSION['sesion_active']);
		$this->vista('login/index');
	}
		
    public function actualizar($num_registro){
        echo $num_registro;
    }

}