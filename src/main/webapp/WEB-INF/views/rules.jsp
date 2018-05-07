<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rules</title>
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
      	<li><a href="#">Contact</a></li>
      </ul>
    </div>
    
  </div>
</nav>
  
<div class="container">
	<div class="row">
		<div class="col-12 mt-3 mb-4 text-center">
			<h1><b>Rules & Regulations</b></h1>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-12">
			<p class="lead">
				1. Correct email format should be used. The character length should not be more than 45.
			</p>
		</div>
	</div>
	<div class="row">
		
		<div class="col-12">
			<p class="lead">
				2. Correct phone number format should be used i.e. it should be exactly 10 digits.
			</p>
		</div>
	</div>
	<div class="row">
	
		<div class="col-12">
			<p class="lead">
		
			3. Every user should submit correct information.
 				If any user submit wrong information like email, phone number, etc. he/she is not eligible to win the prize.
			  The next person in the leaderboard with correct information will be declared as the winner.
		
           </p>
		</div>
	</div>
		<div class="row">
	
		<div class="col-12">
			<p class="lead">
		
			 
				4. The answer or flag should be submitted following formats:		
				
				
           </p>
           <br>
           <p class ="lead" style="padding-left:10px;">
               - No spaces should be used.
   
           </p>
            <br>
           <p class ="lead" style="padding-left:10px;">
                - Only lowercase letter is allowed.
			</p>
		</div>
	</div>
	<div class="row">
	
		<div class="col-12">
			<p class="lead">
		
			<b>Disclaimer:</b> Though we have tried our best to avoid any unfortunate circumstances, but if in case any discrepancies occur and we are unable to resume the game then the player who was holding the top position on the leaderboard at the time of that event will be declared as the winner. The morphosis team will not be responsible for any inconviniences whatsoever.
           </p>
           
		</div>
	</div>
	
		
</div>
</body>
</html>