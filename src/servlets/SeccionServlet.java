package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.GenericType;

import org.glassfish.jersey.client.ClientConfig;

import requestsresponses.Curso;
import requestsresponses.Seccion;
import requestsresponses.SeccionResponse;

/**
 * Servlet implementation class SeccionServlet
 */
@WebServlet("/seccion")
public class SeccionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeccionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int codigo = Integer.parseInt(request.getParameter("codigo"));
		int id_curso = Integer.parseInt(request.getParameter("curso"));						
		int id_profesor = Integer.parseInt(request.getParameter("profesor"));
		
		Seccion seccion=new Seccion(0, codigo, id_curso, id_profesor);
		
		ClientConfig config = new ClientConfig();		
		Client client = ClientBuilder.newClient(config);
		WebTarget target = client.target(
				"http://localhost:8080/Grupo5WebServices/rest/");
		
		
		String respuesta = target.path("secciones")
				.request()
				.accept("text/plain") //el cliente acepta un texto plano
				.post(
						Entity.json(seccion),
						String.class//Cadena que devuelve un texto plano
						);
		RequestDispatcher rd=request.getRequestDispatcher("confirmar.jsp");
		request.setAttribute("msg", respuesta);		
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
