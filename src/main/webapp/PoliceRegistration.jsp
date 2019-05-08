<html>
<head>
<title>Just Cops</title>
</head>
<body>

	<ul id="dropdown1" class="dropdown-content">
		<li><a href="Registration.jsp">User-Registration</a></li>
		<li><a href="PoliceRegistration.jsp">Police-`</a></li>
	</ul>
<h1>Registration for Police</h1>
<form action="SavePolice" method="get">
     <div class="inputbox">
	 <input type="text" name="pname"/>
	<label>Name</label>
	</div>
	<div class="inputbox">
	 <input type="text" name="email"/>
	<label>Email</label>
	</div>
	<div class="inputbox"> 
	<input type="password" name="password"/>
	 	<label>New Password</label>
	 </div>   
	 <div class="">
	 <input type="radio" name="gender" value="Male"/> <label>Male</label>
	<input type="radio" name="gender" value="Female"/> <label>Female</label>
    <label>Gender</label>
    </div>
	<div class="">
	 <input type="date" name="dob"/>
	<label>Date of Birth</label>
	</div>
	<div class="inputbox">
	 <input type="text" name="mobile"/>
	<label>Mobile Number</label>
	</div>
	<div class="inputbox">
	 <input type="text" name="address"/>
	<label>Address</label>
	</div>
	
	
	         <input type="submit" value=SignUp>
	         <input type="reset" value=Reset>
</form>
</body>
</html>