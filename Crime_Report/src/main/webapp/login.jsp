<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<script lang="JavaScript" type="text/javascript"
	src="JavaScript/prog1.js"></script>
<link rel="stylesheet" href="css/login.css" />
<link rel="stylesheet" href="css/style.css" />



</head>
<body>

	<div class="menu">
		<table cellspacing="0" cellpadding="20" width="100%">
			<tr>
				<td align="right"><img src="siteImages/logo1.jpg"
					height="100" width="100" /></td>
				<td colspan="3" align="left"><h4>CRIME REPORT SOLVER</h4></td>
				<td><a href="index.jsp"><img alt="Home"
						src="siteImages/red.png" width="27" height="27"></a></td>
			</tr>
		</table>
	</div>


	<table align="center" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td colspan="4"></td>
		</tr>

		<tr>
			<td colspan="0" align="left"><br>
				<form method="post" action="Validatelogin.jsp">
					<div class="contain">
						<div class="text">
							<h1>Login</h1>

							<input class="inp" type="text" placeholder="Enter UserId"
								name="txt_uid" id="info" required> <input class="inp"
								type="password" placeholder="Enter Password" name="txt_pass"
								required>
							<p>
								<a href="Forget.jsp">Forget Password?</a>
							</p>
							<input class="btn" type="submit" value="Login">

							<p>
								Don't have an account?<span><a href="Signup.jsp" />Sign
									Up</span></a>
							</p>

						</div>
					</div>
				</form></td>
		</tr>

	</table>
</body>
</html>