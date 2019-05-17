<html>
<head>
<title>JustCops</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}


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

.active, ul li:hover
{
  background:#2bab0d;
}


.blog-bar {
	position: fixed;
	padding: 4px 0;
	top: 0;
	background: #D2691E;
	border-bottom: 1px solid #cdcdcd;
	width: 100%;
}

.blog-bar .notify-text {
	text-align: center;
	font-size: 20px;
	color: #fff;
	font-weight: 600;
}
.para
{
 background-color:lightgrey;
 font-size:18px;
 border:10px solid green;
 padding:15px;
 margin:20px;
}

</style>
</head>
	<header class="header">
		<div class="header-middle">
			<img src="image/police1.jpg" align="left" style="width:10%;height:95px;">
			<h1 align="center">Welcome to the Just Cops</h1>
		</div>

		<div class="blog-bar">
			<div class="row">
				<div class="notify-text">
					<span>Want to Complaint</span> <a href="Registration.jsp"
						class="blog-register">Register Now</a>
				</div>
			</div>
		</div>
		<div class="row" align="right">
				<button style = "height:30px; width:70px"><a href="Login.jsp">Login</a></button>
			<button style = "height:30px; width:70px"><a href="Registration.jsp">Sign-Up</a></button>
	
		</div>
	</header>

<body>

	
	<div align="center">
		<nav>
			<ul>
				<li class="active"><a href="Home.jsp">Home</a></li>
				<li><a href="AboutUs.jsp">About us</a></li>
				<li><a href="HomeLogin.jsp">Compliant Form</a>
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
				<li> <a href="ContactUs.jsp">Feedback Service</a></li>
				<li><a href="Help.jsp">Help</a></li>
			</ul>
		</nav>
	</div>
	
	<img src="image/185489.jpg" align="right" style="width:400px;height:550px;">
    <br>
	<br>
	<br><div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Please first login for Complaining. Note that Complaint Form is sensitive.</strong>
</div>
	
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