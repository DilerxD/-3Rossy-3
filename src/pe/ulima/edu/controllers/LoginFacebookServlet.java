package pe.ulima.edu.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import facebook4j.Facebook;
import facebook4j.FacebookFactory;
import pe.ulima.edu.controllers.dto.LoginFacebookResponse;

/**
 * Servlet implementation class LoginFacebookServlet
 */
@WebServlet("/LoginFacebookServlet")
public class LoginFacebookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginFacebookServlet() {
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
		// TODO Auto-generated method stub
		Facebook facebook = new FacebookFactory().getInstance();
        facebook.setOAuthAppId("29901234339", "c2f3fc2a246a16b4c8d1cf3d40ff6138");
        request.getSession().setAttribute("facebook", facebook);
        
        StringBuffer callbackURL = request.getRequestURL();
        int index = callbackURL.lastIndexOf("/");
        callbackURL.replace(index, 
                callbackURL.length(), "").append("/login-facebook-callback");
        
        LoginFacebookResponse loginFacebookResponse 
                = new LoginFacebookResponse(
                        "OK", 
                        "", 
                        facebook.getOAuthAuthorizationURL(callbackURL.toString())
                );
        
        /*response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print(new Gson().toJson(loginFacebookResponse));*/
        RequestDispatcher rd = request.getRequestDispatcher("login-facebook-callback");
        rd.forward(request,response);

    }
	}


