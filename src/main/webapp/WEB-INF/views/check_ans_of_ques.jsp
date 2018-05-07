<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trivia Que1</title>
       <title>C T F</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" media="screen" href="https://fontlibrary.org/face/8bit-wonder" type="text/css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="shortcut icon" type="image/png" href="./resources/favicon.png">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	

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
      
	 <a class="navbar-brand" style="color: rgb(0,255,0); font-family: '8BITWONDERNominal'; font-weight: normal; font-style: normal;"><img src="./resources/logoq.png" style="margin-top:-10px;"><a class="text-center" style="color:white; font-size:25px; font-family:'8BITWONDERNominal'; font-weight: normal; text-decoration-line: none; font-style: normal;">MorphoCTF</span></a>
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
<div class = "container card question-head-card text-center">
  
      <%
        
   // Initial Time stamp
     SettingTimeStampInitialValue obj_initial_time = new SettingTimeStampInitialValue();
    
      long initial_time_stamp  = obj_initial_time.getInitialTimeStamp();  
      
         // extraction the email
         String table_name = null;//it will be the email of the user;
         String full_name = "";
         int total_points =0;
         long total_time_stamp = 0;
         Cookie cookie = null;
         Cookie[] cookies = null;
         
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
           // out.println("<h2> Found Cookies Name and Value</h2>");
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
             //  out.print("Name : " + cookie.getName( ) + ",  ");
               //out.print("Value: " + cookie.getValue( )+" <br/>");
               if(cookie.getName().equals("username"))
               {
            	   table_name = cookie.getValue();
            	  // out.println("New Table name   :  "  + table_name + "\n");
               }
               if(cookie.getName().equals("name"))
               {
            	   full_name = cookie.getName();
               }
               
            }
         } else {
            out.println("<h2>No cookies founds</h2> <br><h2>Do the Login Again!!</h2>");
             
            %>
         	 <div class = "container" style="background-color:white">
         	      
         	      <a href = "login"><button class = "btn btn-danger">Login Page</button></a>
         	      <a href = "questions"><button class = "btn btn-success">Question Page</button></a>
         	 </div>
         	
         	
         	<%
         }
      %>
    
    
    
    <%
         // taking the question id for the check_ans_of_que
          String que_id = null;
         
          HttpSession ses = request.getSession(false);
    	  que_id = (String)ses.getAttribute("que_id");
          //out.println( "Question id : "+ que_id +"\n");
    	  // taking the answer from the input form
    	  
    	  String answer = request.getParameter("sol_trivia");
      
      %> 
    
  <%
    // Extracting the FORM data from sign-up page
    
    
    // Database Info
    String db_url = "jdbc:mysql://change_with_your_own_end_point"; // put your own endpoint link
    String db_user = "xxxxx"; //put your password 
    String db_password = "xxxxxx"; // put your password
    
    try{
    	Class.forName("com.mysql.jdbc.Driver");
      
    	//out.println("hello1");
    	java.sql.Connection connection = DriverManager.getConnection(db_url,db_user,db_password);
    	//out.println("hello2");
    	Statement statement = connection.createStatement();
    	//out.println("hello3");
    	// inserting the sign up data into the database
     	String query = "select * from questions";
    
    	ResultSet result_set = statement.executeQuery(query); 
    	//out.println("hello4");
    
			    while(result_set.next())
			    {
			    	//out.println("hello");
			    	String db_que_id = result_set.getString("que_id");
			    	//out.println(db_que_id);
			    	if(db_que_id.equals(que_id)){
			    		String db_answer = result_set.getString("answer");
			        	//out.println(db_answer);
			
			    		if(db_answer.equals(answer))
			    		{
			    			//out.println("Your Solution is correct !!");
			    			
			    			// creating table into the database if it is not created;
			    			   
							
								try {
									
									DatabaseConnection object_database_connection = new DatabaseConnection();
									//out.println("hello1");
									Statement stmt = object_database_connection.getConnection();
									//out.println("hello2");
									String query_create_table = "create table  `" + table_name + "`(que_id varchar(55) primary key, time_stamp long ); ";
									//out.println("hello3");
									int flag_create_table_status = stmt.executeUpdate(query_create_table);
									//out.println("hello4");
									//out.print("New Table Created!!" );
									String leaderboard_query = "insert into leaderboard values('"+full_name+"', '" +table_name+ "', " +total_points+ ",  " +total_time_stamp+")";
									
									int flag_status_leaderboard = stmt.executeUpdate(leaderboard_query);
									if(flag_status_leaderboard > 0)
									{
										System.out.println("Leaderboard intital entry successfully entered!!");
									}
									object_database_connection.getCloseConnection();
									
								} 
								catch (Exception e) 
								{
									
								   //out.print("Table already Created-- NO Error");
								}
								
							try{
										
											System.out.println("hello1");
											DatabaseConnection object_database_connection = new DatabaseConnection();
											System.out.println("hello2");
											Statement stmt = object_database_connection.getConnection();
											System.out.println("hello3");
											long current_time_stamp = System.currentTimeMillis()/1000; 
									    	long diff_time_stamp = current_time_stamp - initial_time_stamp + 28000;
									    	System.out.println("Total time stamp : " + diff_time_stamp);
											String query_insert_data = "insert into `" + table_name + "` values('"+ que_id +"', " +  diff_time_stamp+ ")"; 
											System.out.println("hello4");
											int flag_insert_query = stmt.executeUpdate(query_insert_data);
											System.out.println("hello5");
						    				
											
											try{
													String leaderboard_query = "insert into leaderboard values('"+full_name+"', '" + table_name + "', " + total_points + ",  " + total_time_stamp+ ")";
												
													int flag_status_leaderboard = stmt.executeUpdate(leaderboard_query);
												
													System.out.println("Leaderboard intital entry successfully entered!!");
											
												
											}catch(Exception e){
													System.out.println("Leaderboard no entry!!");
			
											}
						    				
						    				// retriving all the data from user table
						    				System.out.println("hello natural join 1");
						    				ResultSet rs_table = stmt.executeQuery("select * from `" +table_name+ "` natural join question_points ");
						    				System.out.println("hello natural join 2");
						    				
						    				
						    				
						    				 while(rs_table.next())
						    				{
						    				   String table_que_id = rs_table.getString("que_id"); 
						    				   int table_point = rs_table.getInt("que_point");
						    				   total_points = total_points + table_point;
						    				   long  table_time_Stamp = rs_table.getLong("time_stamp");
						    				   //total_time_stamp = total_time_stamp + table_time_Stamp;
						    				   //System.out.println( "total time stamp : "+ total_time_stamp);
						    				}  
						    				
						    				
						    				Statement st_time = connection.createStatement();
						    				ResultSet rs_time = st_time.executeQuery("select sum(time_stamp) from  `" + table_name+ "`");
						    				 
						    				String time_stamp_temp = null;
						    				while(rs_time.next()){
						    					 time_stamp_temp = rs_time.getString(1);
						    					
						    				}
						    				total_time_stamp = Long.parseLong(time_stamp_temp.trim());
						    			  
						    				
						    				try{
						    						String leaderboard_query = "update leaderboard set total_time_stamp = " + total_time_stamp +", total_points = " +total_points +"  where email  = '"+table_name+"';";
						    				
											
													int flag_status_leaderboard = stmt.executeUpdate(leaderboard_query);
													if(flag_status_leaderboard > 0)
														{
															System.out.println("Leaderboard entry successfully Updated");
														}
						    				} catch(Exception e){
						    					System.out.println("leader board failed");
						    				}
											
											
											 out.println(" <h2>Hurrey !!  Correct Answer</h2>");
					                         %>
					                         <a href = "questions"><button class= "btn btn-danger">Go to Question Page</button></a>
							                <%
							                System.out.println("hello5");
										    object_database_connection.getCloseConnection();
										 
										    try{
							    				String entry_query = "insert into entry_log values('" + table_name + "', '" + que_id +  "', '" + answer+ "')";
							    			
									    			DatabaseConnection obj_db_con = new DatabaseConnection();
									    			Statement st_entry_log  = obj_db_con.getConnection();
									    			int flag_entry = st_entry_log.executeUpdate(entry_query);
									    			obj_db_con.getCloseConnection();
							    			} catch(Exception e){
							    				out.println("Entry Log DataBase Error \n Don't worry We'll fix it");
							    			}
										    
						    				System.out.println("hello6");
										}
										catch(Exception e){
											 out.println(" <h2>You already submitted the answer for this question</h2><br><h2>OR Something went wrong !! </h2> <br><h2>Or If you have any query then talk with admin</h2>");
					                         %>
					                         <a href = "questions"><button class= "btn btn-danger">Go to Question Page</button></a>
							                
							                <%
			    			
										}
			    		}
			    		else
			    		{
			    			out.println("! Wrong Answer!");
			    			out.println("<h2>Go to back </h2> <br>");
			    			
			    			// entry log data
			    			try{
			    				String entry_query = "insert into entry_log values('" + table_name + "', '" + que_id +  "', '" + answer+ "')";
			    			
					    			DatabaseConnection obj_db_con = new DatabaseConnection();
					    			Statement st_entry_log  = obj_db_con.getConnection();
					    			int flag_entry = st_entry_log.executeUpdate(entry_query);	
					    			obj_db_con.getCloseConnection();

			    			} catch(Exception e){
			    				out.println("Entry Log DataBase Error \n Don't worry We'll fix it");
			    			}
			    			out.println("<a href='questions'><button>Question Page</button></a>");
			    		}
			    	}
			    
			    }
    }catch(Exception e){
		out.println("<h2>Internet Not working or "+"Database Error" + "\n We will fix Wait for some time!!" + "\nsorry for the inconvenience");
	}

    
    %>  
  
   
 </div>
</body>
</html>