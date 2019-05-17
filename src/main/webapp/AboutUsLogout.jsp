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
<body>
	<header class="header">
		<div class="header-middle">
		    <img src="image/police1.jpg" align="left" style="width:10%;height:95px;">
			<h1 align="center">Welcome to the Just Cops</h1>
			<div class="row" align="right">
			<button style = "height:30px; width:70px"><a href="Logout">Logout</a></button>
				</div>
       </div>
</header>
<div align="center">   
<nav>
       <ul>
       <li> <a href="HomeLogout.jsp">Home</a></li>
       <li class="active"> <a href="AboutUsLogout.jsp">About us</a></li>  
       <li> <a href="addComplaintLogout.jsp">Compliant Form</a>
             <ul>
                <li> <a href="FIRSummaryLogout.jsp">FIR Summary</a></li>
             </ul>
       </li>      
       <li> <a href="">Citizen Charter</a>
            <ul>
                 <li> <a href="WomenRightLogout.jsp">Women's Right</a></li>
                 <li> <a href="ChildRightLogout.jsp">Children's Right</a></li>
                 <li> <a href="CyberCrimeLogout.jsp">Cyber Crime</a></li>
            </ul>
        </li>    
       <li> <a href="EmergencyLogout.jsp">Emergency</a></li>
       <li> <a href="ContactUsLogout.jsp">Contact us</a></li>
       <li> <a href="HelpLogout.jsp">Help</a></li>
       
      </ul>
    </nav>
    </div>
    <br>
    <br>
    <h2 align="center">--ABOUT-US--</h2>
      <p class="para">
   <img src="image/Ritu.jpg" align="left" style="width: 10%; height: 95px;">
   <br>
	Indore Police has taken a major step for delivering better services
	to the citizens by implementation of Online Police FIR project through which Police
	will maintain all crime and criminal data in online system. Under this
	project, Indore Police is launching a "Portal" which will
	enable citizens to register their complaints online and seek services
	from Police Department.
	<br>
	<br>
	<br>
      <b> Mr. Rituraj Singh</b>
	</p>
    <p class=para>
    The purpose of this website is to provide the platform to
 the citizens to voice their grievances & offer suggestions. 
I hope that this interactive relationship between Police & Public 
will help Thane Rural Police in preventing crime
 & winning confidence & trust of People.
    </p>
    
    <img src="image/648861.jpg" align="right" style="width:100%;height:350px;">
	
 </body>
</html>