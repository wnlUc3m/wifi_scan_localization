<%@page language = "java" contentType = "text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<title>Opciones TFG</title>
	<!-- <meta charset="UTF-8"></meta> -->
	<link rel="stylesheet" href="css/opciones2.css">
</head>
<body>
<header id="header-opciones">
	<a id="logo-header" href="#">
		<span class="nombre-sitio">UC3M</span>
		<span class="desc-sitio">Trabajo Fin de Grado</span>
	</a>
 
	<nav>
		<ul>
			<li><a href="Arrancar">Inicio</a></li>
			<li><a href="#">Acerca de</a></li>
			<li><a href="Inicio">Salir</a></li>
		</ul>
	</nav>


</header>

<h1>Opciones</h1>

<div>
		<ul id="lista-opciones">
			
			<li>
				<table class="tabla-2" id="tabla-2">
				<thead><tr><th>Sótano</th></tr></thead>
			
					<tr><td> Mostrar Puntos Escaneados </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="5">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Mostrar Puntos Mala Calidad </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="9">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Rango cobertura de AP </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="19">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Mostrar Mapa de Canales </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="246">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Verificación Zona Essid </td>
				
				<td>
					<form method="POST" action="Cargar-Opcion" id="form_cuenta">
						<div>
							<input type="hidden" name="id_oculto" value="886">
							<button type="submit" class="btn btn-info">Ver</button>
						</div>
					</form>

				</td>
			</tr>	
				</table>
			</li>
			<li><table class="tabla-3" id="tabla-3">
				<thead><tr><th>Planta 0</th></tr></thead>
			
					<tr><td> Mostrar Puntos Escaneados </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="4">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Mostrar Puntos Mala Calidad </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="10">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Rango cobertura de AP </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="20">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Mostrar Mapa de Canales </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="247">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Verificación Zona Essid </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="887">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
				</table>
			</li>

			<li>
				<table class="tabla-4" id="tabla-4">
				<thead><tr><th>Planta 1</th></tr></thead>
			
					<tr><td> Mostrar Puntos Escaneados </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="6">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Mostrar Puntos Mala Calidad </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="11">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Rango cobertura de AP </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="21">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Mostrar Mapa de Canales </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="248">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Verificación Zona Essid </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="888">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
				</table>
			</li>
		</ul>
</div>
<div>
		<ul id="lista-opciones">
			<li>
				
				<table class="tabla-5" id="tabla-5">
				<thead><tr><th>Planta 2</th></tr></thead>
			
					<tr><td> Mostrar Puntos Escaneados </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="7">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Mostrar Puntos Mala Calidad </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="12">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Rango cobertura de AP </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="22">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Mostrar Mapa de Canales </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="249">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Verificación Zona Essid </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="889">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
				</table>

			</li>
			<li>

				<table class="tabla-6" id="tabla-6">
				<thead><tr><th>Planta 3</th></tr></thead>
			
					<tr><td> Mostrar Puntos Escaneados </td>
		
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="8">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Mostrar Puntos Mala Calidad </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="13">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Rango cobertura de AP </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="23">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Mostrar Mapa de Canales </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="250">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>
					<tr><td> Verificación Zona Essid </td>
				
						<td>
							<form method="POST" action="Cargar-Opcion" id="form_cuenta">
								<div>
									<input type="hidden" name="id_oculto" value="890">
									<button type="submit" class="btn btn-info">Ver</button>
								</div>
							</form>

						</td>
					</tr>	
				</table>

			</li>
		</ul>
</div>
</body>
</html>
