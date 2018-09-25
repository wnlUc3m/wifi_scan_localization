<%@page language = "java" contentType = "text/html;charset=UTF-8" %>
<%@page import = 'java.util.List'%>
<%@page import = 'paquete.*'%>

<!DOCTYPE html>
<html>
  <head>

	<title>Estadísticas Generales</title>
	<!-- <meta charset="UTF-8"></meta> -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      
      <%
	EstadisticaGeneral escaneos = (EstadisticaGeneral)request.getAttribute("totalEscaneos");
      %>
	
      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Sótano',<%=escaneos.getSotano()%>],
          ['Planta 0',<%=escaneos.getPlanta0()%>],
          ['Planta 1',<%=escaneos.getPlanta1()%>],
          ['Planta 2',<%=escaneos.getPlanta2()%>],
          ['Planta 3',<%=escaneos.getPlanta3()%>]
        ]);
	
	var data2 = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Sótano',50],
          ['Planta 0',50],
          ['Planta 1',50],
          ['Planta 2',50],
          ['Planta 3',50]
        ]);	

	var options2 = {
	  title: 'Prueba 2 graficas'
	};

        var options = {
          title: 'Escaneos por Planta'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);

	var chart2 = new google.visualization.PieChart(document.getElementById('piechart2'));

        chart2.draw(data2, options2);
      }
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
    <div id="piechart2" style="width: 900px; height: 500px;"></div>
    <form method="POST" action="Arrancar" id="opcion-select">
	<button type="submit" class="inicio-btn" >Volver Atras</button>
  </body>
</html>
