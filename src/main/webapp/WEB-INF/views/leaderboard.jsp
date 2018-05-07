
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Leaderboard</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" media="screen" href="https://fontlibrary.org/face/8bit-wonder" type="text/css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="shortcut icon" type="image/png" href="./resources/favicon.png">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	

<style>
.footer {
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: rgb(200, 202, 206);
    color: black;
    font-size: 26px;
    text-align: center;
    height:200px;
}
section {
    padding: 60px 0;
}

section .section-title {
    text-align: center;
    color: #007b5e;
    margin-bottom: 50px;
    text-transform: uppercase;
}
#footer {
    background: #007b5e !important;
}
#footer h5{
	padding-left: 10px;
    border-left: 3px solid #eeeeee;
    padding-bottom: 6px;
    margin-bottom: 20px;
    color:#ffffff;
}
#footer a {
    color: #ffffff;
    text-decoration: none !important;
    background-color: transparent;
    -webkit-text-decoration-skip: objects;
}
#footer ul.social li{
	padding: 3px 0;
}
#footer ul.social li a i {
    margin-right: 5px;
	font-size:25px;
	transition: .5s all ease;
}

#footer ul.social li:hover a i {
	font-size:30px;
	margin-top:-10px;
}
#footer ul.social li a,
#footer ul.quick-links li a{
	color:#ffffff;
}
#footer ul.social li a:hover{
	color:#eeeeee;
}
#footer ul.quick-links li{
	padding: 3px 0;
	transition: .5s all ease;
}
#footer ul.quick-links li:hover{
	padding: 3px 0;
	margin-left:5px;
	font-weight:700;
}
#footer ul.quick-links li a i{
	margin-right: 5px;
}
#footer ul.quick-links li:hover a i {
    font-weight: 700;
}

@media (max-width:767px){
	#footer h5 {
    padding-left: 0;
    border-left: transparent;
    padding-bottom: 0px;
    margin-bottom: 10px;
}
table{

}

</style>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "javax.servlet.*" %>
<%@ page import="com.aws.codestar.projecttemplates.configuration.*" %>


<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
	 <a href="${pageContext.request.contextPath}" class="navbar-brand" style="color: rgb(0,255,0); font-family: '8BITWONDERNominal'; font-weight: normal; font-style: normal;"><img src="./resources/logoq.png" style="margin-top:-10px;"><a  href="${pageContext.request.contextPath}" class="text-center" style="color:white; font-size:25px; font-family:'8BITWONDERNominal'; font-weight: normal; text-decoration-line: none; font-style: normal;">MorphoCTF</span></a>
    </div>

    

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/leaderboard">Leaderboard</a></li>
        <li><a href="${pageContext.request.contextPath}/login">Log In</a></li>
		<li><a href="${pageContext.request.contextPath}/dashboard">DashBoard</a></li>
      	<li><a href="${pageContext.request.contextPath}/questions">Questions</a></li>
      	<li><a href="${pageContext.request.contextPath}/faqs">Faq</a></li>
       	<li><a href="${pageContext.request.contextPath}/rules">Rules</a></li>
       	<li><a href="https://morphosis.org.in/">Morphosis Website</a></li>
      	
      </ul>
    </div>
    
  </div>
</nav>


 <div class="container">
	  <h2 class = "text-center" style="margin-top:50px">Leaderboard</h2>
	  <p class = "text-center" style="margin-top:60px">Check your rank !!</p> 
	  <p style="color:red; margin-top:70px;"><marquee>`null` user id having user will not be considered for the prize. if you have any query then talk with admin. </marquee></p>
	             
	  <table class="table table-striped" style="margin-top:90px">
	    <thead>
	      <tr>
	       <th>Rank</th> 
	       
	        <th>Username or Email ID</th>
	        <th>Points</th>
	        <th>Time Stamp</th>
	      </tr>
	    </thead>
	    <tbody>
	    
	 
<%
int rank = 1;

String leaderboard_extract_data_query = "select * from leaderboard order by total_points desc,total_time_stamp asc;";

DatabaseConnection obj_connection = new DatabaseConnection();
Statement stmt = obj_connection.getConnection();
ResultSet rs = stmt.executeQuery(leaderboard_extract_data_query);
while(rs.next())
{
	
	String name = rs.getString("name");
	System.out.println(" name : " + name);
	
	String email = rs.getString("email");
	System.out.println(" email : " + email);
	int point = rs.getInt("total_points");
	System.out.println(" points : " + point);
	
	long time = rs.getLong("total_time_stamp");
	
	%>
	<tr>
	 <td><% out.print(rank);%></td>
	 
	 <td><% out.print(email);%></td>
	 <td><% out.print(point);%></td>
	 <td><% out.print(time);%></td>
	
	</tr>
	<% 
	rank++;
}


%>

      
	    </tbody>
  </table>
   </div>
   <div class="container-fluid" style="height:200px;"></div>                
 <!-- Footer -->
	<section id="footer">
		<div class="container">
			<div class="row text-center text-xs-center text-sm-left text-md-left">
				<div class="col-xs-12 col-sm-3 col-md-3">
					<h5>Quick links</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="#"><i class="fa fa-angle-double-right"></i>Home</a></li>
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<h5>Quick links</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>contact</a></li>
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Morphosis</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<h5>Quick links</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
						<li><a href="${pageContext.request.contextPath}/dashboard"><i class="fa fa-angle-double-right"></i>DASHBOARD</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3">
					<h5>Quick links</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
						<li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Rules</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
					<ul class="list-unstyled list-inline social text-center">
						<li class="list-inline-item"><a href="https://www.facebook.com/NITMz.morphosis/"><i class="fa fa-facebook"></i></a></li>
						<li class="list-inline-item"><a href="https://github.com/morphosis-nitmz"><i class="fa fa-github"></i></a></li>
						<li class="list-inline-item"><a href="https://www.instagram.com/nitmz_morphosis/"><i class="fa fa-instagram"></i></a></li>
						<li class="list-inline-item"><a href="https://www.linkedin.com/company/13677719/"><i class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
				</hr>
			</div>	
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
					<p>Morphosis</p>
					<p class="h6">&copy All right Reversed: MorphoCTF</p>
				</div>
				</hr>
			</div>	
		</div>
	</section>          
 
</body>
</html>