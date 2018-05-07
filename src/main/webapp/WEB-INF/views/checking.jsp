<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "javax.servlet.*" %>
<%@ page import = "com.aws.codestar.projecttemplates.configuration.*" %>

<% 
   DatabaseConnection database_connection_object = new DatabaseConnection();
   Statement stmt = database_connection_object.getConnection();
       
   String leaderboard_query = "insert into leaderboard values('Abhishek', '5h1dabhi@gmail.com', 500,  120002)";
   int i = stmt.executeUpdate(leaderboard_query);
  
   
   
   
%>
  
</body>
</html>