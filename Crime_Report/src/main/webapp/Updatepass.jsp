<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script lang="JavaScript" type="text/javascript" src="js/prog1.js"></script>
<link rel="stylesheet" type="text/css" href="css/forget.css"/>
<link rel="stylesheet" href="css/style.css">
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
		
		
	
		
			<%
					
					String _Uid=request.getParameter("hidden_email");
					String _password=request.getParameter("txt_pass1");
											
					Connection cn=(Connection)application.getAttribute("CONN");
					
					CallableStatement csbt=cn.prepareCall("{ call NewPass(?,?)}");
					csbt.setString(1, _Uid);
					csbt.setString(2, _password);
					int a=csbt.executeUpdate();
							
					if(a>0)
						{
								
						%>
								
						<h3 align="center"><font face="consolas" color="red">Password Updated!<a href="login.jsp">Click Here to Login</a></font></h3>
								
								
						<%
								
						}
					
					
					%>
</body>
</html>