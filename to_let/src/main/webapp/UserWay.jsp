<%@page import="java.util.Vector"%>
<%

		if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
			{
			
				response.sendRedirect("ErrorPage.jsp");
			}


Vector v=new Vector();

session.setAttribute("cart", v);


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
	<tr><td colspan="2" align="center"><jsp:include page="banner1.jsp"/></td></tr>
	<tr><td colspan="2" align="center"><jsp:include page="menu.jsp"/></td></tr>
	<tr>
			<td colspan="2" align="center"></td>
		</tr>

	
	
	 <tr><td colspan="2" align="center">
	 
	 
	 				<font color="red">Hello.......<%=session.getAttribute("uid") %></font>
	 
	 
	 
	 </td></tr>
	
</body>
</html>