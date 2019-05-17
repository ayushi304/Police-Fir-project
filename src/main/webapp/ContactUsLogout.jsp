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
input
{
 height:30px;

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
		<div class="row" align="right">
			<button style = "height:30px; width:70px"><a href="Logout">Logout</a></button>
				</div></header>
	<div align="center">
		<nav>
			<ul>
				<li><a href="HomeLogout.jsp">Home</a></li>
				<li><a href="AboutUsLogout.jsp">About us</a></li>
				
				<li><a href="addComplaintLogout.jsp">Compliant Form</a>
					<ul>
						<li><a href="FIRSummaryLogout.jsp">FIR Summary</a></li>
					</ul></li>
				<li><a href="">Citizen Charter</a>
					<ul>
						<li><a href="WomenRightLogout.jsp">Women's Right</a></li>
						<li><a href="ChildRightLogout.jsp">Children's Right</a></li>
						<li><a href="CyberCrimeLogout.jsp">Cyber Crime</a></li>
					</ul></li>
				<li><a href="EmergencyLogout.jsp">Emergency</a></li>
				<li class="active"> <a href="ContactUsLogout.jsp">Feedback Service</a></li> 
			    <li><a href="HelpLogout.jsp">Help</a></li>
			</ul>
		</nav>
	</div>
<br>
<br>
	
<h2 align="center">--FEEDBACK-FORM--</h2>
<br>
	<form action="SaveContact">
		<label>Email</label> <input type="email" name="email">
		 <label>Name</label>
		<input type="text" name="name"> 
		
		<label>Message</label> 
		<textarea row="5" cols="40" name="message"> </textarea>
		<input type="submit" name="Submit">
	</form>
	<br>
	<img src="image/feedback.jpg" align="right" style="width:40%;height:250px;">
	
</body>
</html>