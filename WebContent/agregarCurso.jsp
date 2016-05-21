<%@page import="requestsresponses.Escuela"%>
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
		<h4 class="section-titulo">Gestión de Asignaturas / Agregar Curso</h4>
		<form id="postCurso" action="curso" method="post">
			<div class="row">
				<div class="form-group col-md-5">
					<label for="nombre">Nombre</label> <input type="text"
						class="form-control" id="nombre" placeholder="Escribir nombre"
						name="nombre">
				</div>
				<div class="form-group col-md-2">
					<label for="codigo">Código</label> <input type="number"
						class="form-control" id="codigo" placeholder="Escribir código"
						name="codigo">
				</div>
				<div class="form-group col-md-3">
					<label for="carrera">Carrera</label> <select id="carrera"
						class="form-control" name="carrera">
						<%List<Escuela> lista=(List<Escuela>) request.getSession().getAttribute("escuelas");
							for(Escuela escuela : lista){
							%>
						<option value="<%=escuela.getId()%>"><%=escuela.getNombre() %></option>
						<%} %>
					</select>
				</div>
			</div>
			<div>
				<button type="submit" class="btn btn-success">
					<span class="glyphicon glyphicon-ok"></span>Guardar Cambios
				</button>
			</div>
		</form>
	</div>
</body>
</html>