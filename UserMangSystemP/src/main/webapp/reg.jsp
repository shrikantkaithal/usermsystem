

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html, width=device-width, initial-scale=1"; charset="ISO-8859-1" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>Add User</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Poppins:400,700,900');
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}
body,html{
display:flex;
justify-content:center;
min-height:100vh;
align-item:center;
padding:10px;
background:linear-gradient(135deg,#71b7e6,#9b59b6);
}
.container{
 position:relative;
 max-width:600px;
 width:100%;
 height:60vh;
 background:#fff;
 padding:30px;
 margin:0 15px;
 border-radius:5px;
 }
 .container, title{
 font-size:25px;
 font-weight:1000;
 position: relative;
 color:#333;
 }
</style>
</head>
<body>
<div class="container">
<div class="title">ADD USERS</div>
<form action="reg_action.jsp" method="post" id="log" >
<div class="user-details">
<div class="input-box">
<span class="details">Name</span>
<input type="text" class="form-control" placeholder="enter name" name="name" autofocus="autofocus" required/>
</div>
<div class="input-box">
<span class="details">Age</span>
<input type="text" class="form-control" placeholder="enter name" name="age" required/>
</div>
<div class="input-box">
<span class="details">City</span>
<input type="text" class="form-control" placeholder="enter name" name="city" required/>
</div><br/>
<div class="button" style="text-align:center">
<input type="submit" class="btn btn-primary" value="Add User"  />
<a class="btn btn-primary" href="dashboard.jsp">Cancel</a>
</div>
</div>
</form>
</div>
</body>
</html>
