<%@page
	import="com.ayu.*,org.hibernate.Session,java.util.List,org.hibernate.Criteria"%>

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

table {
	width: 50%;
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
	position: relative;
	display: none;
}

ul li a:hover {
	background-color: green;
}

ul li:hover ul li {
	display: block;
}

input {
	height: 30px;
}

.active, ul li:hover {
	background: #2bab0d;
}
</style>
</head>
<header class=header>
	<img src="image/police1.jpg" align="left"
		style="width: 10%; height: 95px;">
	<h1 align="center">Complaint-Form</h1>
	<div class="row" align="right">
			<button style = "height:30px; width:70px"><a href="Logout">Logout</a></button>
				</div>	</div>
</header>
<body>
	<div align="center">
		<nav>
			<ul>
				<li><a href="Home.jsp">Home</a></li>
				<li><a href="AboutUs.jsp">About us</a></li>
				<li class="active"><a href="addComplaint.jsp">Compliant
						Form</a>
					<ul>
						<li><a href="FIRSummary.jsp">FIR Summary</a></li>
					</ul></li>
				<li><a href="">Citizen Charter</a>
					<ul>
						<li><a href="WomenRight.jsp">Women's Right</a></li>
						<li><a href="ChildRight.jsp">Children's Right</a></li>
						<li><a href="CyberCrime.jsp">Cyber Crime</a></li>
					</ul></li>
				<li><a href="Emergency.jsp">Emergency</a></li>
				<li><a href="ContactUs.jsp">Feedback Service</a></li>
				<li><a href="Help.jsp">Help</a></li>

			</ul>
		</nav>
	</div>
	<br>
	<br>
	<form action="SaveComplaint" method="post"
		enctype="multipart/form-data">
		<br> 
		<img src="image/11.jpg" align="right"
			style="width: 20%; height: 500px;">
		<table align="center" border="">
			<tr>
				<td>Police Station Name</td>
				<td><select name="StationName">
						<option value="0">--Select Police Station--</option>
						<option>Bhawarkua,Indore</option>
						<option>Plasia,Indore</option>
						<option>Juni Indore</option>
						<option>MG Road,Indore</option>
						<option>Banganga,Indore</option>
						<option>Sayogita Ganj,Indore</option>
						<option>Vijaynagar,indore</option>
						<option>Khajrana,Indore</option>
						<option>Aerodrum,Indore</option>
						<option>Tukoganj,Indore</option>
						<option>Malharganj,Indore</option>
						<option>Sarafa,Indore</option>
						<option>Rajendra Nagar,Indore</option>
						<option>Central Kotwali,Indore</option>
						<option>MIG,Indore</option>
						<option>Pandrinath,Indore</option>
						<option>Office of Superintendent,Indore</option>
				</select></td>
			</tr>
			<br>
			<tr>
				<td>Complaint Type</td>
				<td><input type="text" name="Complaintype"
					placeholder="Enter Complaint Type..."></td>
			</tr>
			<tr>
				<td>Date Of Incident</td>
				<td><input type="date" name="DateOfIncident"><br></td>
			</tr>

			<tr>
				<td>Time Of Incident</td>
				<td><input type="time" name="TimeOfIncident"><br></td>
			</tr>
			<tr>
				<td>District</td>
				<td><input type="text" name="District"
					placeholder="Enter District..."><br></td>
			</tr>
			<tr>
				<td>Write Complaint</td>
				<td><textarea row="5" cols="50" name="WriteComplain">
		</textarea></td>
			<tr>
			<tr>
				<td>Place Of Occurence</td>
				<td><input type="text" name="PlaceOfOccurence"
					placeholder="Enter Place of Occurence..." /></td>
			</tr>
		</table>

		<table align="center" border="">
			<h2 align="center">Personal-Detail</h2>
			<tr>
				<td>Name</td>
				<td><input type="text" name="Name" placeholder="Enter Name..." /><br></td>
			</tr>
			<tr>
				<td>Contact Number</td>
				<td><input type="text" name="mob"
					placeholder="Enter Contact..." /><br></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="Email"
					placeholder="Enter Email..." /><br></td>
			</tr>
			<tr>
				<td>Home Number</td>
				<td><input type="text" name="hno"
					placeholder="Enter Home no..." /><br></td>
			</tr>

			<tr>
				<td>City</td>
				<td><input type="text" name="City" placeholder="Enter City..." /></td>
			</tr>
			<tr>
				<td>Image</td>
				<td><input type="file" name="image" /><br></td>
			</tr>
			<tr>
				<td>State</td>
				<td><input type="text" name="State" value="Madhya-pradesh"><br></td>
			</tr>
			<tr>
				<td>Pin-Code</td>
				<td><input type="text" name="pincode"
					placeholder="Enter Pin-code..." /><br></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Submit" /> <input type="reset"
					value="Reset" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
