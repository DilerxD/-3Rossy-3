<%@page import="requestsresponses.CursoResponse"%>
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
		<h4 class="section-titulo">Gestión de Asignaturas / Ver Lista de
			Cursos</h4>		
			<div class="table-responsive">
				<table class="table table-striped ">
					<thead>
						<tr>
							<th>Codigo</th>
							<th>Nombre</th>
							<th>Carrera</th>
							<th>Total Secciones</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tbody>
					<% List<CursoResponse> lista = (List<CursoResponse>) request.getSession().getAttribute("cursos");
					for(CursoResponse curso : lista){					
					%>
						<tr>
							<td><%= curso.getCodigo() %></td>
							<td><%= curso.getNombre() %></td>
							<td><%= curso.getEscuela() %></td>
							<td><%= curso.getCantidadSecciones() %></td>
							<td><a id="editarCurso" href="#"><span
									class="glyphicon glyphicon-pencil"></span></a> <a id="verCurso"
								href="#"><span class="glyphicon glyphicon-zoom-in"></span></a> <a
								id="eliminarCurso" href="#"><span
									class="glyphicon glyphicon-remove"></span></a></td>
						</tr>
					<%} %>
					</tbody>
				</table>
			</div>		
		<div>
			<a href="#" role="button"
				class="btn btn-success btn-agregar agregarCurso"><span
				class="glyphicon glyphicon-plus"></span>Agregar Registro</a>
		</div>
	</div>
</body>
</html>