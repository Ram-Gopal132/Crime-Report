<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("product_id"));
Connection cn=(Connection)application.getAttribute("CONN");
PreparedStatement ps=cn.prepareStatement("select*from product_info where product_id=?");
ps.setInt(1,id);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	%>
	<table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
	<tr align="center">
	<td><font face="courier" color="yellow"><b><%=rs.getString(2) %></b></font></td>
	<td><font face="courier" color="green"><%=rs.getString(3) %></font></td>
	<td><font face="courier" color="green"><img src="Productimage.jsp?product_id=<%=rs.getString(1)%>" width="100" height="100"></font></td>
	<td><font face="courier" color="green"><%=rs.getString(4) %></font></td>
	<td><font face="courier" color="green"><%=rs.getString(5) %></font></td>
	<td><font face="courier" color="green"><%=rs.getString(7) %></font></td>
	<td><font face="courier" color="green"><a href="DeleteProduct.jsp?product_id=<%=rs.getString(1)%>">Delete</font></td>
	
	</tr>
	</table>
	<% 
}
%>
</body>
</html>