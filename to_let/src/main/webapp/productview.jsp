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
<script lang="javascript" type="text/javascript" src=js/prog.js></script>
</head>
<body>
<table cellpadding="10" cellspacing="0" border="1" width="100%">
<tr>
			<td colspan="2" align="center"><jsp:include page="banner1.jsp" /></td>
		</tr>

<tr >
<td colspan="2" align="center"><jsp:include  page="menu.jsp"/><br></td>
</tr>

<tr>
</tr>
<tr>
<td colspan="2" align="center">
<%
Connection cn=(Connection)application.getAttribute("CONN");
PreparedStatement ps=cn.prepareStatement("select*from product_info");
ResultSet rs=ps.executeQuery();
%>
<table cellpadding="10" cellspacing="0" border="0" width="100%" >
<tr bgcolor="green"><th colspan="3"><font color="white">Product Entery View</font></tr>
<tr><td width="15%"></td><td>

<table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="lightyellow">
<%
while(rs.next())
{
	%>
	
	<tr align="center">
	<td align="left"><font face="courier" color="black"><b><%=rs.getString(2) %></b></font></td>
	<td align="left"><font face="courier" color="green"><%=rs.getString(3) %></font></td>
	<td align="left"><font face="courier" color="green"><img src="Productimage.jsp?product_id=<%=rs.getString(1)%>" width="100" height="100"><br><b>Product Id: <%=rs.getString(1) %></b></font></td>
	<td align="left"><font face="courier" color="green"><%=rs.getString(4) %></font></td>
	<td align="left"><font face="courier" color="green"><%=rs.getString(5) %></font></td>
	<td align="left"><font face="courier" color="green"><%=rs.getString(7) %></font></td>
	<td align="left"><font face="courier" color="green"><a href="DeleteProduct.jsp?product_id=<%=rs.getString(1)%>">Delete</font></td>
	
	</tr>
	<tr><td colspan="7"><hr/></td></tr>
	
	<% 
}

%>
</table>

</td>
<td width="15%"></td>
</tr>
</table>
</body>
</html>