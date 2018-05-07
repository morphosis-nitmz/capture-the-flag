<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
 
 body {font-family: Arial, Helvetica, sans-serif;}

.form {
border: 3px solid #f1f1f1;
margin:10px;
padding:20px;
border-radius:5px;


 box-shadow: 3px 5px green;
}

input[type=text], input[type=password], input[type=email] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
button:hover {
    opacity: 0.8;
}

</style>
<body>



 <div class = "container">
      
      <!-- Row -->
      <div class = "row">
      
         
             <h2 class = "text-center"><b>Log In</b></h2>
             <!-- Spring Form -->
             <form:form action="${pageContext.request.contextPath}/checking_user_credential"
               method="POST" class="form" >
         
         		<!-- Check for login error -->      
           	
         		<c:if test="${param.error != null }">
              			<i class = "failed" >Sorry ! you entered invalid username/password.</i>
             
         		</c:if>
     
         		                     
               <label for="user_name"><b>Enter your email</b></label>
               <input type="text" placeholder="Enter user name or Email" name="user_name" id="lower" onkeyup="lowercase()" required>
                
                
               <label for="password"><b>password</b></label>
               <input type="password" placeholder="Enter the password" name="password" required>  
                     
               
                <button class = "btn btn-success">Log In</button>
                   
      
              </form:form> <!-- End of Spring Sign up Form -->
         
         
         
         
       
      
      
      
      </div> <!-- End Row -->
     
  </div>
  <script>
  function lowercase() {
	  var x = document.getElementById("lower");
	  x.value = x.value.toLowerCase();
	  return x.value;
  }
  </script>
</body>
</html>