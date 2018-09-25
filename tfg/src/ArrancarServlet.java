import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import java.sql.SQLException;


/**
 * Servlet que recoge los datos de un formulario
 *
 */
@WebServlet("/Arrancar")
public class ArrancarServlet extends HttpServlet {

    /**
     * Método del servlet que responde a una petición GET.
     *
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
    	
		HttpSession session = request.getSession();
    		int conectado = (int)session.getAttribute("conectado");
		if(conectado==1){
			RequestDispatcher rd = request.getRequestDispatcher("opciones.jsp");
                	rd.forward(request,response);		
		}else{
    			RequestDispatcher rd = request.getRequestDispatcher("portada.jsp");
    			rd.forward(request,response);
		}
    	
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException
    {
		HttpSession session = request.getSession();
    		int conectado = (int)session.getAttribute("conectado");
		if(conectado==1){
    			RequestDispatcher rd = request.getRequestDispatcher("opciones.jsp");
		        rd.forward(request,response);
		}else{
			conectado=1;
			session.setAttribute("conectado",conectado);
			RequestDispatcher rd = request.getRequestDispatcher("opciones.jsp");
		        rd.forward(request,response);

		}
		


	}
}
