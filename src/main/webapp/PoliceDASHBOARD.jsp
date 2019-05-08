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
.header
{
  background-color: #44318D;
  padding-top:20px;
  padding-bottom:20px;
  border-bottom: 1px solid #201c29;
  animation: none;
}
h1
{
  color: white;
}
 ul
 {
  margin:0px;
  padding:0px;
 list-style:none;
 }
 ul li
 {
   float:left;
   width:150px;
   height:40px;
   background-color:black;
   opacity:.8;
   line-height:40px;
   text-algin:center;
   font-size:18px;
   margin-right:2px;
 }
ul li a
{
   text-decoration:none;
   color:white;
   display:block;
   
}
ul li ul li
{
   display:none;
}

ul li a:hover 
{
   background-color:green;
}

ul li:hover ul li
{
   display:block;
}

.f-bottom {
    background: #e45151;
    height: 80px;
    }

.footer
{
  background-color: #ffb800;
  position:absolute;
  height:100px; 
  width :100%;
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
<h1 align="center">Police-Dashboard</h1>
<div class="blog-bar">
  <div class="row">
  <div class="notify-text">
  <span>Want to Complaint</span> <a href="" class="blog-register">Register Now</a>
  </div>
  </div>
</div>
<button style = "height:30px; width:70px"><a href="Logout">Logout</a></button>
</header> 

<div align="center">   
<nav>
       <ul>
       <li> <a href="Home.jsp">Home</a></li>
       <li> <a href="AboutUs.jsp">About us</a></li>  
       <li> <a href="addComplaint.jsp">Compliant Form</a>
             <ul>
                <li> <a href="showcomplaint.jsp">Show All Cmplaint</a></li>
                <li> <a href="FIRSummary.jsp">FIR Summary</a></li>
             </ul>
       </li>      
       <li> <a href="">Citizen Charter</a>
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


</body>
</html>