package com.procument.servelets.login;

import java.io.IOException;
import java.net.HttpCookie;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.SessionCookieConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.procument.models.User;
import com.procument.services.UserServicesImpl;
import com.procument.services.UserServicesInt;

/**
 * Servlet implementation class Login
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		session.removeAttribute("loginName");
		session.removeAttribute("position");
		session.invalidate();

		RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");
		
		UserServicesInt userServicesInt = new UserServicesImpl();
		
		User user = userServicesInt.getUser(username, password);
		HttpSession session = request.getSession();
		
		
		if(user != null) {
				session.setAttribute("user", user);
				session.setAttribute("loginName", user.getUsername());
			
			if( user.getPosition() == 1) {
				
				session.setAttribute("position", "Site Manager");
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
				dispatcher.forward(request, response);
			}
			else if( user.getPosition() == 2) {
				
				session.setAttribute("position", "Account Staff");
				RequestDispatcher dispatcher = request.getRequestDispatcher("accounting_Staff_home.jsp");
				dispatcher.forward(request, response);
			}
			else if( user.getPosition() == 3) {
				
				session.setAttribute("position", "Senior Manager");
				RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
				dispatcher.forward(request, response);
			}
		}
		else{
			String error = "Invalide user";
			
			request.setAttribute("error", error);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
		
//		doGet(request, response);
	}

}
