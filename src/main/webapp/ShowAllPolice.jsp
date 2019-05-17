<%@page import="com.ayu.*,org.hibernate.Session,java.util.List,org.hibernate.Criteria"%>

<html>
<head>
<title>Just Cops</title>
</head>
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
	position:relative;
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
 width: 90%;
}
td
{
 text-align: center;
}

</style>
<body>
<%
  Session session1=Data.getSF().openSession();
  Criteria cr=session1.createCriteria(Police.class);
  List<Police> flist=cr.list();
%>

	<header class="header">
			<div class="header-middle">
				<img src="image/police1.jpg" align="left" style="width:10%;height:95px;">
			<h1 align="center">POLICE DATA TABLE</h1>
		</div>
		<div class="row" align="right">
			<button style = "height:30px; width:70px"><a href="Logout">Logout</a></button>
				</div>
	</header>
<form action="RemoveAllPolice">
<div align="center">   
<nav>
       <ul>
       <li> <a href="HomeLogout.jsp">Home</a></li>
       <li> <a href="AboutUsLogout.jsp">About us</a></li>  
       <li> <a href="addComplaintLogout.jsp">Compliant Form</a>
             <ul>
                <li> <a href="showcomplaint.jsp">Show All Cmplaint</a></li>
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
       <li> <a href="ContactUsLogout.jsp">Feedback Services</a>  </li>
       <li class="active"> <a href="ShowAllPolice.jsp">Show All Police</a></li>  
       <li> <a href="HelpLogout.jsp">Help</a></li>
       
      </ul>
    </nav>
    </div>
<br>
<br>
<table align="center" border="1">
      <tr>
          <th>Name</th>
          <th>Email</th>
          <th>Password</th>
          <th>Gender</th>
          <th>Date of Birth</th>
          <th>Mobile Number</th>
          <th>Address</th>    
      
      </tr>
      <%
           for(Police f:flist)
           {
        	   String name=f.getPname();
        	   String email=f.getEmail();
        	   String password=f.getPassword();
        	   String gender=f.getGender();
        	   String dob=f.getDob();
        	   String mobile=f.getMobile();
        	   String address=f.getAddress();
       %>
      <tr>
          <td><%=name%></td>
          <td><%=email%></td>
          <td><%=password%></td>    
          <td><%=gender%></td>
          <td><%=dob%></td>
          <td><%=mobile%></td>
          <td><%=address%></td>
          <td align=center><input type=checkbox name=email value=<%=f.getEmail()%>></td>
      </tr>
      <%
           }
      %>
      <tr>
          <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td><input type=submit value=DELELT></td>
      </tr>
</table>
</body>
</html>