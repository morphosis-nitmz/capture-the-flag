<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FAQs</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="shortcut icon" type="image/png" href="./resources/favicon.png">
  
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" media="screen" href="https://fontlibrary.org/face/8bit-wonder" type="text/css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="shortcut icon" type="image/png" href="./resources/favicon.png">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
</head>
<style>

.container{
 margin-top:50px;
 padding:25px;
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
      
	 <a  href="${pageContext.request.contextPath}" class="navbar-brand" style="color: rgb(0,255,0); font-family: '8BITWONDERNominal'; font-weight: normal; font-style: normal;"><img src="./resources/logoq.png" style="margin-top:-10px;"><a  href="${pageContext.request.contextPath}" class="text-center" style="color:white; font-size:25px; font-family:'8BITWONDERNominal'; font-weight: normal; text-decoration-line: none; font-style: normal;">MorphoCTF</span></a>
    </div>

    

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/leaderboard">Leaderboard</a></li>
        <li><a href="${pageContext.request.contextPath}/dashboard">Dashboard</a></li>
        <li><a href="${pageContext.request.contextPath}/login">Log In</a></li>
      	<li><a href="${pageContext.request.contextPath}/questions">Questions</a></li>
      	<li><a href="${pageContext.request.contextPath}/faqs">Faq</a></li>
       	<li><a href="${pageContext.request.contextPath}/rules">Rules</a></li>
       	<li><a href="https://morphosis.org.in/">Morphosis Website</a></li>
      	
      </ul>
    </div>
    
  </div>
</nav>
  
<div class="container">
	<div class="row">
		<div class="col-12 mt-3 mb-4 text-center">
			<h1><b>Frequently Asked Questions</b></h1>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-12 mb-1">
			<h3><b>What is a CTF?</b></h3>
		</div>
		<div class="col-12">
			<p class="lead">
				CTF stands for Capture the Flag. In the case of our event the flag is a string of text hidden on a server, or an anwser to a question or riddle. 
				The goal of a CTF is to find and capture all of the flags for your team, and to do it the fastest. Each flag is worth points to the team's total score, and at the end of the game the team that has the highest score will win. 
				Each challenge will have it's own flag, and will have it's own input box for that flag. Once you get the flag by completing the challenge, enter the flag into the challenge's input box to recieve points for that challenge. 
				Some challenges are worth more points than others, i.e. a challenge that is harder and takes longer to complete will often be worth more points than a challenge that is quicker or easier. So if you are getting stuck on a challenge that is worth a lot of points, take a break to complete some of the easier challenges.
			</p>
		</div>
	</div>
	<div class="row">
		<div class="col-12 mb-1">
			<h3><b>What does a flag look like?</b></h3>
		</div>
		<div class="col-12">
			<p class="lead">
				Flags are normally prefixed with the word flag and then inside of curly braces will be a string of text. E.x: 
				flag{teach_them_to_hack} 
				For a flag such as the one above, the string teach_them_to_hack would be the flag that would be entered into the challenge's input box. 
				Although we will try to keep flags in this format, some challenges will ask for plain text anwsers as their flag.
			</p>
		</div>
	</div>
	<div class="row">
		<div class="col-12 mb-1">
			<h3><b>What determines a winner?</b></h3>
		</div>
		<div class="col-12">
			<p class="lead">
				Winners determined at the end of the CTF, the player that ends with the most points will be declared the winner. In case of tie, the winner will be the one who solved the questions in least time.
			</p>
		</div>
	</div>
</div>
</body>
</html>