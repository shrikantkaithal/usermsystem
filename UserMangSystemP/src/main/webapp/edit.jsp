<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="DBConnection.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="ISO-8859-1" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<title>Edit Form</title>

<style type="text/css">
*{
margin:0;
padding:0;
box-sizing:border-box;
}
body{
display:flex;
justify-content:center;
align-item:center;
padding:10px;
height:100vh;
margin:0%;
font-family: Arial, Helvetica, sans-serif;
background:linear-gradient(135deg,#71b7e6,#9b59b6);
}



.container{
 max-width:500px;
 width:100%;
 backgroumd:#fff;
 padding:25px 30px;
 border-radius:5px;
 }
 
 .container, title{
 font-size:25px;
 font-weight:500;
 position: relative;
 }



</style>
</head>

<body>
<%
try{
	  Connection con=getConnection();
	  PreparedStatement ps=con.prepareStatement
			  ("select * from usm1 where id=?");
	  ps.setString(1, request.getParameter("id"));
	  
      ResultSet rs=ps.executeQuery();
      rs.next();
      
      int id=rs.getInt("id");
      String name=rs.getString("name");
      int age=rs.getInt("age");
      String city=rs.getString("city");
 %>

<div class="container">
 <div class="title">EDIT USERS DATA</div>

	<form  onsubmit="return whitespace()" action="edit_action.jsp" method="post" id="log">
	  
	  <div class="user-details">
	 
	  <div class="input-box">
	  <span class="details"><b>ID</b></span>
	  <input type="text" class="form-control" name="id" value="<%= id %>" autofocus="autofocus" required="required">
	  </div><br/>
	  
	  <div class="input-box">
	  <span class="details"><b>NAME</b></span>
	  <input type="text" class="form-control" id="name1"name="name" value="<%= name %>"/>
	  </div><br/>
		 
	  <div class="input-box">
	  <span class="details" ><b>AGE</b></span>
	  <input type="text" class="form-control" id="age1" name="age" value="<%= age %>"/>
	  </div><br/>
		 
	  <div class="input-box">	 
	  <span class="details"><b>CITY</b></span>
	  <input type="text"  class="form-control"id="city1" name="city" value="<%= city %>"/>
	  </div><br/>
		 
		 <div class="button" style="text-align:center">
		 <input type="submit" class="btn btn-primary" value="Update" onclick="return confirm('Confirm  Details');"/>
		 <a class="btn btn-primary" href="dashboard.jsp">Cancel</a>
		 </div>
		 </div>
		</form>
		</div>
<%
}catch(Exception e)
{
e.printStackTrace();
}
%> 	 

</body>
</html>
