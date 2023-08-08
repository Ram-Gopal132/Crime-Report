<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/Login.css">
<title>Login Form</title>
</head>
<body>



 <div class="center">
<h1>Login</h1>
<form method="post" action="Validatelogin.jsp">
<div class="txt_field">
<input type="text" name="txt_uid" required>
<label>Username</label>
</div>
<div class="txt_field">
<input type="password" name="txt_pass" required>
<label>Password</label>
</div>
<div class="pass"><a href="ForgetPass.jsp">Forgot Password?</a></div>
<input type="submit" value="Login" >
<div class="signup_link"></div>
Not a member? <a href="signup.jsp">Signup</a>
</form> 
  </div>
</body>
</html>