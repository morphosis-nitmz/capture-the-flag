<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "security" uri = "http://www.springframework.org/security/tags" %>


<html>
 <head>
    <title>Saving Data</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <meta name="viewport" content="width=device-width, initial-scale=1">
     
 </head>
 <body>
  <%@ page import ="java.sql.*" %>
  <%@ page import ="javax.sql.*" %>
  
  
 <div class = "container">
  <%
    // Extracting the FORM data from sign-up page
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    email = email.toLowerCase();
    String password = request.getParameter("password");
    String clg_name = request.getParameter("clg_name");
    String phone_number = request.getParameter("phone_number");
  
    
    // Database Info
    String db_url = "jdbc:mysql://change_with_your_own_end_point"; // put your own endpoint link
    String db_user = "xxxxx"; //put your password 
    String db_password = "xxxxxx"; // put your password
    
    try{
    	Class.forName("com.mysql.jdbc.Driver");
   
    
    	java.sql.Connection connection = DriverManager.getConnection(db_url,db_user,db_password);
    	Statement statement = connection.createStatement();
    
    	// inserting the sign up data into the database
     	String query = "insert into student values('" + name + "','" + email + "','" + password + "','" + clg_name + "','" + phone_number + "')";
    
    	// query_status flag will show that query successfully inserted or not !!
    	try
    	{
    		int query_status = statement.executeUpdate(query); 
    		
        	%>
        	 <div class = "container" style="background-color:white">
        	      <h2 class = "text-center">Entry successfully entered !!</h2> 
        	      <h2>Go to The Login Page Or Home Page</h2>
        	      <a href = "login"><button class = "btn btn-danger">Login Page</button></a>
        	      <a href = "questions"><button class = "btn btn-success">Question Page</button></a>
        	 </div>
        	
        	
        	<%
        		
    	}catch(Exception e){
    		out.println("<h2>This sign up credential has taken by someone. choose another </h2>");
    	}
    
    	
     } catch(Exception e){
    	out.println("Database Error" + "\n We will fix Wait for some time!!" + "\nsorry for the inconvenience");
    }
    
    //saving the cookies 
    try{
    	 Cookie cookies_name = new Cookie("username",name);
    	 Cookie cookies_email = new Cookie("email",email);
  	   	Cookie cookies_password = new Cookie("password",password);
  	   //Cookie cookies_name = new Cookie("name",db_name);
  	   //Cookie cookies_clg_name = new Cookie("clg_name",db_clg_name);
  	 
  	   
  	   cookies_name.setMaxAge(60*60*10);
  	 cookies_email.setMaxAge(60*60*10);
  	   cookies_password.setMaxAge(60*60*10); 
  	   //cookies_name.setMaxAge(60*60*10); 
  	   //cookies_clg_name.setMaxAge(60*60*10); 
  	 
  	   // Add both the cookies in the response header.
  	   response.addCookie( cookies_name );
  	   response.addCookie( cookies_email );
  	 response.addCookie( cookies_password );
  	   
    
    } catch(Exception e){
    	out.println("<h2>Saving cookies is not possible !!</h2>");
    	out.println("<h2>Do the Login !!</h2>");
    	
    }
  %>  
 </div> 
 </body>
 
 
 </html>
 
