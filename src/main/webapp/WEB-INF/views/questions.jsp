<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "security" uri = "http://www.springframework.org/security/tags" %>


<html>
 <head>
    <title>Questions</title>
     <meta name="viewport" content="width=device-width, initial-scale=1">
     	<link rel="shortcut icon" type="image/png" href="./resources/favicon.png">	
     	
 	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 </head>
 <style>
 .card{	
   border-bottom:3px solid #bfd2f2;
   border-right:3px solid #bfd2f2;
   padding:20px;
   margin:10px;
 }
 .card:hover{
   background-color:white;
   border-bottom:3px solid #aec3e8;
   border-right:3px solid #aec3e8;
 }
 .opicity:hover{
     opacity: 0.7;
 }
 
 .jumbotron{

 }
 
 body{
   background-color:#cbcfd6;
 }
 .navbar{
	border-bottom-width: 2px;
    border-bottom-style: solid;
    border-bottom-color: rgb(0, 255, 0);
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

</style>	


<nav class="navbar navbar-expand-md bg-dark navbar-dark">

 	 <a  href="http://ctfapp.usr6x7gcm7.ap-southeast-1.elasticbeanstalk.com" class="navbar-brand" style="color: rgb(0,255,0); font-family: '8BITWONDERNominal'; font-weight: normal; font-style: normal;">MorphoCTF</a>

 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item" style="margin: 0px 20px;">
        <a class="nav-link" href="http://ctfapp.usr6x7gcm7.ap-southeast-1.elasticbeanstalk.com">Home</a>
      </li>
      <li class="nav-item" style="margin: 0px 20px;">
        <a class="nav-link" href="${pageContext.request.contextPath}/rules">Rules</a>
      </li>
      <li class="nav-item" style="margin: 0px 20px;">
        <a class="nav-link" href="${pageContext.request.contextPath}/questions">Questions</a>
      </li>
      <li class="nav-item" style="margin: 0px 20px;">
        <a class="nav-link"  href="${pageContext.request.contextPath}/leaderboard">Leaderboard</a>
      </li> 
    </ul>
  </div> 
</nav>


<div class="jumbotron" style="background: url('./resources/matrix.jpg')">

 <div class = "container text-center" style="background-color:white;padding:50px; margin:;30px;border-radius:30px;" > <h1>Final Round</h1></div>
   <!-- Card Container -->
	<div class="jumbotron card bg-default">
  		<h2 class = "text-center">Maths</h2>
     <!-- Starting of the Row -->
   		<div class = "row">
   		    
   		    
   		      <div class = "col-md-2 opacity ">
		        	<a href="Math_Que_1" >
		       			<div class="card bg-dark text-white text-center">
		    				<div class="card-body">Simple Numbers</div>
		  	    		</div>
		       	 	 </a>
		    	</div>
       	 	  
     		<div class = "col-md-2 opacity ">
		        	<a href="Math_Que_2" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Large Numbers
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
    	         <div class = "col-md-2 opacity ">
		        	<a href="Math_Que_3" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Scrabble Number
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
    	      <div class = "col-md-2 opacity ">
		        	<a href="Math_Que_4" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Scrabble Number With Noise
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
    
    	
		
	</div><!-- End of the row -->
   
 
  	 <br>
 
	</div> <!-- End of the container card -->	
  	
   <!-- Card Container -->
	<div class="jumbotron card bg-default">
  		<h2 class = "text-center">Parsing</h2>
     <!-- Starting of the Row -->
   		<div class = "row">
   		    
   		    
   		      <div class = "col-md-2 opicity ">
		        	<a href="Parse_Que_1" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Parsing Zip File
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
       	 	  
       	 	   <div class = "col-md-2 opicity ">
		        	<a href="Parse_Que_2" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Parse 2
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>

    	
		
	</div><!-- End of the row -->
   
 
  	 <br>
 </div>
    <!-- Card Container -->
	<div class="jumbotron card bg-default">
  		<h2 class = "text-center">Recon</h2>
     <!-- Starting of the Row -->
   		<div class = "row">
   		    
   		    
   		      <div class = "col-md-2 opacity ">
		        	<a href="Recon_Que_1" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Recon 1
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
       	 	  
     		<div class = "col-md-2 opacity ">
		        	<a href="Recon_Que_2" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Recon 2
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
    	         <div class = "col-md-2 opacity ">
		        	<a href="Recon_Que_3" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Recon 3
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
    	
		
	</div><!-- End of the row -->
   
 
  	 <br>
 
	</div> <!-- End of the container card -->	    

 
 <!-- Trivia Section -->
	
	    <!-- Card Container -->
	<div class="jumbotron card bg-default">
  		<h2 class = "text-center">Trivia</h2>
     <!-- Starting of the Row -->
   		<div class = "row">
   		    
   		    
   		      <div class = "col-md-2 opacity ">
		        	<a href="Trivia_Que_1" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Trivia 1
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
       	 	  
     		<div class = "col-md-2 opacity ">
		        	<a href="Trivia_Que_2" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Trivia 2
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
    	         <div class = "col-md-2 opacity ">
		        	<a href="Trivia_Que_3" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Trivia 3
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
    	    <div class = "col-md-2 opacity ">
		        	<a href="Trivia_Que_4" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Trivia 4
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
    	         <div class = "col-md-2 opacity ">
		        	<a href="Trivia_Que_5" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Trivia 5
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
                 <!-- - new questions added -->
		    	<div class = "col-md-2 opacity ">
		        	<a href="Trivia_Que_6" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Trivia 6
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
		    		<div class = "col-md-2 opacity ">
		    		
		        	<a href="Trivia_Que_7" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Trivia 7
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
		    		<div class = "col-md-2 opacity ">
		    		
		        	<a href="Trivia_Que_8" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Trivia 8
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
		    		
		    		<div class = "col-md-2 opacity ">
		        	<a href="Trivia_Que_9" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Trivia 9
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
		    		
		
	</div><!-- End of the row -->
   
 
  	 <br>
 
	</div> <!-- End of the container card -->	  
	
	 <!-- Uncover Section -->
	
	    <!-- Card Container -->
	<div class="jumbotron card bg-default">
  		<h2 class = "text-center">Uncover</h2>
     <!-- Starting of the Row -->
   		<div class = "row">
   		    
   		    
   		      <div class = "col-md-2 opacity ">
		        	<a href="Uncover_Que_1" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Uncover 1
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
       	 	  
     		<div class = "col-md-2 opacity ">
		        	<a href="Uncover_Que_2" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Uncover 2
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
    	         <div class = "col-md-2 opacity ">
		        	<a href="Uncover_Que_3" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Uncover 3
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
		    	<!--  New question added -->
    	     <div class = "col-md-2 opacity ">
		        	<a href="Uncover_Que_4" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Uncover 4
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
		    	<div class = "col-md-2 opacity ">
		        	<a href="Uncover_Que_5" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Uncover 5
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
		    	<div class = "col-md-2 opacity ">
		        	<a href="Uncover_Que_6" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Uncover 6
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
		    	<div class = "col-md-2 opacity ">
		        	<a href="Uncover_Que_7" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Uncover 7
		            		</div>
		  	    		</div>
		       	 	   </a>
		    	</div>
		    	
    	     
	</div><!-- End of the row -->
   
 
  	 <br>
 
	</div> <!-- End of the container card -->
	
	
	 <!-- Misc Section -->
	
	    <!-- Card Container -->
	<div class="jumbotron card bg-default">
  		<h2 class = "text-center">Miscellaneous</h2>
     <!-- Starting of the Row -->
   		<div class = "row">
   		    
   		    
   		      <div class = "col-md-2 opacity ">
		        	<a href="Misc_Que_1" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Misc 1
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
       	 	  <div class = "col-md-2 opacity ">
		        	<a href="Misc_Que_2" >
		       			 <div class="card bg-dark text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Misc 2
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
     		
    	   
	</div><!-- End of the row -->
   
 
  	 <br>
 
	</div> <!-- End of the container card -->
	
	
	 <!-- Web Section -->
	
	    <!-- Card Container -->
	<div class="jumbotron card bg-default">
  		<h2 class = "text-center">Web blood</h2>
     <!-- Starting of the Row -->
   		<div class = "row">
   		    
   		    
   		      <div class = "col-md-2 opacity ">
		        	<a href="Web_1" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Web 1
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
       	 	  <div class = "col-md-2 opacity ">
		        	<a href="Web_2" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Web 2
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
		    		
		    		
		    	  <div class = "col-md-2 opacity ">
		        	<a href="Web_3" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Web 3
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
       	 	  <div class = "col-md-2 opacity ">
		        	<a href="Web_4" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Web 4
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
		    		  <div class = "col-md-2 opacity ">
		        	<a href="Web_5" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Web 5
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
		    		<a href="Web_6" >
		       			 <div class="card bg-danger text-white text-center">
		               
		    				<div class="card-body">
		                
		            			Web 6
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
       	 	
     		
    	   
	</div><!-- End of the row -->
   
 
  	 <br>
 
	</div> <!-- End of the container card -->
	
	
	
	 <!-- Web Section -->
	
	    <!-- Card Container -->
	<div class="jumbotron card bg-default">
  		<h2 class = "text-center">Forensics</h2>
     <!-- Starting of the Row -->
   		<div class = "row">
   		    
   		    
   		      <div class = "col-md-2 opacity ">
		        	<a href="For_1" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			forensic 1
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
       	 	  <div class = "col-md-2 opacity ">
		        	<a href="For_2" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			forensic 2
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
		    		
		    		
		    	  <div class = "col-md-2 opacity ">
		        	<a href="For_3" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			forensic 3
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
       	 	  <div class = "col-md-2 opacity ">
		        	<a href="For_4" >
		       			 <div class="card bg-success text-white text-center">
		               
		    				<div class="card-body">
		                
		            			forensic 4
		            		</div>
		  	    		</div>
		       	 	   </a>
		    		</div>
		    		 
	</div><!-- End of the row -->
   
 
  	 <br>
 
	</div> <!-- End of the container card -->
	
	
 </div>
 
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