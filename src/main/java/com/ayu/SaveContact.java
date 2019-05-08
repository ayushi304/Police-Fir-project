package com.ayu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class SaveContact extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		        //read the data
				String name=request.getParameter("name");
				String email=request.getParameter("email");
				String message=request.getParameter("message");

				Contact c=new Contact(email,name,message);
				ContactDAO dao=new ContactDAO();
				dao.addContact(c);
				
				//response.sendRedirect("ContactUs.jsp");
				
				 //response
			    PrintWriter out=response.getWriter();
			    out.println("<html>");
			    out.println("<head>");
			    out.println("<title>");
			    out.println("JUST COPS");
			    out.println("</title>");
			    out.println("</head>");
			    out.println("<body>");
		      	out.println("<h2>Successfully..</h2>");
		      	out.println("</body>");
		      	out.println("</html>");
		      	out.println("<a href=home.jsp>Home</a>");
			    out.println("<a href=ContactUs.jsp>More</a>");
			
	}

}
