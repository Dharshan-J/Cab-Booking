<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}
body{
    font-family: Arial, Helvetica, sans-serif;
    background-image: url("https://www.goteso.com/products/assets/images/taxi-app-development-banner.png");
    background-size:65%;
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
form{
    margin-left: 525px;
    margin-top: 150px;
}
p{
    margin-top: -7px;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-top: -5px;
  margin-bottom: 8px;
}

.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 9px 9px;
  margin: 2px 0 0 25%;
  border: none;
  cursor: pointer;
  width: 50%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

a {
  color: dodgerblue;
}
h2{
text-align: center;
margin-top: -1px;
}

.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>

  
<form action="login" method="post">
    <div class="container">
    <h2>Login</h2>
    <hr>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
    <hr>
    <p>Not have a account? <a href="registration.jsp">Register</a>.</p>

    <button type="submit" class="registerbtn">Login</button>
  </div>
</form>
</body>
</html>