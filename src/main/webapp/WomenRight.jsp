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
       <li> <a href="Home.jsp">Home</a></li>
       <li> <a href="AboutUs.jsp">About us</a></li>  
       <li> <a href="addComplaint.jsp">Compliant Form</a>
             <ul>
                <li> <a href="FIRSummary.jsp">FIR Summary</a></li>
             </ul>
       </li>      
       <li class="active"> <a href="">Citizen Charter</a>
            <ul>
                 <li> <a href="WomenRight.jsp">Women's Right</a></li>
                 <li> <a href="ChildRight.jsp">Children's Right</a></li>
                 <li> <a href="CyberCrime.jsp">Cyber Crime</a></li>
            </ul>
        </li>    
       <li> <a href="Emergency.jsp">Emergency</a></li>
       <li> <a href="ContactUs.jsp">Feedback Service</a></li>
       <li> <a href="Help.jsp">Help</a></li>
       
      </ul>
    </nav>
    </div>
    <br>
    <br>
    <h2 align="center">--WOMEN'S-RIGHT--</h2>
    <p style=font-size:20px;>
    1. Women have a right to zero FIR<br>
    An FIR that can be filed at any police station irrespective of the location where the incident occurred or a specific jurisdiction it comes under, the Zero FIR can later be moved to the Police Station in whose jurisdiction the case falls under.
    <br>
    <br>
    2. Women have the right against indecent representation<br>
    Depiction of a woman's figure (her form or any body part) in any manner that is indecent, derogatory, or is likely to deprave, corrupt or injure the public morality or morals, is a punishable offence
    <br>
    <br>
    3. Women have the right to register virtual complaints<br>
    The law gives women the provision for filing virtual complaints via e-mail, or writing her complaint and sending it to a police station from a registered postal address.
Further, the SHO sends a police constable to her place to record her complaint.
This is in case a woman is not in a position to physically go to a police station and file a complaint.
    <br>
    <br>
    4. Women have the right to get free legal aid<br>
Under the Legal Services Authorities Act, female rape victims have the right to get free legal aid or help from the Legal Services Authority who has to arrange a lawyer for her.
<br>
<br>
5. Women have right not to be arrested at night<br>
Unless there is an exceptional case on the orders of a first class magistrate, a woman cannot be arrested after sunset and before sunset.
In addition, the law also states that the police can interrogate a woman at her residence only in the presence of a woman constable and family members or friends.
    <br>
    <br>
    </p>
  
  </body>
</html>