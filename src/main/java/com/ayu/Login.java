package com.ayu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String uid = request.getParameter("name");
		String password = request.getParameter("pass");
		String type = request.getParameter("utype");

		if (type.equals("User")) {
			UserDAO dao = new UserDAO();
			User u = dao.searchById(uid);
			if (uid.equalsIgnoreCase(u.getEmail()))
				if (password.equals(u.getPassword())) {
					// storing the userid to session object
					// step-1 (fetch the session created for this user
					HttpSession session = request.getSession();
					// step-2 (store the data to session)
					session.setAttribute("uid", uid);
					session.setAttribute("password", password);
					session.setAttribute("utype", type);
					response.sendRedirect("UserDASHBOARD.jsp");
				} else {
					response.sendRedirect("Login.jsp");
				}
		} else if (type.equals("Police")) {
			PoliceDAO d = new PoliceDAO();
			Police p = d.searchById(uid);
			if (uid.equalsIgnoreCase(p.getEmail()))
				if (password.equals(p.getPassword())) {
					// storing the userid to session object
					// step-1 (fetch the session created for this user
					HttpSession session = request.getSession();
					// step-2 (store the data to session)
					session.setAttribute("uid", uid);
					session.setAttribute("password", password);
					session.setAttribute("utype", type);
					response.sendRedirect("PoliceDASHBOARD.jsp");
				} else {
					response.sendRedirect("Login.jsp");
				}
		} else if (type.equals("Admin")) {
			if (uid.equals("ayushi@gmail.com"))
				if (password.equals("abcd")) {
					// storing the userid to session object
					// step-1 (fetch the session created for this user
					HttpSession session = request.getSession();
					// step-2 (store the data to session)
					session.setAttribute("uid", uid);
					session.setAttribute("password", password);
					session.setAttribute("utype", type);
					response.sendRedirect("AdminDASHBOARD.jsp");
				}
				
				else {
					response.sendRedirect("Login.jsp");
				}
		} else {

			response.sendRedirect("Login.jsp");
		}
	}
}