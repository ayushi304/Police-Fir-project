package com.ayu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SavePolice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//read data
				String email=request.getParameter("email");
				String password=request.getParameter("password");
				String pname=request.getParameter("pname");
				String address=request.getParameter("address");
				String mobile=request.getParameter("mobile");
				String dob=request.getParameter("dob");
				String gender=request.getParameter("gender");
				//process data
				Police p=new Police(email,pname,password,address,dob,mobile,gender);
				PoliceDAO pd=new PoliceDAO();
				pd.addPolice(p);
				//response
			    PrintWriter out=response.getWriter();
			    out.println("<html>");
			    out.println("<head>");
			    out.println("<title>");
			    out.println("JUST COPS");
			    out.println("</title>");
			    out.println("</head>");
			    out.println("<body>");
		      	out.println("<h2>Account Created Successfully..</h2>");
		      	out.println("</body>");
		      	out.println("</html>");
		      	out.println("<a href=Home.jsp>Home</a>");
			    out.println("<a href=PoliceRegistration.jsp>Register More</a>");
			
	}
}
