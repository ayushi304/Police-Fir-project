
<%
	String username = (String) session.getAttribute("uid");
	if (username == null) {
		response.sendRedirect("Home.jsp");
	}
%>

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
	opacity: .8;
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
.para
{
 background-color:lightgrey;
 font-size:18px;
 border:10px solid green;
 padding:15px;
 margin:20px;
}
  .active, ul li:hover
{
  background:#2bab0d;
}
</style>
</head>
<body>
	<header class="header">
		<div class="header-middle">
			<img src="image/police1.jpg" align="left" style="width:10%;height:95px;">
			<h1 align="center">Welcome to the Just Cops</h1>
		</div>
		<h1 align="center">User-Dashboard</h1>
		<div class="row" align="right">
			<button style="height: 30px; width: 70px">
				<a href="Logout">Logout</a>
			</button>
		</div>
	</header>
		<div align="center">
			<nav>
				<ul>
					<li class="active"><a href="HomeLogout.jsp">Home</a></li>
					<li><a href="AboutUsLogout.jsp">About us</a></li>
					<li><a href="addComplaintLogout.jsp">Complaint Form</a>
						<ul>
							<li><a href="FIRSummaryLogout.jsp">FIR Summary</a></li>
						</ul></li>
					<li><a href="">Citizen Charter</a>
						<ul>
							<li><a href="WomenRightLogout.jsp">Women's Right</a></li>
							<li><a href="ChildRightLogout.jsp">Children's Right</a></li>
							<li><a href="CyberCrimeLogout">Cyber Crime</a></li>
						</ul></li>
					<li><a href="EmergencyLogout.jsp">Emergency</a></li>
					<li><a href="ContactUsLogout.jsp">Feedback Service</a></li>
					<li><a href="HelpLogout.jsp">Help</a></li>
				</ul>
			</nav>
		</div>
	<img src="image/185489.jpg" align="right" style="width:400px;height:550px;">
		<br>
		<br>
	 <p class=para>
	 Police Complaint Form 
    If you have witnessed an incident that files under police attribution, 
please use this online police FIR(Just-Cops) form to signalize it.
 The police will review the report and take the appropriate action. 
 <br>
Thank you for being a responsible citizen
	 </p>
<!-- Map -->
	<div class="mapouter">
		<div class="gmap_canvas">
			<iframe width="700" height="400" id="gmap_canvas"
				src="https://maps.google.com/maps?q=indore%20police%20station&t=&z=13&ie=UTF8&iwloc=&output=embed"
				frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
			<a href="https://www.pureblack.de"></a>
		</div>
		</div>
		<style>
.mapouter {
	position: relative;
	text-align: right;
	border: 2px solid black;
	outline: 10px solid green;
	margin: 30px;
	width: 53%;
	height: 63%
}

.gmap_canvas {
	overflow: hidden;
	max-width: none !important;
	background: none !important;
}
</style>

	</body>
</html>