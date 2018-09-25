<%@page language = "java" contentType = "text/html;charset=UTF-8" %>
<%@page import = 'java.util.List'%>
<%@page import = 'paquete.*'%>

<!DOCTYPE html>
<meta charset="utf-8" />
<head>
	<script src="https://unpkg.com/leaflet@1.0.2/dist/leaflet.js"></script>
	<link rel="stylesheet" href="css/leaflet.css" />
	<link rel="stylesheet" href="css/mapa.css">
 <style>
  #map { 
  width: 1290px;
  height: 475px; }
 </style>
 
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

<h1>Planta 0: Verificación zona de una Essid</h1>

  <%
List<Coordenada> coordenadas = (List<Coordenada>)request.getAttribute("coordenadas");
%>

   <div id="map"></div>
 <script>
 
var map = L.map('map').
setView([-9.53,17.6], 
5);

var mundo= new L.TileLayer.WMS('http://localhost:8080/geoserver/planos/wms', {
layers: 'planos:planta0',
styles: ' ',
format: 'image/png',
attribution: '© IniSIG' })
.addTo(map);


var iconoVerde = L.icon({
 iconUrl: 'images/circulo.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
<%
for(Coordenada coordenada : coordenadas){
%>		
	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoVerde}).addTo(map);
	
<%
} 
%>


 </script>

<form method="POST" action="Arrancar" id="opcion-select">
	<button type="submit" class="inicio-btn" >Volver Atras</button>
</form>
 </body> 
 </html>
