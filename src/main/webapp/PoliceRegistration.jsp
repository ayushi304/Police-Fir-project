<html>
<head>
<title>Just Cops</title>

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
	text-align: center;
	float: left;
	width: 300px;
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

input
{
 height:30px;

}

ul li a:hover {
	background-color: green;
}

.active, ul li:hover {
	background: #2bab0d;
}
</style>
</head>
<header class=header>
	<img src="image/police1.jpg" align="left"
		style="width: 10%; height: 95px;">
	<h1 align="center">Police-Registration-Form</h1>
</header>
<body>

	<ul id="dropdown1" class="dropdown-content">
		<li><a href="Home.jsp">Home</a></li>
		<li><a href="Registration.jsp">User-Registration</a></li>
		<li class="active"><a href="PoliceRegistration.jsp">Police-Registration</a></li>
		<li><a href="Help.jsp">Help</a></li>
	</ul>
	<form action="SavePolice" method="get">
		<img src="image/police2.jpg" align="right"
			style="width: 25%; height: 475px;"> <br> <br> <br>
		<br> <br>
		<table align="center" border="0">
			<tr>
				<td>Name</td>
				<td><input type="text" name="pname" placeholder="Enter Name..."/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" placeholder="Enter Email..."/>
				<td>
			</tr>
			<tr>
				<td>New Password</td>
				<td><input type="password" name="password" placeholder="Enter Password..."/></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" name="gender" value="Male" />Male <input
					type="radio" name="gender" value="Female" />Female</td>
			</tr>
			<tr>
				<td>Date of Birth</td>
				<td><input type="date" name="dob" placeholder="Enter DOB..."/></td>
			</tr>
			<tr>
				<td>Mobile Number</td>
				<td><input type="tel" name="mobile" placeholder="Enter Mobile Number..."/></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address" placeholder="Enter Address..." /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value=SignUp> <input
					type="reset" value=Reset></td>
			</tr>
		</table>

	</form>
</body>
</html>