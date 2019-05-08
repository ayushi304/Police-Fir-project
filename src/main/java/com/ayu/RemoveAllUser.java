package com.ayu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RemoveAllUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
    String s[]=request.getParameterValues("email");
		
		UserDAO dao=new UserDAO();
		
		for(String email:s)
		{
			dao.removeByid(email);
		}
		response.sendRedirect("ShowAllUser.jsp");
	}
	}

