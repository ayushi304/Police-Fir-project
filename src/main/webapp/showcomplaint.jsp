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

ul {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul li {
	float: left;
	width: 150px;
	height: 40px;
	background-color: black;
	line-height: 40px;
	text-algin: center;
	font-size: 18px;
	margin-right: 2px;
}

ul li a {
	text-decoration: none;
	color: white;
	display: block;
}

ul li ul li {
    position:relative;
	display: none;
}

ul li a:hover {
	background-color: green;
}

ul li:hover ul li {
	display: block;
}

.active, ul li:hover {
	background: #2bab0d;
}

table {
	width: 100%;
}

td {
	text-align: center;
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
		<img src="image/police1.jpg" align="left"
			style="width: 10%; height: 95px;">
		<h1 align="center">Complaint Detail Table</h1>
		<div class="row" align="right">
			<button style="height: 30px; width: 70px">
				<a href="Logout">Logout</a>
			</button>
		</div>
	</header>
	<div align="center">
		<nav>
			<ul>
				<li><a href="HomeLogout.jsp">Home</a></li>
				<li><a href="AboutUsLogout.jsp">About us</a></li>
				<li><a href="addComplaintLogout.jsp">Compliant Form</a>
					<ul>
						<li class="active"><a href="showcomplaint.jsp">Show All
								Cmplaint</a></li>
						<li><a href="FIRSummaryLogout.jsp">FIR Summary</a></li>
					</ul></li>
				<li><a href="">Citizen Charter</a>
					<ul>
						<li><a href="WomenRightLogout.jsp">Women's Right</a></li>
						<li><a href="ChildRightLogout.jsp">Children's Right</a></li>
						<li><a href="CyberCrimeLogout.jsp">Cyber Crime</a></li>
					</ul></li>
				<li><a href="EmergencyLogout.jsp">Emergency</a></li>
				<li><a href="ContactUsLogout.jsp">Feedback Services</a>
				<li><a href="HelpLogout.jsp">Help</a></li>

			</ul>
		</nav>
	</div>
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
				<th>file</th>
				<th>State</th>
				<th>pincode</th>
				<th>Delete</th>
		<!--  		<th>update</th>   -->

			</tr>
			<%
				for (ComplaintForm cf : clist) {
					int ComplaintId = cf.getComplaintId();
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
				<td><%=City%></td>
				<td><img width="100" height="100"
					src="ImageLoader?ComplaintId=<%=ComplaintId%>" /></td>
				<td><%=State%></td>
				<td><%=pincode%></td>

				<td align=center><input type=checkbox name=ComplaintId
					value=<%=cf.getComplaintId()%>></td>
					</tr>
				<!--
			<tr>
  				<form action="UpdateAllComplaint">
					<td align=center><input type=checkbox name=update
						value=<%=cf.getComplaintId()%>></td>
				</form>
			</tr>
			-->
				<%
					}
				%>
			
			<tr>
				<!--  	<td><input type="submit" name="update"></td>  -->
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><input type=submit value=DELELT></td>
			</tr>

		</table>
	</form>
</body>
</html>
