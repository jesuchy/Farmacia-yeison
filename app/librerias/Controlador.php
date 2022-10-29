<?php


// Clase controlador principal 
// Se encarga de poder cargar los modelos y las vistasS
class Controlador{
    
    //cargar metodo 
    public function modelo($modelo){
        //cargar modelo 
        require_once '../app/modelos/' . $modelo . '.php';
        //instanciamos el modelo 
        return new $modelo();
    }

    //cargamos la vista
    public function vista($vista, $datos = []){
        //chequear si el archivo vista existe 
        if (file_exists('../app/vistas/' . $vista . '.php')){
            require_once '../app/vistas/' . $vista . '.php';
        }else{
            //si el archivo no existe
            die ('la vista no existe');
        }
    }
}