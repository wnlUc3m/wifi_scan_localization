<%@page language = "java" contentType = "text/html;charset=UTF-8" %>
<%@page import = 'java.util.List'%>
<%@page import = 'paquete.*'%>

<!DOCTYPE html>
<meta charset="utf-8" />
<head>
	<script src="https://unpkg.com/leaflet@1.0.2/dist/leaflet.js"></script>
	<link rel="stylesheet" href="css/leaflet.css" />
	<link rel="stylesheet" href="css/mapa2.css">
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

<h1>Planta 3: Mapa de Canales</h1>

  <%
List<CoordenadaConPeso> coordenadas = (List<CoordenadaConPeso>)request.getAttribute("coordenadasConPeso");
%>

   <div id="map"></div>
 <script>
 
var map = L.map('map').
setView([-10.24,17.71], 
5);

var mundo= new L.TileLayer.WMS('http://localhost:8080/geoserver/planos/wms', {
layers: 'planos:planta3',
styles: ' ',
format: 'image/png',
attribution: '© IniSIG' })
.addTo(map);


var iconoNegro = L.icon({
 iconUrl: 'images/circulonegro.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoRojo = L.icon({
 iconUrl: 'images/circulorojo.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoVerde = L.icon({
 iconUrl: 'images/circuloverde.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoAzul = L.icon({
 iconUrl: 'images/circuloazul.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoAmarillo = L.icon({
 iconUrl: 'images/circuloamarillo.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoMarron = L.icon({
 iconUrl: 'images/circulomarron.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoMorado = L.icon({
 iconUrl: 'images/circulomorado.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoRosa = L.icon({
 iconUrl: 'images/circulorosa.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoGris = L.icon({
 iconUrl: 'images/circulogris.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoNaranja = L.icon({
 iconUrl: 'images/circulonaranja.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoVerdeOscuro = L.icon({
 iconUrl: 'images/circuloverdeoscuro.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoAzulOscuro = L.icon({
 iconUrl: 'images/circuloazuloscuro.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});
var iconoRojoOscuro = L.icon({
 iconUrl: 'images/circulorojooscuro.png',
 iconSize: [10, 10],
 iconAnchor: [10, 10]
});



<%
for(CoordenadaConPeso coordenada : coordenadas){
	if(coordenada.getPeso() ==  48){
%>		
	
	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoRosa}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() == 40){
%>		
	
	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoVerdeOscuro}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() == 36){
%>		
	
	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoNaranja}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() == 11){
%>		
	
	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoNegro}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() == 6){
%>		
	
	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoMarron}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() == 1){
%>		
	
	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoRojo}).addTo(map);

<%
	}
	if(coordenada.getPeso() == 116){
%>		

	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoGris}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() == 64){
%>		
	
	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoRojoOscuro}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() == 140){
%>		
	
	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoVerde}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() == 44){
%>		
	
	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoAmarillo}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() == 136){
%>		

	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoAzul}).addTo(map);
<%
	}
	if(coordenada.getPeso() == 60){
%>		
	
	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoAzulOscuro}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() == 104){
%>		

	L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoMorado}).addTo(map);
	
<%
	}
} 
%>


 </script>

<div id="leyenda_canales">
<img id="leyenda" src="images/leyenda_canales2.jpg" />
</div>

<form method="POST" action="Arrancar" id="opcion-select">
	<button type="submit" class="inicio-btn" >Volver Atras</button>
</form>
 </body> 
 </html>
