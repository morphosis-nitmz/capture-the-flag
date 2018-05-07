package com.aws.codestar.projecttemplates.configuration;

import java.sql.DriverManager;

import com.mysql.jdbc.Statement;

public class DatabaseConnection {

   static java.sql.Connection connection = null;
	public  static Statement getConnection() throws Exception
	{

	    // Database Info
		 String db_url = "jdbc:mysql://change_with_your_own_end_point"; // put your own endpoint link
		    String db_user = "xxxxx"; //put your password 
		    String db_password = "xxxxxx"; // put your password
	    
	    try{
	    	Class.forName("com.mysql.jdbc.Driver");
	    } catch(Exception e){
	    	System.out.println("Database Error" + "\n We will fix Wait for some time!!" + "\nsorry for the inconvenience");
	    }
	    
	    connection = DriverManager.getConnection(db_url,db_user,db_password);
	    Statement statement = (Statement) connection.createStatement();
	    
	    return statement;
	}
	public static void  getCloseConnection() throws Exception {
		
		connection.close();
	}
	
}
