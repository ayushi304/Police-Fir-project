package com.ayu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SaveMissing extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//read data
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String fname=request.getParameter("fname");
		String height=request.getParameter("height");
		String weight=request.getParameter("weight");
		String reward=request.getParameter("reward");
		String image=request.getParameter("image");	
		//process data
		MissingPerson m=new MissingPerson(id,name,fname,height,weight,reward,image);
        MissingDAO md=new MissingDAO();
        md.addMissingPerson(m);
        
	}

}
