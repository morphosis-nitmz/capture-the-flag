<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>C T F</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" media="screen" href="https://fontlibrary.org/face/8bit-wonder" type="text/css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="shortcut icon" type="image/png" href="./resources/favicon.png">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
  </head>
 <style type="text/css">
 
.icon {
	background-image: url("resources/hack1.jpg");
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	color: white;
	height: 600px;
	margin-top: 50px; 
}

.card {
    background: #fff;
    padding: 3% 15%;
    border-radius: 4px;
    border-top: 5px solid light-green;'
    display: inline-block;
    width: 100%;
    height: auto;
    position: relative;
    box-shadow: 0 7px 12px rgb(66, 244, 104, 0.15), 0 5px 4px rgba(0, 0, 0, 0.18);
    transition: all 200ms ease-in;
    transform: scale(1);
}

.card:hover {
	border: 30px solid light-green;
}
  
.jumbotron{
	background-color: "#f0f4f4";
}

.button {
	background-color: #1b4208; /* Green */
 	border: none;
	color: white;
	padding: 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.btn-success {		   
	padding: 5px;
	width:250px;
	height:50px;
	background-color:rgb(0,255,0); 
	font-size:25px;
}
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
#res{
display:hidden;
}
</style>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
	 <a class="navbar-brand" style="color: rgb(0,255,0); font-family: '8BITWONDERNominal'; font-weight: normal; font-style: normal;"><img src="./resources/logoq.png" style="margin-top:-10px;"><a class="text-center" style="color:white; font-size:25px; font-family:'8BITWONDERNominal'; font-weight: normal; text-decoration-line: none; font-style: normal;">MorphoCTF</span></a>
    </div>

    

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/leaderboard">Leaderboard</a></li>
        <li><a href="${pageContext.request.contextPath}/dashboard">Dashboard</a></li>
        <li><a href="${pageContext.request.contextPath}/signup">Sign Up</a></li>
        <li><a href="${pageContext.request.contextPath}/login">Log In</a></li>
      	<li><a href="${pageContext.request.contextPath}/questions">Questions</a></li>
      	<li><a href="${pageContext.request.contextPath}/faqs">Faq</a></li>
       	<li><a href="${pageContext.request.contextPath}/rules">Rules</a></li>
       	<li><a href="https://morphosis.org.in/">Morphosis Website</a></li>
     </ul>
    </div>
    
  </div>
</nav>

<div class="container-fluid icon">	
	<div class="row text-center">
		<div style="height:270px;"></div>
		<div class="text col-md-6 col-md-offset-3">
			<h1 id="header1" class="text-center" style="color:white; font-size:25px; font-family:'8BITWONDERNominal'; font-weight: normal; font-style: normal;">MorphoCTF</h1>
			<br>
			<h2><strong>NITMZ Focused Capture The Flag Event</strong></h2>
			<br><br>
			<a href = "${pageContext.request.contextPath}/signup"><button class="btn btn-success">Sign UP</button></a>
		</div>
	</div>	
</div>

<div class="container-fluid jumbotron">
	<div class="row text-center">
		<h2>What is the MORPHO CTF?</h2>
		<p class="small">The MORPHO CTF is an Techfest Capture The Flag event aimed towards teaching Cryptography, Decrypting the message and handling the big numbers in Maths.</p>
		<p class="small">Participates will learn...</p>
	</div>
</div>

 <div class="container-fluid">
    <div class="row" style="color:black;">
    	<div class="col-sm-4">
        	<div class="card">
                <img src="./resources/Shield.png" alt="cse" style="width:85%;height:85%;">
            </div>
        </div>
        
        <div class="col-sm-8">
        	<div class="card">
        	    <h2 class="text-center">Cryptography</h2><br><br>
				<p style="font-size: 22px; text-display: justify;">
					Cryptography is essential in Computer Science and Security.
					Most of us encounter it every day without even knowing it.
					Every time you visit a website and see the green '<span class="httpsGreen"><a href="https://en.wikipedia.org/wiki/cryptography">cryptography</a></span>'
					in the URL, you are on an encrypted site that ensures your connection is safe.
					Without cryptography, much of the very important data transferred today on the web and computer network would be in plain text that would
					allow anyone to read and borrow (steal)... even your mom! If you want to learn more about some cool encryptions and ciphers.
					<br>				
				</p>
            </div>
        </div>                              
	</div>
	<br><br><br><br>
	<div class="row" style="color:black;">
    	<div class="col-sm-4">
        	<div class="card">
                <img src="./resources/hex_code.png" alt="cse" style="width:87%;height:87%;">
            </div>
        </div>
        
        <div class="col-sm-8">
        	<div class="card">
        		<h2 class="text-center">Programming</h2><br><br>
        		<p style="font-size: 22px; text-align: justify;">
        			Learning how to code and basic programming concepts for many are the first steps when exploring the field of computer science.
					Code is a hacker's lifeblood and it is imperative that a hacker knows basic programming techniques as this will help them in
					the future when understanding how programs work. This website, along with many others, was built using some of the most popular web development languages (
					<a href="https://www.w3schools.com/html/html_intro.asp">HTML</a>,
					<a href="https://www.w3schools.com/css/css_intro.asp">CSS</a>,
					<a href="https://www.w3schools.com/js/js_intro.asp">Javascript</a>, and
					<a href="https://www.w3schools.com/php/php_intro.asp">PHP</a> ).
					Whether you have intentionally navigated to this site, or have just happened to stumble into its greatness,
					take a look around and discover a little bit about what we at NeverLAN promote.
					In addition, check out some other awesome sites that will help you along your journey to unlocking your true hacking potential!
        		</p>
            </div>
        </div>                              
	</div>
	<br><br><br><br>
	<div class="row" style="color:black;">
    	<div class="col-sm-4">
        	<div class="card">
                <img src="./resources/Research_recon.png" alt="cse" style="width:85%;height:85%;">
            </div>
        </div>
        
        <div class="col-sm-8">
        	<div class="card">
        		<h2 class="text-center">Recon</h2><br><br>
        		<p style="font-size: 22px; text-align: justify;">
        		<a href="https://google.com">Google</a> is your FRIEND! Knowing how to search for solutions to a problem is just as important to knowing how to solve it.
				Chances are someone has already run into that blocker you've found yourself stuck on, and they've probably already solved it.
				So why not look up a solution they have crafted and use it or maybe modify it a bit and use it for yourself.
				Whether or not you find the solution to your problem, any search engine can be a fantastic resource to elevate your understanding of a multitude of CS concepts.
        		<br><br>
        		</p>
            </div>
        </div>                              
	</div>
	<br><br><br><br>
	<div class="row" style="color:black;">
    	<div class="col-sm-4">
        	<div class="card">
                <img src="./resources/flat.png" alt="cse" style="width:80%;height:75%;">
            </div>
        </div>
        
        <div class="col-sm-8">
        	<div class="card">
        		<h2 class="text-center">Cyber Trail</h2><br><br>
        		<p style="font-size: 22px; text-align: justify;">
        		Cyber Trail? What the heck is that?! If you are asking yourself these questions, allow us to enlighten you...
				Your Cyber Trail, or Digital Footprint includes everything that you bring along with you on your journey through the web.
				Go to <a href="https://panopticlick.eff.org">Panopticlick</a> to find out information about your browser and what kind of traces to leave on the internet.
        		<br><br><br>
        		</p>
            </div>
        </div>                              
	</div>
</div>

  <img src-="./resources/flat.png" id="res"/>
  
                     
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
 <img src-="./resources/flat.png" id="res"/>
</body>

</html>
