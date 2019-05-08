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
			<h1 align="center">POLICE DATA TABLE</h1>
		</div>
	</header>
<form action="RemoveAllPolice">

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