<%

if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
	{
	
		response.sendRedirect("ErrorPage1.jsp");
	
	}

%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/registerinci.css">
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
	<div class="count">
						
			<h3>ADMIN FORMS</h3>
			<div class="ano">
			
				<a href="another.jsp"><font color="white">Another Admin Sign Up Form</font></a>
			
			</div>
			
			<div class="ano">		
				<a href="ComplainResponse.jsp"><font color="white"> Complain Response</font></a>
			</div>
			
			<div class="ano">
				<a href="areawise.jsp"><font color="white"> Area Wise Crime Statics(Monthly)</font></a>
			</div>
			
			<div class="ano">
				<a href="feedbackresponse.jsp"><font color="white"> Feedback Response Your Site</font></a>
			</div>						
				
	</div>
	
</body>
</html>