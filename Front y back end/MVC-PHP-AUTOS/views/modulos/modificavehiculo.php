<?php



?>
<!DOCTYPE html>
<html>
<head>
	<title><h2 class="col-12 p-0"><?php echo $data["titulo"];?></h2></title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	
	<h2 class="col-12 p-0"><?php echo $data["titulo"];?></h2>

	<form id="nuevo" name="nuevo" method="POST" action="index.php?c=Vehiculo&a=actualizar" autocomplete="off">

		<input type="hidden" id="id" name="id" value="<?php echo $data["id"]; ?>" />

		Placa: <input type="text" name="placa" id="placa" value="<?php echo $data["vehiculos"]["placa"] ?>"/>

		Marca: <input type="text" name="marca" id="marca" value="<?php echo $data["vehiculos"]["modelo"] ?>"/>
		Modelo: <input type="text" name="modelo" id="modelo" value="<?php echo $data["vehiculos"]["modelo"] ?>"/>
		Año: <input type="text" name="anio" id="anio" value="<?php echo $data["vehiculos"]["anio"] ?>"/>
		Color: <input type="text" name="color" id="color" value="<?php echo $data["vehiculos"]["color"] ?>"/>
		
		<button id="guardad" name="guardar" type="submit">Guardar</button>
		
	</form>















<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>