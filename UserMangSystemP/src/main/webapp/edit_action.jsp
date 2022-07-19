<%@page import="org.apache.tomcat.util.http.parser.Authorization"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="DBConnection.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int k=0; %>


<%
 

try{
	 PrintWriter pw=response.getWriter();
	 response.setContentType("text/html"); 
	 
	 Connection con=getConnection();
	 
	  String id=request.getParameter("id");
	  String name=request.getParameter("name");
	  String age=request.getParameter("age");
	  String city=request.getParameter("city");
	  
	  PreparedStatement ps=con.prepareStatement
	  ("update usm2 set name=?,age=?,city=? where id=?");
	  
	  ps.setString(1, request.getParameter("name"));
	  ps.setInt(2, Integer.parseInt(request.getParameter("age")));
	  ps.setString(3, request.getParameter("city"));
	  ps.setInt(4, Integer.parseInt(request.getParameter("id")));
	 
	   k=ps.executeUpdate();
	  
	  if(k==1)
	  {
		 pw.println("<b>Update Sucessfully..</b>");
		 RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
	     rd.include(request, response);
	  }
	  else
	  {
		  pw.println("<b> Not Update data error ..</b>");
			 RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
		     rd.include(request, response);
	  }
	  
 }catch(Exception e)
{
	 e.printStackTrace();
}
%>

</body>
</html>