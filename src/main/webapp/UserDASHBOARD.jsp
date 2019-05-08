
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
	display: none;
}

ul li a:hover {
	background-color: green;
}

ul li:hover ul li {
	display: block;
}

.f-bottom {
	background: #e45151;
	height: 80px;
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
<body>
	<header class="header">
		<!-- 
<div class="logo">
    <a href=""></a>
</div>
 -->
		<div class="header-middle">
			<h1 align="center">Welcome to the Just Cops</h1>
		</div>
		<h1 align="center">User-Dashboard</h1>

		<div class="blog-bar">
			<div class="row">
				<div class="notify-text">
					<span>Want to Complaint</span> <a href="" class="blog-register">Register
						Now</a>
				</div>
			</div>
		</div>
		<div class="search">
			<div class="">
				<form method="get" class="search-form" action="">
					<label class="screen-text" for="search-input">Search for:</label> <input
						type="search" name="search" class="search-field"
						placeholder="search here.."> <input type="hidden"
						name="orderby" value="relevance"> <input type="hidden"
						name="post_type" value="post,page,guide">
					<button type="submit" class="button-invisible">
						<span class="screen-text">Search</span>
						<svg class="icon-search" width="26px" height="26px">
  <use xlink:href="#icon-search"></use>
    </svg>
					</button>
				</form>
			</div>
		</div>
		<div class="row" align="right">
			<button style="height: 30px; width: 70px">
				<a href="Logout">Logout</a>
			</button>
		</div>
	</header>
	<center>
		<div>
			<nav>
				<ul>
					<li><a href="">Home</a></li>
					<li><a href="">About us</a></li>
					<li><a href="">Services</a>
						<ul>
							<li><a href="">Feedback Services</a></li>
							<li><a href="">Missing People</a></li>
							<li><a href="">Most Wanted People</a></li>
						</ul></li>
					<li><a href="">Compliant Form</a>
						<ul>
							<li><a href="">FIR Summary</a></li>
						</ul></li>
					<li><a href="">Citizen Charter</a>
						<ul>
							<li><a href="">Women's Right</a></li>
							<li><a href="">Children's Right</a></li>
							<li><a href="">Cyber Crime</a></li>
						</ul></li>
					<li><a href="">Emergency</a></li>
					<li><a href="">Contact us</a></li>
					<li><a href="">Help</a></li>

				</ul>
			</nav>
		</div>
	</center>
	<footer class="footer">
		<div class="f-bottom">
			<div class="wrapper">
				<div class="f-align">
					<span class="copyright">©2019 CSS</span>
					<ul class="f-social">
						<li><a href="https://twitter.com/csswinner" class="twitter"
							target="_blank"></a></li>
						<li><a href="https://www.facebook.com/csswinners"
							class="facebook" target="_blank"></a></li>
						<li><a href="https://www.pinterest.com/csswinner"
							class="pinterest" target="_blank"></a></li>
						<li><a href="https://plus.google.com/+Csswinner"
							class="gplus" target="_blank"></a></li>
						<li><a href="https://feeds.feedburner.com/csswinner"
							class="feed" target="_blank"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>