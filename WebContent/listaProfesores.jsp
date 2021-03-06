<%@page import="requestsresponses.ProfesorResponse"%>
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
		<h4 class="section-titulo">Gestión de Profesores / Ver Lista de
			Profesores</h4>
		<div class="table-responsive">
			<table class="table table-striped ">
				<thead>
					<tr>
						<th>Apellido Paterno</th>
						<th>Apellido Materno</th>
						<th>Nombres</th>
						<th>DNI</th>
						<th>Estudios</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
				<% List<ProfesorResponse> lista = (List<ProfesorResponse>) request.getSession().getAttribute("profesores");
				for(ProfesorResponse profesor : lista){				
				%>
					<tr>
						<td><%= profesor.getApellido_paterno() %></td>
						<td><%= profesor.getApellido_materno() %></td>
						<td><%= profesor.getNombres() %></td>
						<td><%= profesor.getDni() %></td>
						<td><%= profesor.getEstudio() %></td>
						<td><a id="editarProfesor" href="#"><span
								class="glyphicon glyphicon-pencil"></span></a> <a id="verProfesor"
							href="#"><span class="glyphicon glyphicon-zoom-in"></span></a> <a
							id="eliminarProfesor" href="#"><span
								class="glyphicon glyphicon-remove"></span></a></td>
					</tr>
				<%} %>
				</tbody>
			</table>
		</div>
		<div>
			<a href="#" role="button"
				class="btn btn-success btn-agregar agregarProfesor"><span
				class="glyphicon glyphicon-plus"></span>Agregar Registro</a>
		</div>
	</div>
</body>
</html>

