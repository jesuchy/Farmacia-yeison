<?php 
<<<<<<< HEAD:app/modelos/Articulo.php
/* comentario para git */
class Articulo{
=======

class ArticuloModel{
>>>>>>> fbccd3c06347bded4096c367d66195b4650dd886:app/models/ArticuloModel.php
    private $db;

    public function __construct()
    {
        $this->db = new Base;
    } 

    public function obtenerArticulos(){
        $this->db->query("SELECT * FROM articulos");

        return $this->db->registros();
    }
}