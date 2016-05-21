<%@page import="requestsresponses.Estudio"%>
<%@page import="java.util.List"%>
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
		<h4 class="section-titulo">Gestión de Profesores / Agregar Profesor</h4>
		<form id="postProfesor" action="profesor" method="post">
		
			<div class="row">
				<div class="form-group col-md-2">
					<label for="nombre">Nombre</label> <input type="text"
						class="form-control" id="nombre" placeholder="Escribir nombre"
						name="nombre">
				</div>
				<div class="form-group col-md-4">
					<label for="apellidopaterno">Apellido Paterno</label> <input
						type="text" class="form-control" id="apellidopaterno"
						placeholder="Escribir apellido paterno" name="apellidop">
				</div>
				<div class="form-group col-md-4">
					<label for="apellidomaterno">Apellido Materno</label> <input
						type="text" class="form-control" id="apellidomaterno"
						placeholder="Escribir apellido materno" name="apellidom">
				</div>
				<div class="form-group col-md-2">
					<label for="dni">DNI</label> <input type="text"
						class="form-control" id="dni" placeholder="Escribir dni"
						name="dni">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-4">
					<label for="urlfoto">URL Foto</label> <input type="url"
						class="form-control" id="urlfoto"
						placeholder="Escribir la URL de la foto" name="urlfoto">
				</div>
				<div class="form-group col-md-4">
					<label for="estudio">Estudios</label> <select
						id="estudio" class="form-control" name="estudio">
						<%List<Estudio> lista=(List<Estudio>) request.getSession().getAttribute("estudios");
						  for(Estudio estudio : lista){
						  %>
						<option value="<%=estudio.getId()%>"><%=estudio.getNombre() %></option>
						<%} %>
					</select>
				</div>
				<div class="col-md-3" style="margin-top: 2.5%; center">
					<button type="submit" class="btn btn-success">
						<span class="glyphicon glyphicon-ok"></span>Guardar Cambios
					</button>
				</div>
			</div>

			
		</form>
	</div>
</body>
</html>