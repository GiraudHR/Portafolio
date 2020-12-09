<?php



?>


<!DOCTYPE html>
<html>
<head>
	<title><?php echo $data["titulo"];?></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<section class="">
		<h2 class="col-12 p-0"><?php echo $data["titulo"];?></h2>
		<a href="index.php?c=Vehiculo&a=nuevo" class="btn btn-primary mb-2">Agregar</a>
		<div class="col-12 p-0">
			<table class="table">
			<thead>
				<tr>
					<th>Placa</th>
					<th>Marca</th>
					<th>Modelo</th>
					<th>Año</th>
					<th>Color</th>
					<th>Editar</th>
					<th>Eliminar</th>
				</tr>
			</thead>
			<tbody>
				<?php  
					foreach($data["vehiculos"] as $dato){
						echo "<tr>";
						echo "<td>".$dato["placa"]."</td>";
						echo "<td>".$dato["marca"]."</td>";
						echo "<td>".$dato["modelo"]."</td>";
						echo "<td>".$dato["anio"]."</td>";
						echo "<td>".$dato["color"]."</td>";
						echo "<td><a href='index.php?c=Vehiculo&a=modificar&id=".$dato["id"]."'>Modificar</a></td>";
						echo "<td><a href='index.php?c=Vehiculo&a=eliminar&id=".$dato["id"]."'>Eliminar</a></td>";
						echo "</tr>";
					}
				?>
			</tbody>
		</table>
		</div>
		
	</section>

	<section>
		<?php 
		$iniciores ="{\"Productos\":[{\"success\":1},";
		$finalres = "]}";
		$arreglo = array();
		$respuesta ="";

		echo $iniciores; 
			foreach($data["vehiculos"] as $datos){
				$arreglo["id"] = $datos["id"];
				$arreglo["placa"] = $datos["placa"];
				$arreglo["Marca"] = $datos["marca"];
				$arreglo["modelo"] = $datos["modelo"];
				$arreglo["anio"] = $datos["anio"];
				$arreglo["color"] = $datos["color"];

				$respuesta .= json_encode($arreglo);
				$respuesta .= ",";
			}
		$respuesta = substr($respuesta, 0, -1);
		echo $respuesta;
		echo $finalres;
		 ?>

	</section>




<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>