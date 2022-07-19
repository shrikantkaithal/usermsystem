<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="oracle.jdbc.driver.DBConversion"%>
<%@include file="DBConnection.jsp"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
<%! int k=0; %>
<%

try
{
	Connection con=getConnection();
	PreparedStatement ps=con.prepareStatement
			("insert into usm2(id,name,age,city) values(usm_seq.nextval,?,?,?)");
	
	PrintWriter pw=response.getWriter();
	response.setContentType("text/html");
	
	ps.setString(1, request.getParameter("name"));
	ps.setInt(2, Integer.parseInt(request.getParameter("age")));
	ps.setString(3, request.getParameter("city"));
	 k=ps.executeUpdate();
	 
	 if(k==1){
		 //request.setAttribute("alertMsg", "data add sucess");
		 pw.println("<b><span class='label label-default'>Sucessfully Add User...</span></b>");
		 RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
		 rd.include(request, response);
		// response.sendRedirect("dashboard.jsp");
		 //out.println("Successfully add user");
	 }else{
		 pw.println("<b><span class='label label-default'>Not Updated.....</span></b>");
		 RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
		 rd.include(request, response);
		 
	 }
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>