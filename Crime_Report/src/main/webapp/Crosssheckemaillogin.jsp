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
<script lang="JavaScript" type="text/javascript" src="javaScript/prog1.js"></script>
</head>
<body>
	
	<%
	
	
	String email=request.getParameter("value");
	Connection cn=(Connection)application.getAttribute("CONN");
	
	PreparedStatement ps=cn.prepareStatement("select * from login where user_id=?");
	ps.setString(1,email);
	
	
	ResultSet rs=ps.executeQuery();
	
	if(!rs.next())
	{
		%>
		
		<p><font>Not Exist!</font></p>
		<br>
		
		
		<%
	}
	
	
	%>
	
</body>
</html>