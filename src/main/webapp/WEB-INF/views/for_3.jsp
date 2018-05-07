<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forensic Que3</title>
     <meta name="viewport" content="width=device-width, initial-scale=1">
 	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<style>
.card{
 background-color:#bccfe0;

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
.question-card{
  
  margin-top:50px;
  padding:25px;
  margin-bottom:15px;
}

.question-head-card{
  
  
  margin-top:50px;
  padding:25px;
  margin-bottom:5px;
}

.solution-card{

  padding:25px;

}
.container{
  border-radius:20px;
   border-bottom:3px solid #cedaea;
   border-right:3px solid #cedaea;
}
.container:hover{
opacity:0.95;
}
</style>
<body style="background-color:#3e5103">
  <%@ page import ="java.sql.*" %>
  <%@ page import ="javax.sql.*" %>
  <%@ page import = "javax.servlet.*" %>
  <%@ page import ="com.aws.codestar.projecttemplates.configuration.*" %>
    
      <%
         // Extracting data from the cookies
         // extraction the email
        //it will be the email of the user;
      
        /*  Cookie cookie = null;
         Cookie[] cookies = null; */
         
         // Get an array of Cookies associated with the this domain
         /* cookies = request.getCookies();
         
         if( cookies != null ) {
            out.println("<h2> Found Cookies Name and Value</h2>");
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               out.print("Name : " + cookie.getName( ) + ",  ");
               out.print("Value: " + cookie.getValue( )+" <br/>");
               if(cookie.getName().equals("username"))
               {
            	   table_name = cookie.getValue();
            	   out.println("New Table name   :  "  + table_name + "\n");
               }
            }
         } else {
            out.println("<h2>No cookies founds</h2>");
         }
        */
         // sending the question id to the check_ans_of_que
          String que_id = "for_3";
          String hint="";
          int que_point = 00;
         
          HttpSession ses = request.getSession();
    	  ses.setAttribute("que_id",que_id);
          
    	  //database Connection
    	  DatabaseConnection obj_database_connection = new DatabaseConnection();
    	  Statement stmt = obj_database_connection.getConnection();
         
    	 try{
    		 System.out.println("que hello1");
    		 ResultSet rs = stmt.executeQuery("select * from question_points where que_id='for_3'");
    		 System.out.println("que hello2");

		    	  while(rs.next()){
		    		  que_point = rs.getInt("que_point");
		    		  hint = rs.getString("hint");
		     		 System.out.println("que hello3");

		    	      //out.println(que_point);
		    	  }
		    		 System.out.println("que hello4");

		    	  obj_database_connection.getCloseConnection();
		    	  
    	 } catch(Exception e){
    		 
    		 
    		 out.println("<h2>Something went wrong !!</h2> <br> <h2>Talk with admin!!</h2>");
    	 }
      %> 
     
 <%
 //checking for the questions submitted successfully or not
 //extraction the cookies
 // extraction the email
         String table_name = null;//it will be the email of the user;
      
         Cookie cookie = null;
         Cookie[] cookies = null;
         
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
            //out.println("<h2> Found Cookies Name and Value</h2>");
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
                // out.print("Name : " + cookie.getName( ) + ",  ");
               // out.print("Value: " + cookie.getValue( )+" <br/>");
               if(cookie.getName().equals("username"))
               {
            	   table_name = cookie.getValue();
            	  // out.println("New Table name   :  "  + table_name + "\n");
               }
            }
         } else {
            out.println("<h2>No cookies founds .\n DO the login Again</h2>");
         }
//   /*  try{
	   
		   
// 		    DatabaseConnection object_database_connection = new DatabaseConnection();
// 		    String tri_1 = "";
		    
// 		    Statement stmt_check = object_database_connection.getConnection();
// 		    System.out.println("Table Name : " + table_name);
// 		    System.out.println("hello 0 under admin");
// 		    ResultSet rs_check = stmt_check.executeQuery("select * from `" + table_name +"`;");
// 		    System.out.println("hello 1 under admin");
// 		    while(rs_check.next())
// 		    {
// 		    	String db_que_id = rs_check.getString("que_id");   	
// 		    	if(db_que_id.equals("math_add_simple_number"))
// 		    	{
// 		    		tri_1 = db_que_id;
// 		    		break;
// 		    	}
		    	
		    	
// 		    }
		 
// 		    //out.println("que id db : "+tri_1);
//    } catch(Exception e){
// 		 out.println("<h2>Something went wrong !!</h2> <br> <h2>Talk with admin!!</h2>");

//    } */
 
 %>
 
      
      
<div class = "container card question-head-card text-center">
   
     <div class = "row">
        <div class = "col-md-4"><h2 class= "text-center">Question ID : FOR_3</h2></div>
        <div class = "col-md-4"><h2 class = "text-center">Points : <% out.println(que_point);%></h2></div>
        <div class = "col-md-4"><h2 class = "text-center"><% out.println(hint);%></h2></div>
     
     </div>

</div>

<div class = "container card question-card">
  <h2 class= "text-center">
      Find the answer in a file. Check all folders. (https://sundayamizo.ga/ctf/files/files.zip) </h2>
 </div> 
 <br>
 <br>
 <div class = "container card solution-card">
    
    
      <c:set var="que"  value="${for_3}"/>
     Trivia_Que_5
     <c:if test="${fn:length(que) == 0}" >
    
       <form action="${pageContext.request.contextPath}/check_ans_of_que" method="POST" class = "form">
       		<input type = "text" name = "sol_trivia" placeholder="Submit your answer"/>
       		<button class = "btn btn-danger text-center">Submit</button>
      </form>
     </c:if>
 </div>
</body>
</html>