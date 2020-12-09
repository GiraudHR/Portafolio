<?php

class VehiculoController{

	public function __construct(){
		require_once "models/vehiculomodel.php";
	}
	
	public function index(){
		
		$vehiculo = new VehiculoModel();
		$data["titulo"] = "Vehiculos";
		$data["vehiculos"] = $vehiculo->get_vehiculos();
		require_once "views/modulos/vehiculo.php";
	}


	public function nuevo(){
		$data["titulo"] = "Vehiculos";
		require_once "views/modulos/agregarvehiculo.php";
	}

	public function guarda(){

		//Investigar aqui como evitar inyeccion de codigo
	$placa = $_POST['placa'];
	$marca = $_POST['marca'];
	$modelo = $_POST['modelo'];
	$anio = $_POST['anio'];
	$color = $_POST['color'];

	$vehiculo = new VehiculoModel();
	$vehiculo->insertar($placa,$marca,$modelo,$anio,$color);
	$data["titulo"] = "Vehiculos";
	$this->index();
	}


	public function modificar($id){
		$vehiculo = new VehiculoModel();
		
		$data["id"]=$id;
		$data["vehiculos"] = $vehiculo->get_vehiculo($id);
		$data["titulo"] = "Vehiculos";
		require_once "views/modulos/modificavehiculo.php";
	}

	public function actualizar(){

		//Investigar aqui como evitar inyeccion de codigo
	$id = $_POST['id'];
	$placa = $_POST['placa'];
	$marca = $_POST['marca'];
	$modelo = $_POST['modelo'];
	$anio = $_POST['anio'];
	$color = $_POST['color'];

	$vehiculo = new VehiculoModel();
	$vehiculo->modificar($id,$placa,$marca,$modelo,$anio,$color);
	$data["titulo"] = "Vehiculos";
	$this->index();
	}

	public function eliminar($id){

	$vehiculo = new VehiculoModel();
	$vehiculo->eliminar($id);
	$data["titulo"] = "Vehiculos";
	$this->index();
	}
}

?>