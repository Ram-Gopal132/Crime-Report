<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Vector"%>
<%

		if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
			{
			
				response.sendRedirect("ErrorPage.jsp");
			}


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
	 				
	 				<br>
	 				<br>
	 				
	 			<%
	 			
	 					int oid=Integer.parseInt(request.getParameter("txt_orderid"));
	 			
	 					Connection cn=(Connection)application.getAttribute("CONN");
	 			
	 					PreparedStatement ps=cn.prepareStatement("select * from order_id where order_id=? and user_id=?");
	 					ps.setInt(1,oid);
	 					ps.setString(2, ""+session.getAttribute("uid"));
	 					
	 					ResultSet rs=ps.executeQuery();
	 					
	 					rs.next();
	 					
	 					
	 					
	 			
	 			
	 			%>
	 			
	 			<h4 align="center"><font color="green">Delivery Status:<%=rs.getString(6) %></font></h4>
	 
	 	
	 
	 </td></tr>
	 
	 </table>
	
</body>
</html>