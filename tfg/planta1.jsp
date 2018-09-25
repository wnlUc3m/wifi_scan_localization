<%@page language = "java" contentType = "text/html;charset=UTF-8" %>
<%@page import = 'java.util.List'%>
<%@page import = 'paquete.*'%>

<!DOCTYPE html>
<meta charset="utf-8" />
<head>
	<script src="https://unpkg.com/leaflet@1.0.2/dist/leaflet.js"></script>
	<link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.2/dist/leaflet.css" />

 <style>
  #map { 
  widh: 50px;
  height: 600px; }
 </style>
 
 </head>
  <body>
  <%
List<Coordenada> coordenadas = (List<Coordenada>)request.getAttribute("coordenadas");
%>

   <div id="map"></div>
 <script>
 
var map = L.map('map').
setView([-9.26,17.72], 
5);

var mundo= new L.TileLayer.WMS('http://localhost:8080/geoserver/planos/wms', {
layers: 'planos:planta1',
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
