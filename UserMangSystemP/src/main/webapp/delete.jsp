<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="DBConnection.jsp" %>
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
 try {
      Connection con=getConnection();
      Class.forName("oracle.jdbc.driver.OracleDriver");
	  PreparedStatement ps=con.prepareStatement
			 ("delete from usm2 where id=?");
	  ps.setString(1, request.getParameter("id"));
	 PrintWriter pw=response.getWriter();
	 response.setContentType("text/html");
	  int k=ps.executeUpdate();
	  if(k==1)
	  {
		  pw.println("<b> User Deleted Sucessfully.....</b>");
		  RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
		  rd.include(request, response);
		  //response.sendRedirect("dashboard.jsp");
	  }
	  else
	  {
		  pw.println("<b>Error yar kuj to galat kiya tune...</b>");
	  }
	 

	 
 }
 catch(Exception e)
 {
	 e.printStackTrace();
 }
 
 %>

</body>
</html>