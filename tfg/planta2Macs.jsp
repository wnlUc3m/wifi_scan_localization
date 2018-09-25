<%@page language = "java" contentType = "text/html;charset=UTF-8" %>
<%@page import = 'java.util.List'%>
<%@page import = 'paquete.*'%>

<!DOCTYPE html>
<html>
<head>
	<title>Opciones TFG</title>
	<!-- <meta charset="UTF-8"></meta> -->
	<link rel="stylesheet" href="css/macs2.css">

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

<h1>Lista de Macs de la Planta 2</h1>
<%
List<String> macs = (List<String>)request.getAttribute("macs");
int cuenta=-1;
%>
<div>
		<ul id="lista-opciones">
			<li>			
				<table class="table table-striped-1" id="tabla-opciones--1">
								
				<% 
				for (String mac: macs) { /*se deja abierto el for*/
					if(cuenta==10){			
				%>				
				</table>
			</li>
			<li>
				<table class="table table-striped-1" id="tabla-opciones--1">
				
					
						<tr><td> <%= mac%> </td>
							<td>
								<form method="POST" action="Cargar-Opcion-2" id="form_cuenta">
									<div>
										<input type="hidden" name="mac_oculta" value="<%= mac %>">
										<input type="hidden" name="planta_oculta" value="2">
										<button type="submit" class="btn btn-info">Ver</button>
									</div>
								</form>

							</td>
						</tr>
					
				
			
				<%
					cuenta=0;
					}else{
					%>
						<tr><td> <%= mac%> </td>
							<td>
								<form method="POST" action="Cargar-Opcion-2" id="form_cuenta">
									<div>
										<input type="hidden" name="mac_oculta" value="<%= mac %>">
										<input type="hidden" name="planta_oculta" value="2">
										<button type="submit" class="btn btn-info">Ver</button>
									</div>
								</form>

							</td>
						</tr>
				<%
					cuenta=cuenta+1;
					}	
				} /*se cierra el for*/
				%>	
				</table>
			<li>
		</ul>
</div>
<form method="POST" action="Arrancar" id="opcion-select">
	<button type="submit" class="inicio-btn" >Volver Atras</button>
</form>
</body>
</html>
