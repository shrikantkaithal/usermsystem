<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>UMS</title>

<style type="text/css">
body,html{

height:100vh;
margin:0%;
justify-content:center;
padding:10px;
background:linear-gradient(135deg,#71b7e6,#9b59b6);
align-item:center;
}

#log{
border:3px solid #73AD21;
padding:70px 60px;
margin-top:80px;
background-color:#F8F8FF;
}


</style>
</head>
<body>

<div clsss="container-fluid bg">
 <div class="row">
  <div class="col-md-4 col-sm-4 col-xs-12"></div>
   <div class="col-md-4 col-sm-4 col-xs-12">
    <form action="login_action.jsp" method="post" id="log">
    <center><h1>Admin Login</h1></center>
     
       <div class="form-gorup">
        <label> Username</label>
        <input type="text" class="form-control" name="name" placeholder="Enter username" autofocus>
       </div>
       
       <div class="form-group">
        <label>Password</label>
        <input type="password" class="form-control" name="pass" placeholder="Password" >
        </div>
        
        <br/>
        <button type="submit" class="btn btn-success btn-block">Login</button>
  
   </form>
  
  
 
  </div>
  </div>
  </div>
 
</body>
</html>