package com.ayu;

import java.io.IOException;
import java.sql.Blob;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

public class SaveComplaint extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// read the data
		String StationName = "";
		String Complaintype = "";
		String DateOfIncident = "";
		String TimeOfIncident = "";
		String District = "";
		String WriteComplain = "";
		String PlaceOfOccurence = "";
		String Name = "";
		String mob = "";
		String Email = "";
		String hno = "";
		String City = "";
		String State = "";
		String pincode = "";
		byte b[] = null;
		Blob b1 = null;
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		List<FileItem> items = null;
		try {
			items = upload.parseRequest(new ServletRequestContext(request));
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		
		for (FileItem item : items) {
			
			String n = item.getFieldName();
		
			if (n.equals("StationName")) {
				StationName = item.getString();
			//	response.getWriter().println("Name "+StationName);
				
			} else if (n.equals("Complaintype")) {
				Complaintype = item.getString();
			} else if (n.equals("DateOfIncident")) {
				DateOfIncident = item.getString();
			} else if (n.equals("TimeOfIncident")) {
				TimeOfIncident = item.getString();
			} else if (n.equals("District")) {
				District = item.getString();
			} else if (n.equals("WriteComplain")) {
				WriteComplain = item.getString();
			} else if (n.equals("PlaceOfOccurence")) {
				PlaceOfOccurence = item.getString();
			} else if (n.equals("Name")) {
				Name = item.getString();
			} else if (n.equals("mob")) {
				mob = item.getString();
			} else if (n.equals("Email")) {
				Email = item.getString();
			} else if (n.equals("hno")) {
				hno = item.getString();
			} else if (n.equals("City")) {
				City = item.getString();
			} else if (n.equals("image")) {
				b = item.get();
			} else if (n.equals("State")) {
				State = item.getString();
			} else if (n.equals("pincode")) {
				pincode = item.getString();
			}

			try {
				b1 = new SerialBlob(b);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		ComplaintForm cf = new ComplaintForm(StationName, Complaintype,
				DateOfIncident, TimeOfIncident, District, WriteComplain,
				PlaceOfOccurence, Name, mob, Email, hno, City, b1, State,
				pincode);

		ComplaintDAO cd = new ComplaintDAO();
		cd.addComplaint(cf);
		//response.getWriter().println(cf);
		response.sendRedirect("SucessComplaint.jsp");
		/*
		 * PrintWriter out = response.getWriter(); out.println("<html>");
		 * out.println("<body>"); out.println("<h3>Complain-Form</h3>");
		 * out.println("<h4>Details-stored</h4>");
		 * out.println("<a href=addcomplain.jsp>add-more</a><br>");
		 * out.println("<a href= index.jsp>Home</a><br>");
		 * out.println("</body>"); out.println("</html>"); out.close();
		 */}
}