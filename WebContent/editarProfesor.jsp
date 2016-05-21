<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css" />
<script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
<script src="js/jquery-2.2.3.js"></script>
<link rel="stylesheet" href="css/custom2.css" />
<script src="js/custom.js">
	
</script>
<title>Panel de control</title>
</head>
<body>
	<div id="divDinamico" class="container-fluid">
		<h4 class="section-titulo">Gestión de Profesores / Editar
			Profesor</h4>
		<form action="#" method="put">
			<div class="row">
				<div class="form-group col-md-2">
					<label for="nombre">Nombre</label> <input type="text"
						class="form-control" id="nombre" value="nombre" name="nombre">
				</div>
				<div class="form-group col-md-4">
					<label for="apellidopaterno">Apellido Paterno</label> <input
						type="text" class="form-control" id="apellidopaterno"
						value="apellido paterno" name="apellidop">
				</div>
				<div class="form-group col-md-4">
					<label for="apellidomaterno">Apellido Materno</label> <input
						type="text" class="form-control" id="apellidomaterno"
						value="apellido materno" name="apellidom">
				</div>
				<div class="form-group col-md-2">
					<label for="dni">DNI</label> <input type="text"
						class="form-control" id="dni" value="99999999" name="dni">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-4">
					<label for="urlfoto">URL Foto</label> <input type="url"
						class="form-control" id="urlfoto" value="http://www.google.com.pe"
						name="urlfoto">
				</div>
				<div class="form-group col-md-4">
					<label for="centroestudio">Centro de estudios</label> <select
						id="centroestudio" class="form-control" name="centroestudio">
						<option selected="selected"
							value="UNIVERSIDAD NACIONAL DE INGENIERIA">UNIVERSIDAD
							NACIONAL DE INGENIERIA</option>
					</select>
				</div>
				<div class=" col-md-4" style="margin-top:2.5%">
					<button type="submit" class="btn btn-success">
						<span class="glyphicon glyphicon-ok"></span>Guardar Cambios
					</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>