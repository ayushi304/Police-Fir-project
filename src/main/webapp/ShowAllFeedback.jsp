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
  Criteria cr=session1.createCriteria(Contact.class);
  List<Contact> flist=cr.list();
%>

	<header class="header">
	
		<div class="header-middle">
			<h1 align="center">FEEDBACK DATA TABLE</h1>
		</div>
	</header>
<form action="RemoveAllFeedback">

<br>
<br>
<table align="center" border="1">
      <tr>
          <th>Email</th>
          <th>Name</th>
          <th>Message</th>
      </tr>
      <%
          for(Contact f:flist)
           {
       	       String email=f.getEmail();
        	   String name=f.getName();
        	   String message=f.getMessage();
       %>
      <tr>
          <td><%=email%></td>
          <td><%=name%></td>
          <td><%=message%></td>
          
          <td align=center><input type=checkbox name=email value=<%=f.getEmail()%>></td>
      </tr>
      <%
           }
      %>
      <tr>
          <td></td><td></td><td></td><td><input type=submit value=DELELT></td>
      </tr>
</table>
</body>
</html>