import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import paquete.*;

import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import java.sql.SQLException;


/**
 * Servlet que recoge los datos de un formulario
 *
 */
@WebServlet("/Cargar-Opcion")
public class CargarOpcionServlet extends HttpServlet {

    /**
     * Método del servlet que responde a una petición GET.
     *
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
    	

    		RequestDispatcher rd = request.getRequestDispatcher("portada.jsp");
    		rd.forward(request,response);

    	
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException
    {

    	
    		String opcion = request.getParameter("id_oculto");
		System.out.println("opcion elegida: " + opcion);
		int opcion_elegida = Integer.parseInt(opcion);
		
				
			if(opcion_elegida==1){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.localizarPuntosAccesoPorPlanta(opcion_elegida);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
					
						float lat_aux=(float)(((lat-40.332345)*18.52)/0.000763);
						float lon_aux=(float)(((lon+3.765137)*35.43)/0.001943);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta1.jsp");
		        		rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
	    		}
			if(opcion_elegida==0){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.localizarPuntosAccesoPorPlanta(opcion_elegida);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332361)*19.06)/0.000785);
						float lon_aux=(float)(((lon+3.765142)*35.19)/0.001945);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta0.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}

	
			}
			if(opcion_elegida==2){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.localizarPuntosAccesoPorPlanta(opcion_elegida);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332381)*20.06)/0.000814);
						float lon_aux=(float)(((lon+3.765140)*35.43)/0.001953);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta2.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==-1){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.localizarPuntosAccesoPorPlanta(opcion_elegida);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332382)*18.80)/0.000775);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001952);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta-1.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==3){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.localizarPuntosAccesoPorPlanta(opcion_elegida);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332380)*20.06)/0.000830);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001958);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta3.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==5){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.puntosEscaneadosPorPlanta(-1);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332382)*18.80)/0.000775);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001952);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta-1Escaneado.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==4){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.puntosEscaneadosPorPlanta(0);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
						float lat_aux=(float)(((lat-40.332361)*19.06)/0.000791);
						float lon_aux=(float)(((lon+3.765142)*35.19)/0.001945);					
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta0Escaneado.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==6){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.puntosEscaneadosPorPlanta(1);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
					
						float lat_aux=(float)(((lat-40.332345)*18.52)/0.000763);
						float lon_aux=(float)(((lon+3.765137)*35.43)/0.001943);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta1Escaneado.jsp");
		        		rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
	    		}
			if(opcion_elegida==7){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.puntosEscaneadosPorPlanta(2);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332381)*20.06)/0.000814);
						float lon_aux=(float)(((lon+3.765140)*35.43)/0.001953);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta2Escaneado.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==8){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.puntosEscaneadosPorPlanta(3);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332380)*20.06)/0.000830);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001958);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta3Escaneado.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==9){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.puntosConMalaCalidad(-1);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332382)*18.80)/0.000775);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001952);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta-1MalaCalidad.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==10){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.puntosConMalaCalidad(0);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332361)*19.06)/0.000791);
						float lon_aux=(float)(((lon+3.765142)*35.19)/0.001945);	
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta0MalaCalidad.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==11){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.puntosConMalaCalidad(1);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332345)*18.52)/0.000763);
						float lon_aux=(float)(((lon+3.765137)*35.43)/0.001943);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta1MalaCalidad.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==12){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.puntosConMalaCalidad(2);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332381)*20.06)/0.000814);
						float lon_aux=(float)(((lon+3.765140)*35.43)/0.001953);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta2MalaCalidad.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==13){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.puntosConMalaCalidad(3);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332380)*20.06)/0.000830);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001958);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta3MalaCalidad.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==15){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.localizacionAP(0);
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332380)*20.06)/0.000830);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001958);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta0AP.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==19){
				try(DBManager db = new DBManager()){

					List<String> macs = db.obtenerMacPorPlanta(-1);				
					request.setAttribute("macs",macs);
					RequestDispatcher rd = request.getRequestDispatcher("planta-1Macs.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==20){
				try(DBManager db = new DBManager()){

					List<String> macs = db.obtenerMacPorPlanta(0);				
					request.setAttribute("macs",macs);
					RequestDispatcher rd = request.getRequestDispatcher("planta0Macs.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==21){
				try(DBManager db = new DBManager()){

					List<String> macs = db.obtenerMacPorPlanta(1);				
					request.setAttribute("macs",macs);
					RequestDispatcher rd = request.getRequestDispatcher("planta1Macs.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==22){
				try(DBManager db = new DBManager()){

					List<String> macs = db.obtenerMacPorPlanta(2);				
					request.setAttribute("macs",macs);
					RequestDispatcher rd = request.getRequestDispatcher("planta2Macs.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==23){
				try(DBManager db = new DBManager()){

					List<String> macs = db.obtenerMacPorPlanta(3);				
					request.setAttribute("macs",macs);
					RequestDispatcher rd = request.getRequestDispatcher("planta3Macs.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
			if(opcion_elegida==500){
				try(DBManager db = new DBManager()){

					EstadisticaGeneral totalEscaneos = db.obtenerEstadisticaEscaneos();				
					request.setAttribute("totalEscaneos",totalEscaneos);
					RequestDispatcher rd = request.getRequestDispatcher("estadisticas_gen.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
				
			}
			
			if(opcion_elegida==246){
				try(DBManager db = new DBManager()){

					List<CoordenadaConPeso> coordenadas_aux = db.mapaCanales(-1);
					List<CoordenadaConPeso> coordenadas = new ArrayList<CoordenadaConPeso>();
					for(CoordenadaConPeso coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332382)*18.80)/0.000775);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001952);
						CoordenadaConPeso coordenada_aux=new CoordenadaConPeso();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenada_aux.setPeso(coordenada.getPeso());
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadasConPeso",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta-1MapaCanales.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}

			if(opcion_elegida==247){
				try(DBManager db = new DBManager()){

					List<CoordenadaConPeso> coordenadas_aux = db.mapaCanales(0);
					List<CoordenadaConPeso> coordenadas = new ArrayList<CoordenadaConPeso>();
					for(CoordenadaConPeso coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332361)*19.06)/0.000791);
						float lon_aux=(float)(((lon+3.765142)*35.19)/0.001945);	
						CoordenadaConPeso coordenada_aux=new CoordenadaConPeso();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenada_aux.setPeso(coordenada.getPeso());
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadasConPeso",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta0MapaCanales.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}

			if(opcion_elegida==248){
				try(DBManager db = new DBManager()){

					List<CoordenadaConPeso> coordenadas_aux = db.mapaCanales(1);
					List<CoordenadaConPeso> coordenadas = new ArrayList<CoordenadaConPeso>();
					for(CoordenadaConPeso coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332345)*18.52)/0.000763);
						float lon_aux=(float)(((lon+3.765137)*35.43)/0.001943);
						CoordenadaConPeso coordenada_aux=new CoordenadaConPeso();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenada_aux.setPeso(coordenada.getPeso());
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadasConPeso",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta1MapaCanales.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}

			if(opcion_elegida==249){
				try(DBManager db = new DBManager()){

					List<CoordenadaConPeso> coordenadas_aux = db.mapaCanales(2);
					List<CoordenadaConPeso> coordenadas = new ArrayList<CoordenadaConPeso>();
					for(CoordenadaConPeso coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332381)*20.06)/0.000814);
						float lon_aux=(float)(((lon+3.765140)*35.43)/0.001953);
						CoordenadaConPeso coordenada_aux=new CoordenadaConPeso();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenada_aux.setPeso(coordenada.getPeso());
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadasConPeso",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta2MapaCanales.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}			

			if(opcion_elegida==250){
				try(DBManager db = new DBManager()){

					List<CoordenadaConPeso> coordenadas_aux = db.mapaCanales(3);
					List<CoordenadaConPeso> coordenadas = new ArrayList<CoordenadaConPeso>();
					for(CoordenadaConPeso coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332380)*20.06)/0.000830);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001958);
						CoordenadaConPeso coordenada_aux=new CoordenadaConPeso();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenada_aux.setPeso(coordenada.getPeso());
						coordenadas.add(coordenada_aux);
					}
					request.setAttribute("coordenadasConPeso",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta3MapaCanales.jsp");
					rd.forward(request,response);
					
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
				
			}
			
			if(opcion_elegida==886){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.rangoEssid(-1,"vodafoneA3EA");
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332382)*18.80)/0.000775);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001952);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta-1rangoEssid.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}

			if(opcion_elegida==887){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.rangoEssid(0,"vodafoneA3EA");
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332380)*20.06)/0.000830);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001958);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta0rangoEssid.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}


			if(opcion_elegida==888){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.rangoEssid(1,"vodafoneA3EA");
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332345)*18.52)/0.000763);
						float lon_aux=(float)(((lon+3.765137)*35.43)/0.001943);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta1rangoEssid.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
				
			}
			
			if(opcion_elegida==889){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.rangoEssid(2,"vodafoneA3EA");
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332381)*20.06)/0.000814);
						float lon_aux=(float)(((lon+3.765140)*35.43)/0.001953);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta2rangoEssid.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}

			if(opcion_elegida==890){
				try(DBManager db = new DBManager()){

					List<Coordenada> coordenadas_aux = db.rangoEssid(3,"vodafoneA3EA");
					List<Coordenada> coordenadas = new ArrayList<Coordenada>();
					for(Coordenada coordenada:coordenadas_aux){
					
						float lat=coordenada.getLatitud();
						float lon=coordenada.getLongitud();
					
						float lat_aux=(float)(((lat-40.332380)*20.06)/0.000830);
						float lon_aux=(float)(((lon+3.765148)*35.43)/0.001958);
						Coordenada coordenada_aux=new Coordenada();					
						coordenada_aux.setLatitud(lat_aux);
						coordenada_aux.setLongitud(lon_aux);
						coordenadas.add(coordenada_aux);	
					}				
					request.setAttribute("coordenadas",coordenadas);
					RequestDispatcher rd = request.getRequestDispatcher("planta3rangoEssid.jsp");
					rd.forward(request,response);
				}
				catch(SQLException|NamingException ex){

					ex.printStackTrace();
					response.sendError(500);
				}
			}
	}
}
