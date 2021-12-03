<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>UserRegister</title>
<style>
* {
  box-sizing: border-box;
}
body{
    font-family: Arial, Helvetica, sans-serif;
    background-image: url("https://www.goteso.com/products/assets/images/taxi-app-development-banner.png");
    background-repeat: repeat;   
}
.container {
  height: 350px;
  width: 450px;
  padding: 12px;
  background-color: white;
}
input[type=text], input[type=password] {
  width: 100%;
  padding: 10px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
</style>
</head>
<body>

	<nav>
	
	</nav>
	
	<div class="container">
		<div class="row justify-content-center">
		<div class="col" style="border:2px solid;margin-top:50px;background-color:white">
		<form class="form-group" action="register" method="post">
			<span>Your Name</span>
			<input class="form-control mb-3 " name="uname" type="text" required> 
			<span>E-Mail</span>
			<input class="form-control mb-3" name="mail" type="email" required> 
			<span>Password</span>
			<input class="form-control mb-3" name="password" type="password" required> 
			<span>Re-enter Password</span>
			<input class="form-control mb-3" name="re-password" type="password" required> 
			<button type="submit" class="btn btn-primary mb-4">Register</button> 
			<p> Already have an account <a href="login.jsp">Sign In</a></p>
			</form>
			</div>
			
			
		</div>
	</div>
	

	
		
		
		
		
		
		
		
	<script
      src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
</body>

</html>
