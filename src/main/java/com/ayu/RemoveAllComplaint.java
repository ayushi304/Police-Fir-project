package com.ayu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RemoveAllComplaint extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s[]=request.getParameterValues("ComplaintId");
		int[] verify2 = new int[s.length];
		for(int i=0;i<s.length;i++){
            verify2[i]=Integer.parseInt(s[i]);
        }

		ComplaintDAO dao=new ComplaintDAO();
		for (int id : verify2) {
			dao.removeById(id);
		}
		
		response.sendRedirect("showcomplaint.jsp");
	}
	}


