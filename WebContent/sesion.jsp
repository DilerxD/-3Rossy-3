<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="js/jquery-2.2.3.js"></script>
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css" />
<script src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/custom2.css" />
<script src="js/custom.js"></script>
<title>Panel de control</title>
</head>
<body id="inicio">

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="#inicio"><img src="img/logo.png"
					style="padding: 0%; height: 7%; padding-left: 2%" /></a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a id="gestionAcademica" class="raya"
						href="#">Gestion Academica <span class="sr-only">(current)</span>
					</a></li>
					<li><a id="gestionEventos" class="raya" href="#">Gestion
							de Eventos</a></li>
					<li><a id="gestionContable" class="raya" href="#">Gestion
							Contable</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.jsp">Cerrar Sesion <span
							class="glyphicon glyphicon-off"></span></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div id="areaCentro" class="container-fluid">
	<div class="row">
		<div class="col-md-3">
			<div id="asideBase">
				<ul class="leftbar">
					<li><span class="glyphicon glyphicon-briefcase leftheading"></span>
						<h4 class="leftheading">Gestión de Profesores</h4>
						<ul class="leftbar subheading">
							<li><a class="agregarProfesor" href="#"><h5>>>
										Agregar Profesor</h5></a></li>
							<li><a id="listaProfesores" href="#"><h5>>> Ver
										Lista de Profesores</h5></a></li>
						</ul></li>
					<li><span class="glyphicon glyphicon-education leftheading"></span>
						<h4 class="leftheading">Gestión de Alumnos</h4>
						<ul class="leftbar subheading">
							<li><a class="agregarAlumno" href="#"><h5>>>
										Agregar Alumno</h5></a></li>
							<li><a id="listaAlumnos" href="#"><h5>>> Ver Lista
										de Alumnos</h5></a></li>
						</ul></li>
					<li><span class="glyphicon glyphicon-book leftheading"></span>
						<h4 class="leftheading">Gestión de Asignaturas</h4>
						<ul class="leftbar subheading">
							<li><a class="agregarCurso" href="#"><h5>>> Agregar
										Curso</h5></a></li>
							<li><a id="listaCursos" href="#"><h5>>> Ver Lista
										de Cursos</h5></a></li>
							<li><a class="agregarSeccion" href="#"><h5>>>
										Agregar sección</h5></a></li>
							<li><a id="listaSecciones" href="#"><h5>>> Ver
										Lista de Secciones</h5></a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<div class="col-md-9">
			<div id="seccionBase"></div>
		</div>
	</div>
	<footer class="container-fluid">	
		<ul>
			<li>Sergio Espinoza</li>
			<li>Sandra Fraile</li>
			<li>Iván Palomares</li>
			<li>Juan Saquicoray</li>
			<li>Aldo Shinzato</li>
			<li>Carlos Ugaz</li>
		</ul>	
	</footer>	
	</div>
	
	
</body>
</html>