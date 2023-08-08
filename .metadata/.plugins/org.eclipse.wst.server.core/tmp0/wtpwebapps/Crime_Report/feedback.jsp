
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility


if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
	{
	
		response.sendRedirect("ErrorPage1.jsp");
	
	}

%>

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback</title>
<link rel="stylesheet" href="css/feedback.css"/>
<link rel="stylesheet" href="css/style.css"/>
<script lang="JavaScript" type="text/javascript" src="JavaScript/prog1.js"></script>
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
	
	
			
	<form action="feedbackconfirm.jsp">
	
		<div class="container">
		<h3>Feedback Form</h3>
		<input type="text" name="txt_name" placeholder="Enter Your Name"/>
		<input type="hidden" name="txt_user" id="userid" placeholder="Enter user_id" value="<%=session.getAttribute("uid")%>"/>
		<textarea class="txtarea" placeholder="Enter Your Feedback Message" name="ta_desc" rows="4" cols="50"></textarea>
		<input class="btn" type="submit" value="Submit">
		</div>
		</form>
		
</body>
</html>