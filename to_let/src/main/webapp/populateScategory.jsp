<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<option value="" selected>-select product sub category-</option>
		<%
		
				String cname=request.getParameter("cname");
		
				Connection cn=(Connection)application.getAttribute("CONN");
		
				PreparedStatement  ps=cn.prepareStatement("select  scategory_name from cscategory where category_name=?");
				ps.setString(1, cname);
				ResultSet rs=ps.executeQuery();
				
				
				while(rs.next())
					{
					%>
					
					
					<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
					
					<%
					
					}
		
		
		%>
</body>
</html>