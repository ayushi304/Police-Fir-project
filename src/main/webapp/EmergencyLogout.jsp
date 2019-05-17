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
table
{
 width:50%;
 text-align:center;
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
				</div>
				</header>
<div align="center">   
<nav>
       <ul>
       <li> <a href="HomeLogout.jsp">Home</a></li>
       <li> <a href="AboutUsLogout.jsp">About us</a></li>  
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
       <li class="active"> <a href="EmergencyLogout.jsp">Emergency</a></li>
       <li> <a href="ContactUsLogout.jsp">Feedback Service</a></li>
       <li> <a href="HelpLogout.jsp">Help</a></li>
       
      </ul>
    </nav>
    </div>
    <br>
    <br>
    <br>
    <h2 align="center">--EMERGENCY-NUMBER--</h2>
    <img src="image/image10.jpg" align="right" style="width:30%;height:250px;">
<table border="" align="center">
         <tr>
            <td>POLICE</td>
            <td>100</td>
          </tr>
          <tr>
            <td>FIRE STATION</td>
            <td>101</td>
          </tr>
          <tr>
            <td>AMBULANCE</td>
            <td>102, 108</td>
          </tr>
          <tr>
            <td>STATE WOMEN HELPLINE</td>
            <td>1090</td>
          </tr>
          <tr>
            <td>INDORE WOMEN HELPLINE</td>
            <td>1091</td>
          </tr>
          <tr>
            <td>CHILD HELPLINE</td>
            <td>1098</td>
          </tr>
        <tr>
            <td>C.M. HELPLINE</td>
            <td>181</td>
          </tr>
     </table>

</body>
</html>