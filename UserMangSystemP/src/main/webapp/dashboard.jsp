<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="oracle.jdbc.driver.DBConversion"%>
<%@page import="java.sql.*"%>
<%@include file="DBConnection.jsp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1" charset="ISO-8859-1">
  <title>USM DASHBOARD</title>
  <link rel="stylesheet" href="style.css">
  <link rel="icon" href="img/USM.png" size="196*196" >
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style type="text/css">
body,html{
height:100%;
margin:0%;
}
#log{
border:3px solid #73AD21;
padding:50px 40px;
margin-top:80px;
background-color:#F8F8FF;
}
#log2{
color:black;
}
table.center{
margin-left:auto;
margin-right:auto;
}
a:link,a:visited{
background-color:blue;
color:white;
padding:10px 30px;
text-align:center;
text-decoration:none;
display:inline-block;
}
a:hover, a:active{
background-color:red;
}
</style>
</head>
<body>
<h1><center>USM DASHBOARD</center></h1>
<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class='btn btn-primary' href='reg.jsp'>ADD USER</a>
  <div class="float-end" id="log2"><label><b>Hello <%= session.getAttribute("name") %></b></label>
   <a class="btn btn-primary" onclick="return confirm('Confirm Logout <%= session.getAttribute("name") %>');" href="logout.jsp">Logout</a><br/></div>
    <table border="1" class="table table-striped, center" id="log" style="width:60%">
      <thead>
	  <th>ID</th>
	  <th>Name</th>
	  <th>Age</th>
	  <th>City</th>
	  <th>Action</th>
	  </thead>
<%
try
{
	Connection con=getConnection();
	PrintWriter pw=response.getWriter();
	response.setContentType("text/html");
        PreparedStatement ps=con.prepareStatement("select * from usm1");
	ResultSet rs=ps.executeQuery();
        while(rs.next()){
%>               <tr>
		 <td> <%= rs.getInt("id") %> </td>
		 <td> <%= rs.getString("name") %></td>
		 <td> <%= rs.getInt("age") %></td>
		 <td> <%= rs.getString("city") %></td>
		 <td> <a class="btn btn-primary" href="edit.jsp?id=<%= rs.getInt("id") %>">Edit</a>
		 <a class="btn btn-danger" onclick="return confirm('Pakka Delete karu na dekh le bad me nahi show karunga <%= rs.getString("name") %>?');"
		    href="delete.jsp?id=<%= rs.getInt("id") %>">Delete</a>
		  </td>
		 </tr>
<%}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>
</body>
</html>
