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
@WebServlet("/Cargar-Opcion-2")
public class CargarOpcion2Servlet extends HttpServlet {

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

    	
    		String op_planta = request.getParameter("planta_oculta");
		System.out.println("planta elegida: " + op_planta);
		int opcion_planta = Integer.parseInt(op_planta);
		String opcion_mac = request.getParameter("mac_oculta");
		System.out.println("mac elegida: " + opcion_mac);
			
		//	Rango AP
		/*	try(DBManager db = new DBManager()){

				List<Coordenada> coordenadas_aux = db.rangoAP(opcion_planta,opcion_mac);
				List<Coordenada> coordenadas = new ArrayList<Coordenada>();
				if(opcion_planta==0){
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
					RequestDispatcher rd = request.getRequestDispatcher("planta0RangoAP.jsp");
					rd.forward(request,response);
				}
			}
			catch(SQLException|NamingException ex){

				ex.printStackTrace();
				response.sendError(500);
			}
		*/
		//	CalidadColores
			try(DBManager db = new DBManager()){

				List<CoordenadaConPeso> coordenadas_aux = db.CalidadColores(opcion_planta,opcion_mac);
				List<CoordenadaConPeso> coordenadas = new ArrayList<CoordenadaConPeso>();
				if(opcion_planta==-1){
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
					RequestDispatcher rd = request.getRequestDispatcher("planta-1CalidadColores.jsp");
					rd.forward(request,response);
				}				
				if(opcion_planta==0){
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
					RequestDispatcher rd = request.getRequestDispatcher("planta0CalidadColores.jsp");
					rd.forward(request,response);
				}
				if(opcion_planta==1){
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
					RequestDispatcher rd = request.getRequestDispatcher("planta1CalidadColores.jsp");
					rd.forward(request,response);
				}
				if(opcion_planta==2){
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
					RequestDispatcher rd = request.getRequestDispatcher("planta2CalidadColores.jsp");
					rd.forward(request,response);
				}
				if(opcion_planta==3){
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
					RequestDispatcher rd = request.getRequestDispatcher("planta3CalidadColores.jsp");
					rd.forward(request,response);
				}
			}
			catch(SQLException|NamingException ex){

				ex.printStackTrace();
				response.sendError(500);
			}
		
	}
}
