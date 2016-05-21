/**
 * 
 */
$(document).ready(function() {
	$('#gestionAcademica').off('click').on('click', function() {
		$.ajax({
			url : 'gestionAcademica.jsp',
			success : function(data) {
				$('#asideBase').html(data);
				$('#aside div').slideDown(1000);
			}
		});
		$.ajax({
			url : 'blank.jsp',
			success : function(data) {
				$('#seccionBase').html(data);
				$('#seccion div').slideDown(1000);
			}
		});
	});
	$('#gestionEventos').off('click').on('click', function() {
		$.ajax({
			url : 'gestionEventos.jsp',
			success : function(data) {
				$('#asideBase').html(data);
				$('#aside div').slideDown(1000);
			}
		});
		$.ajax({
			url : 'blank.jsp',
			success : function(data) {
				$('#seccionBase').html(data);
				$('#seccion div').slideDown(1000);
			}
		});
	});
	$('#gestionContable').off('click').on('click', function() {
		$.ajax({
			url : 'gestionContable.jsp',
			success : function(data) {
				$('#asideBase').html(data);
				$('#aside div').slideDown(1000);
			}
		});
		$.ajax({
			url : 'blank.jsp',
			success : function(data) {
				$('#seccionBase').html(data);
				$('#seccion div').slideDown(1000);
			}
		});
	});
	$('.agregarProfesor').off('click').on('click', function() {
		if ($($('body'))) {
			$.ajax({
				url : 'agregarProfesor.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'agregarProfesor.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('.agregarAlumno').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'agregarAlumno.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'agregarAlumno.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}

	});
	$('.agregarCurso').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'agregarCurso.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'agregarCurso.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('.agregarSeccion').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'agregarSeccion.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'agregarSeccion.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}

	});
	$('#asignarAlumnosASeccion').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'asignarAlumnosASeccion.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'asignarAlumnosASeccion.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#asignarNotasAlumnoSeccion').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'asignarNotasAlumnoSeccion.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'asignarNotasAlumnoSeccion.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#confirmar').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'confirmarProfesor.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'confirmarProfesor.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#editarAlumno').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'editarAlumno.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'editarAlumno.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#editarCurso').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'editarCurso.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'editarCurso.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#editarProfesor').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'editarProfesor.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'editarProfesor.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#editarSeccion').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'editarSeccion.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'editarSeccion.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#listaAlumnos').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'listaAlumnos',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'listaAlumnos',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#listaCursos').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'listaCursos',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'listaCursos',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#listaProfesores').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'listaProfesores',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'listaProfesores',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#listaSecciones').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'listaSecciones',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'listaSecciones',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#verAlumno').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'verAlumno.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'verAlumno.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#verCurso').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'verCurso.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'verCurso.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#verProfesor').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'verProfesor.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'verProfesor.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#verSeccion').off('click').on('click', function() {
		if ($('body')) {
			$.ajax({
				url : 'verSeccion.jsp',
				success : function(data) {
					$('#seccionBase').html(data);
					$('#seccionBase div').slideDown(1000);
				}
			});
		} else {
			$.ajax({
				url : 'verSeccion.jsp',
				success : function(data) {
					$('#divDinamico').html(data);
					$('#divDinamico div').slideDown(1000);
				}
			});
		}
	});
	$('#postAlumno').off('submit').on('submit', function(event) {
		event.stopPropagation();
		var direccion = $(this).attr('action');
		var formData = $(this).serializeArray();
		// process the form
		$.ajax({
			type : 'POST', // define the type of HTTP verb we want to use (POST
							// for our form)
			url : direccion, // the url where we want to POST
			data : formData, // our data object
			// what type of data do we expect back from the server
			success : function(data) {
				$('#divDinamico').html(data);
				$('#divDinamico div').slideDown(1000);
			}
		})
		// stop the form from submitting the normal way and refreshing the page
		event.preventDefault();
	});

	$('#postProfesor').off('submit').on('submit', function(event) {
		event.stopPropagation();
		var direccion = $(this).attr('action');
		var formData = $(this).serializeArray();
		// process the form
		$.ajax({
			type : 'POST', // define the type of HTTP verb we want to use (POST
							// for our form)
			url : direccion, // the url where we want to POST
			data : formData, // our data object
			// what type of data do we expect back from the server
			success : function(data) {
				$('#divDinamico').html(data);
				$('#divDinamico div').slideDown(1000);
			}
		})
		// stop the form from submitting the normal way and refreshing the page
		event.preventDefault();
	});

	$('#postCurso').off('submit').on('submit', function(event) {
		event.stopPropagation();
		var direccion = $(this).attr('action');
		var formData = $(this).serializeArray();
		// process the form
		$.ajax({
			type : 'POST', // define the type of HTTP verb we want to use (POST
							// for our form)
			url : direccion, // the url where we want to POST
			data : formData, // our data object
			// what type of data do we expect back from the server
			success : function(data) {
				$('#divDinamico').html(data);
				$('#divDinamico div').slideDown(1000);
			}
		})
		// stop the form from submitting the normal way and refreshing the page
		event.preventDefault();
	});
	
	$('#postSeccion').off('submit').on('submit', function(event) {
		event.stopPropagation();
		var direccion = $(this).attr('action');
		var formData = $(this).serializeArray();
		// process the form
		$.ajax({
			type : 'POST', // define the type of HTTP verb we want to use (POST
							// for our form)
			url : direccion, // the url where we want to POST
			data : formData, // our data object
			// what type of data do we expect back from the server
			success : function(data) {
				$('#divDinamico').html(data);
				$('#divDinamico div').slideDown(1000);
			}
		})
		// stop the form from submitting the normal way and refreshing the page
		event.preventDefault();
	});

});
