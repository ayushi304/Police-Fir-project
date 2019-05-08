package com.ayu;

import java.io.IOException;






import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SaveWanted extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//read data
				String wid=request.getParameter("wid");
				String name=request.getParameter("name");
				String fname=request.getParameter("fname");
				String height=request.getParameter("height");
				String weight=request.getParameter("weight");
				String reward=request.getParameter("reward");
				String image=request.getParameter("image");	
				//process data
				Wanted w=new Wanted(wid,name,fname,height,weight,reward,image);
	            WantedDAO wd=new WantedDAO();
	            wd.addWanted(w);
	}

}
