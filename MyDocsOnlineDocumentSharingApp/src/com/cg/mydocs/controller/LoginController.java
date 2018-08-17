package com.cg.mydocs.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MyDocsAppController
 */
@WebServlet("*.controller")
public class LoginController extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		RequestDispatcher requestDispatcher;
		HttpSession session = request.getSession();
		switch (action) {
		case "/login.controller":
			String name = request.getParameter("userName");
			String password = request.getParameter("password");
			if(name.equals("admin") && password.equals("admin")) {
				request.setAttribute("userName", name);
				session.setAttribute("userName","admin");
			    requestDispatcher = request.getRequestDispatcher("Success.jsp");
			}else {
				request.setAttribute("userName", name);
				requestDispatcher = request.getRequestDispatcher("Error.jsp");
			}

			requestDispatcher.forward(request, response);
			break;

		case "/logout.controller" :
			session.invalidate();
			requestDispatcher = request.getRequestDispatcher("Login.jsp");
			requestDispatcher.forward(request, response);
			break;
		default:
			break;
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);		
	}

}
