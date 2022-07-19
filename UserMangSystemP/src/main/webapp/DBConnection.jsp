<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
public Connection getConnection()
{
	 Connection con=null;
	
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","manager1");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
		return con;
	
}

%>
</body>
</html>