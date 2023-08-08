
  <!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
<tr>
			
			

<td colspan="2" align="center"><jsp:include page="banner1.jsp" /></td>

<tr><td colspan="0" align="center"><jsp:include page="menu.jsp"/></td></tr>
		</tr>

    <h2><u>Login Page</u></h2><br>
    <div class="login">
    <form id="login" method="post" action="ValidateLogin.jsp" target="_blank">
        <label><b>User Name </b>
        </label>
        <input type="text" name="Uname" id="Uname" placeholder="Username" id="username">
        <br><br>
        <label><b>Password</b>
        </label>
        <input type="Password" name="Pass" id="Pass" placeholder="Password" id="password">
        <br><br>
        <input type="submit" name="log" id="log" value="Log In Here">
        <br><br>
     
        </b>
        </label>
        
        <br><br>
        <input type="checkbox" id="check">
        <span>Remember me</span>
        <br><br>
        <a href="signup.jsp">signup</a>
        <br><br>
       <a href="forget.jsp">Forget Password</a>
    </form>
</div>
</body>