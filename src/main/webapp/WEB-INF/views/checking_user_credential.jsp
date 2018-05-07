<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "security" uri = "http://www.springframework.org/security/tags" %>


<html>
 <head>
    <title>Checking User Credentials</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
    
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
 <body>
  <%@ page import ="java.sql.*" %>
  <%@ page import ="javax.sql.*" %>
  
  <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
	 <a class="navbar-brand" style="color: rgb(0,255,0); font-family: '8BITWONDERNominal'; font-weight: normal; font-style: normal;" href="${pageContext.request.contextPath}">MorphoCTF</a>
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
  
 <div class = "container">
  <%
     
  
  
    // Extracting the FORM data from sign-up page
    String user_name = request.getParameter("user_name");
    
    String password = request.getParameter("password");
    
    
   
   
    // Database Info
    String db_url = "jdbc:mysql://change_with_your_own_end_point"; // put your own endpoint link
    String db_user = "xxxxx"; //put your password 
    String db_password = "xxxxxx"; // put your password
    
    try{
    	Class.forName("com.mysql.jdbc.Driver");
    } catch(Exception e){
    	out.println("<h2 class ='text-center'>Database Error \n We will fix Wait for some time!!\n sorry for the inconvenience</h2>");
    }
    
    java.sql.Connection connection = DriverManager.getConnection(db_url,db_user,db_password);
    Statement statement = connection.createStatement();
    
    // inserting the sign up data into the database
     String query = "select * from student";
    
    
    ResultSet result_set = statement.executeQuery(query); 
   
    // retrieving the clg name
    String db_clg_name = "";
    String db_name = "";
    
    // checking the user credentials
    int flag = 0;
    while(result_set.next())
    {
    	String db_user_name = result_set.getString("email");
    	String db_pass = result_set.getString("password");
    	
    	if(db_user_name.equals(user_name) && db_pass.equals(password))
    	{
    		
    		  //out.println("Successfully Logged in");
    		  db_clg_name = result_set.getString("clg_name");
    		  db_name = result_set.getString("name");
    		  flag = 1;
       	}
    }
    
    if(flag == 1)
    {
    	// out.println("Successfully Logged in");
    	    //setting the cookies
    	    
    	   Cookie cookies_username = new Cookie("username",user_name);
    	   Cookie cookies_password = new Cookie("password",password);
    	   //Cookie cookies_name = new Cookie("name",db_name);
    	   //Cookie cookies_clg_name = new Cookie("clg_name",db_clg_name);
    	 
    	   
    	   cookies_username.setMaxAge(60*60*10); 
    	   cookies_password.setMaxAge(60*60*10); 
    	   //cookies_name.setMaxAge(60*60*10); 
    	   //cookies_clg_name.setMaxAge(60*60*10); 
    	 
    	   // Add both the cookies in the response header.
    	   response.addCookie( cookies_username );
    	   response.addCookie( cookies_password );
    	   %>
      	 <div class = "container" style="background-color:white">
      	      <h2 class = "text-center">Entry successfully entered !!</h2> 
      	      <h2>Go to The Login Page Or Home Page</h2>
      	      <a href = "login"><button class = "btn btn-danger">Login Page</button></a>
      	      <a href = "questions"><button class = "btn btn-success">Question Page</button></a>
      	       <a href = "http://ctfapp.usr6x7gcm7.ap-southeast-1.elasticbeanstalk.com"><button class = "btn btn-info">Home Page</button></a>
      	    
      	      
      	 </div>
      	
      	
      	<%
    	   //response.addCookie( cookies_name );
    	   //response.addCookie( cookies_clg_name );
    }
    else
    {
    	   %>
        	 <div class = "container" style="background-color:white">
        	      <h2 class = "text-center">Wrong Credentials</h2> 
        	      <h2>Go to The Login Page Or Home Page</h2>
        	      <a href = "login"><button class = "btn btn-danger">Login Page</button></a>
        	      <a href = "questions"><button class = "btn btn-success">Question Page</button></a>
        	   <a href = "http://ctfapp.usr6x7gcm7.ap-southeast-1.elasticbeanstalk.com"><button class = "btn btn-info">Home Page</button></a>
        	      
        	     
        	      
        	 </div>
        	
        	
        	<%
    	
    	
    }
    
    
    
    

  %>  
 
  
 </div> 
 </body>
 
 
 </html>
 
