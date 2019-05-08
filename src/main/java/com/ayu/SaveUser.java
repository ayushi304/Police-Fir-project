package com.ayu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SaveUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    //read data
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		int mobile=Integer.parseInt(request.getParameter("mobile"));
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		//process data
		User u=new User(email,password,name,address,dob,mobile,gender);
		UserDAO ud=new UserDAO();
		ud.addUser(u);
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
      	out.println("<a href=home.jsp>Home</a>");
	    out.println("<a href=Registration.jsp>Register More</a>");
	}
}