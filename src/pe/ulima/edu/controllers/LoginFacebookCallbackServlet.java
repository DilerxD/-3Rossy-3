package pe.ulima.edu.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import facebook4j.Account;
import facebook4j.Facebook;
import facebook4j.FacebookException;
import facebook4j.FacebookFactory;
import pe.ulima.edu.controllers.dto.LoginFacebookResponse;

@WebServlet("/login-facebook-callback")
public class LoginFacebookCallbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginFacebookCallbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        //response.sendRedirect("sesion.jsp");
    	
        /*try {
            Facebook facebook = (Facebook) request.getSession().getAttribute("facebook");
            
            String oauthCode = request.getParameter("code");
            facebook.getOAuthAccessToken(oauthCode);
            response.sendRedirect("sesion.jsp");
        } catch (FacebookException ex) {
            Logger.getLogger(LoginFacebookCallbackServlet.class.getName()).log(Level.SEVERE, null, ex);
        }*/
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Facebook facebook = new FacebookFactory().getInstance();
        facebook.setOAuthAppId("274075496275665", "81c316f26b445eeb15734fdf892f7645");
        
        request.getSession().setAttribute("facebook", facebook);
        StringBuffer callbackURL = request.getRequestURL();
        int index = callbackURL.lastIndexOf("/");
        callbackURL.replace(index, callbackURL.length(), "").append("/sesion.jsp");
        response.sendRedirect(facebook.getOAuthAuthorizationURL(callbackURL.toString()));
	}

}
