package com.ayu;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
public class UpdateAllComplaint extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String ComplaintId= request.getParameter("update");
			Session sf = Data.getSF().openSession();
			ComplaintForm ComplaintId1 = sf.get(ComplaintForm.class, ComplaintId);
			HttpSession session = request.getSession();
			session.setAttribute("ComplaintForm",ComplaintId1);
			response.sendRedirect("UpdateComplaint.jsp");

	}

}
