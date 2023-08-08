
<%@page import="java.util.Vector"%>


<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
 

if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
	{
	
		response.sendRedirect("Error.jsp");
	
	}
 
Vector v=new Vector();

session.setAttribute("cid", v);
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table cellpadding="10" cellspacing="0" border="0" width="100%">
	<tr><td colspan="2" align="center"><jsp:include page="banner.jsp"/></td></tr>
	<tr><td colspan="2" align="center"><jsp:include page="Menu.jsp"/></td></tr>
	
	<tr>
		<td colspan="2" align="center"></td>
		</tr>
		
		<tr><td colspan="2" align="center">
		
			<font color="red">Login Sucessfully<%=session.getAttribute("uid") %></font>
			</td></tr>
	</table>
	</form>
</body>
</html>