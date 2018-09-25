import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

import java.util.Date;
import java.util.ArrayList;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;



/**
 * Servlet que recoge los datos de un formulario
 *
 */
@WebServlet("/Inicio")
public class InicioServlet extends HttpServlet {

    /**
     * Método del servlet que responde a una petición GET.
     *
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        // establece ContentType y sistema de codificación de caracteres
        response.setContentType("text/html; charset=UTF-8");

        // obtiene un PrintWriter para escribir la respuesta
	HttpSession session = request.getSession();
	int conectado=0;
	session.setAttribute("conectado",conectado);
        RequestDispatcher rd = request.getRequestDispatcher("portada.jsp");
        rd.forward(request,response);
    
       
    }

}
