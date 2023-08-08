

<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility

%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

</head>
<body>
	<table align="center" cellpadding="0" cellspacing="0" width="100%">
	
		<tr>
		<td>
		
		<jsp:include page="menu.jsp"></jsp:include>
		</td>
		
		</tr>
		
		
			<tr>
				<td colspan="0" align="center" height="200px"><br>
					<form method="post" action="Validatelogin.jsp"></form>
				</td>	
			</tr>
	</table>
</body>
</html>