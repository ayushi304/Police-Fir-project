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

ul li a:hover {
	background-color: green;
}

body {
	margin: 0;
	padding: 0;
	background: url(police.webp);
	background-size: cover;
}

.box {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 400px;
	padding: 40px;
	background: rgba(0, 0, 0, .8);
	box-sizing: border-box;
	box-shadow: 0.15px 5px rgba(0, 0, 0, .5);
	border-radius: 10px;
}

.box .inputbox {
	position: relative;
}

.box .inputbox input {
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	margin-bottom: 30px;
	border: none;
	border-bottom: 1px solid #fff;
	outline: none;
	background: transparent;
}

.box .inputbox label {
	position: absolute;
	top: 0;
	left: 0;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	pointer-event: none;
	transition: .5s;
}

.box .inputbox input:focus ~label, .box .inputbox input:valid ~label {
	top: -18px;
	left: 0;
	font-size: 12px;
	color: #03a9f4;
}

.box .input1 label {
	font-size: 12px;
	color: #03a9f4;
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
	<div class="header">
		<div class="header-middle">
			<marquee>
				<h1 align="center">Welcome to the Just Cops</h1>
			</marquee>
		</div>

		<div class="blog-bar">
			<div class="row">
				<div class="notify-text">
					<span>Want to Complaint</span> <a href="Registration.jsp"
						class="blog-register">Register Now</a>
				</div>
			</div>
		</div>
	</div>
	<div align="center">
		<nav>
			<ul>
				<li><a href="Home.jsp">Home</a></li>
				<li><a href="Help.jsp">Help</a></li>
			</ul>
		</nav>
	</div>

	<div class="box">
		<h1 align="center">Login</h1>
		<form action="Login">
			<div class="inputbox">
				<input type="text" name="name" /> <label>User-Id</label>
			</div>
			<div class="inputbox">
				<input type="password" name="pass" /> <label>Password</label>
			</div>
			<div class="input1">
				<label>User-Type </label><select name="utype">
					<option value="" disabled selected>------------Select------------</option>
					<option >Police</option>
					<option>User</option>
					<option >Admin</option>
				</select>
			</div>
			<br> <br> <input type="submit" value=Login>

		</form>
	</div>
</body>
</html>