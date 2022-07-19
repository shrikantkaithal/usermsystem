<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
<%
String uname=request.getParameter("name");
String pass=request.getParameter("pass");
  if(uname.equals("admin") && pass.equals("admin@123"))
  {
   session.setAttribute("name", uname);
   RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
   rd.include(request, response);
   //response.sendRedirect("dashboard.jsp");
  }
  else
  {
	  out.println("Username and Password is wrong.....");
  }
  

		 
%>
</body>
</html>