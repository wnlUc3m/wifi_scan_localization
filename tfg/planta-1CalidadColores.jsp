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

<h1>Sótano: Puntos Cobertura AP</h1>

  <%
List<CoordenadaConPeso> coordenadas = (List<CoordenadaConPeso>)request.getAttribute("coordenadasConPeso");
%>

   <div id="map"></div>
 <script>
 
var map = L.map('map').
setView([-9.9,17.71], 
5);

var mundo= new L.TileLayer.WMS('http://localhost:8080/geoserver/planos/wms', {
layers: 'planos:planta-1',
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


<%
int cuenta=0;
for(CoordenadaConPeso coordenada : coordenadas){
	cuenta=cuenta+1;
	System.out.println("Latitud: "+coordenada.getLatitud()+",Longitud: "+coordenada.getLongitud()+",Calidad: "+coordenada.getPeso());
	if(coordenada.getPeso() > 94){
	System.out.println("Entre 95 y 100 (AzulOsucuro) - "+cuenta);

%>		
	
		L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoAzulOscuro}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() < 95 && coordenada.getPeso() > 89){
	System.out.println("Entre 90 y 95 (Azul) - "+cuenta);
%>		
	
		L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoAzul}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() < 90 && coordenada.getPeso() > 79){
	System.out.println("Entre 80 y 90 (VerdeOscuro) - "+cuenta);
%>		
	
		L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoVerdeOscuro}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() < 80 && coordenada.getPeso() > 69){
	System.out.println("Entre 70 y 80 (Verde) - "+cuenta);
%>		
	
		L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoVerde}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() < 70 && coordenada.getPeso() > 59){
	System.out.println("Entre 60 y 70 (Amarillo) - "+cuenta);
%>		
	
		L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoAmarillo}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() < 60 && coordenada.getPeso() > 49){
	System.out.println("Entre 50 y 60 (Naranja) - "+cuenta);
%>	
	
		L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoNaranja}).addTo(map);
	
<%
	}
	if(coordenada.getPeso() < 50){
	System.out.println("Entre 0 y 50 (Rojo) - "+cuenta);
%>		
	
		L.marker([<%=coordenada.getLatitud()%>,<%=coordenada.getLongitud()%>],{icon: iconoRojo}).addTo(map);

<%
	}
} 
System.out.println("Numero puntos en el mapa: "+cuenta);
%>


</script>

<div id="leyenda_calidades">
<img id="leyenda" src="images/leyenda_calidades2.jpg" />
</div>

<form method="POST" action="Cargar-Opcion" id="opcion-select">
	<input type="hidden" name="id_oculto" value="19">
	<button type="submit" class="inicio-btn" >Volver Atras</button>
</form>
 </body> 
 </html>
