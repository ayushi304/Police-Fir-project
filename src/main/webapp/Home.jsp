<html>
<head>
<title>JustCops</title>
<!--  
<meta name="viewport" content="width=device-width, initial-scale=1">
-->
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

.f-bottom {
	background: #e45151;
	height: 100px;
}

.footer {
	background-color: #ffb800;
	position: absolute;
	height: 100px;
	width: 100%;
	line-height: 34px;
	bottom: 0px;
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

	<header class="header">
		<!-- 
<div class="logo">
    <a href=""></a>
</div>
 -->
		<div class="header-middle">
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
				<li><a href="addComplaint.jsp">Compliant Form</a>
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
	
	<img src="image/185489.jpg" align="right" style="width:400px;height:500px;">
	
<!-- Map -->
	<div style="overflow: hidden; width: 700px; position: relative;">
		<iframe width="700" height="440"
			src="https://maps.google.com/maps?width=700&amp;height=440&amp;hl=en&amp;q=indore+(police%20station)&amp;ie=UTF8&amp;t=&amp;z=10&amp;iwloc=B&amp;output=embed"
			frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
		<div
			style="position: absolute; width: 80%; bottom: 10px; left: 0; right: 0; margin-left: auto; margin-right: auto; color: #000; text-align: center;">
			<small style="line-height: 1.8; font-size: 2px; background: #fff;">Powered
				by <a href="https://embedgooglemaps.com/it/">Embedgooglemaps.com/it/</a>
				& <a href="http://merrymobiles.co.uk/">loadonline ph</a>
			</small>
		</div>
		<style>
#gmap_canvas img {
	max-width: none !important;
	background: none !important
}
</style>
	</div>
	<br />
<!--  
	<footer class="footer">
		<div class="f-bottom">
			<div class="wrapper">
				<div class="f-align">
					<span class="copyright">©2019 justcops</span>
					<ul class="f-social">
						<li><a href="https://plus.google.com" class="gplus"
							target="_blank">Google+</a></li>
						<li><a href="https://twitter.com" class="twitter"
							target="_blank">Twitter</a></li>
						<li><a href="https://www.facebook.com" class="facebook"
							target="_blank">Facebook</a></li>
						<li><a href="https://www.instagram.com/?hl=en" class="insta"
							target="_blank">Instagram</a></li>
						<li><a href="https://www.whatsapp.com" class="gplus"
							target="_blank">Whatsapp</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	-->
</body>
</html>