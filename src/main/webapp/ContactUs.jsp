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
input
{
 height:30px;

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
</style>
</head>
<body>
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
	<div align="center">
		<nav>
			<ul>
				<li><a href="Home.jsp">Home</a></li>
				<li><a href="AboutUs.jsp">About us</a></li>
				<li><a href="FIRSummary.jsp">FIR Summary</a></li>
				<li><a href="">Citizen Charter</a>
					<ul>
						<li><a href="WomenRight.jsp">Women's Right</a></li>
						<li><a href="ChildRight.jsp">Children's Right</a></li>
						<li><a href="CyberCrime.jsp">Cyber Crime</a></li>
					</ul></li>
				<li><a href="Emergency.jsp">Emergency</a></li>
				<li class="active"> <a href="ContactUs.jsp">Feedback Service</a></li> 
			    <li><a href="Help.jsp">Help</a></li>
			</ul>
		</nav>
	</div>
<br>
<br>
	
<h2 align="center">--FEEDBACK-FORM--</h2>
<br>
	<form action="SaveContact">
		<label>Email</label> <input type="email" name="email" placeholder="Enter Email..."> <label>Name</label>
		<input type="text" name="name" placeholder="Enter Name...">
		<label>Message</label> 
		<textarea row="5" cols="40" name="message" > </textarea>
 <input type="submit" name="Submit">
	</form>
	<br>
	<img src="image/feedback.jpg" align="right" style="width:40%;height:250px;">
	
</body>
</html>