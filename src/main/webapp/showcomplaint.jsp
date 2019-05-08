<%@page 
	import="com.ayu.*,java.sql.Blob,org.hibernate.Session,java.util.List,org.hibernate.Criteria"%>
<html>
<head>
<title>JustCops</title>
<style>

.header {
	background-color: #44318D;
	padding-top: 20px;
	padding-bottom: 20px;
	border-bottom: 1px solid #201c29;
	animation: none;
}

h1 {
	color: white;
}
table
{
 width:100%;
}
td
{
 text-align:center;
}

</style>
<body>
	<%
		Session session1 = Data.getSF().openSession();
		//fetching using QBC
		Criteria cr = session1.createCriteria(ComplaintForm.class);
		List<ComplaintForm> clist = cr.list();
	%>
<header class=header>	
	<h1 align="center">Complaint Table</h1>
</header>
<br>
<br>
	<form action=RemoveAllComplaint method="post">
		<table border="1">
			<tr>
				<th>ComplaintId</th>
				<th>StationName</th>
				<th>Complaintype</th>
				<th>DateOfIncident</th>
				<th>TimeOfIncident</th>
				<th>District</th>
				<th>WriteComplain</th>
				<th>PlaceOfOccurence</th>
				<th>Name</th>
				<th>mob</th>
				<th>Email</th>
				<th>hno</th>
				<th>City</th>
				<th>image</th>
				<th>State</th>
				<th>pincode</th>
				<th>Delete</th>
				<th>update</th>
				
			</tr>
			<%
				for (ComplaintForm cf : clist) {
					String ComplaintId = cf.getComplaintId();
					String StationName = cf.getStationName();
					String Complaintype = cf.getComplaintype();
					String DateOfIncident = cf.getDateOfIncident();
					String TimeOfIncident = cf.getTimeOfIncident();
					String District = cf.getDistrict();
					String WriteComplain = cf.getWriteComplain();
					String PlaceOfOccurence = cf.getPlaceOfOccurence();
					String Name = cf.getName();
					String mob = cf.getMob();
					String Email = cf.getEmail();
					String hno = cf.getHno();
					String City = cf.getCity();
					Blob image = cf.getImage();
					String State = cf.getState();
					String pincode = cf.getPincode();
				
			%>
			<tr>
				<td><%=ComplaintId%></td>
				<td><%=StationName%></td>
				<td><%=Complaintype%></td>
				<td><%=DateOfIncident%></td>
				<td><%=TimeOfIncident%></td>
				<td><%=District%></td>
				<td><%=WriteComplain%></td>
				<td><%=PlaceOfOccurence%></td>
				<td><%=Name%></td>
				<td><%=mob%></td>
				<td><%=Email%></td>
				<td><%=hno%></td>
				<td><%=City%> </td>
				<td><img width="100" height="100"src="ImageLoader?ComplaintId=<%=ComplaintId%>" /></td>
				<td><%=State%></td>
				<td><%=pincode%> </td>
				
				 <td align=center><input type=checkbox name=ComplaintId value=<%=cf.getComplaintId()%>></td>
			<tr>	<form action="UpdateAllComplaint">
				 <td align=center><input type=checkbox name=update value=<%=cf.getComplaintId()%>></td>
				</form>
			</tr>	
			</tr>
			<%
				}
			%>
			 <tr>
			 <td><input type="submit" name="update"></td>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>><td><input type=submit value=DELELT></td>
      </tr>
			
		</table>
	</form>
</body>
</html>
		