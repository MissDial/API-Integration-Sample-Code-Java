<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="MissDial.MissDial"%>  
<%	
String servername = "localhost"; //chnage your servername name here
String username = "root";// change  yor database username name here
String password = "";// change your database password name here
String dbname = "missdial";//change your database name here

	String number = request.getParameter("number");		//get number from query string
    String datetime = request.getParameter("datetime");//get datetime from query string
    String circle = request.getParameter("circle");//get user area from query string
    String operator = request.getParameter("operator");	// get operator from query string
    String dnd = request.getParameter("dnd");	// get dnd/ndnd from query string
    String prefix = request.getParameter("prefix");	
    
    MissDial msdial = new MissDial(number);
    try {
    	
    	String connectionURL = "jdbc:mysql://localhost:3306/missdial"; 
    				
    	java.sql.Connection connection = null;

    	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		connection = DriverManager.getConnection(connectionURL, username, password);
       	if(!connection.isClosed()){
    	%>
    	<% 
    	out.println("Successfully connected to " + "MySQL server using TCP/IP...");
   		Statement stmt = connection.createStatement();
    	stmt.executeUpdate("insert into missdial (`number`) values("+msdial.getNumber()+")");
    	connection.close();
    	}
    	}
    	catch(Exception ex){
    	%>
    	<%
    	out.println(ex);
    	}
    %>
