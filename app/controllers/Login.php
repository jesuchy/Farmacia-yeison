<?php

class Login extends Controlador{
	
    public function __construct(){	
        $this->articuloModelo = $this->modelo('ArticuloModel');
        //echo 'Controlador paginas cargado';
    }

    public function index(){
        $articulos = $this->articuloModelo->obtenerArticulos();
        $datos = [
            'titulo' => 'Bienvenido a MVC render2web',
            'articulos' => $articulos
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