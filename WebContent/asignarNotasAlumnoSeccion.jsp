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
		<h4 class="section-titulo">Gestión de Asignaturas / Asignar Notas
			a Alumno de Sección</h4>
		<form action="#" method="post">
			<fieldset disabled="disabled">
				<div class="row">
					<div class="form-group col-sm-2">
						<label for="codigo">Código de Sección</label> <input type="number"
							class="form-control" id="codigo" value="12234" name="codigo">
					</div>
					<div class="form-group col-sm-4">
						<label for="curso">Curso</label> <input type="text"
							class="form-control" id="curso" value="Programación internet"
							name="curso">
					</div>
					<div class="form-group col-sm-4">
						<label for="profesor">Profesor</label> <input type="text"
							class="form-control" id="profesor" value="Hernán Quintana"
							name="profesor">
					</div>
				</div>
			</fieldset>

			<div class="table-responsive">
				<table class="table table-striped ">
					<thead>
						<tr>
							<th>Codigo</th>
							<th>Apellido Paterno</th>
							<th>Apellido Materno</th>
							<th>Nombre</th>
							<th>Nota</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2013</td>
							<td>gl</td>
							<td>hf</td>
							<td>gg</td>
							<td><input type="number" id="nota" name="nota1" value="15"
								class="form-control" /></td>
						</tr>
					</tbody>
				</table>
			</div>

			<div style="margin-top: 2.5%">
				<button type="submit" class="btn btn-success btn-agregar">
					<span class="glyphicon glyphicon-ok"></span>Guardar Cambios
				</button>
			</div>
		</form>
	</div>

</body>
</html>
