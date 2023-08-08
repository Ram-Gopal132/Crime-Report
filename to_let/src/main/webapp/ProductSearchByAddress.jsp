
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



	<% 
	
							String _name=request.getParameter("name");
						
							Connection cn=(Connection)application.getAttribute("CONN");
							PreparedStatement ps=cn.prepareStatement("select * from product_info where pname like '%"+_name+"%'");
							
							ResultSet rs=ps.executeQuery();
						
						%>
						
						
					
					
							<tr bgcolor="blue"><th colspan="4"><font face="verdana" color="white">HOSPITAL DETAILS</font></th></tr>
							
							<%
							
								while(rs.next())
									{
									
									%>
									
							
					<tr><td width="25%"></td><td><font face="consolas" color="brown"><b>Product Name</b></font></td><td><font color="green"><%=rs.getString(2) %></font></td><td width="25%"><a href="HospitalImage.jsp?hid=<%=rs.getString(1)%>"><img src="HospitalImage.jsp?hid=<%=rs.getString(1)%>" width="150" height="150"/></a></td> </tr>
					<tr><td><font face="courier" color="brown"><b>Description</b></font></td><td colspan="3"><font color="blue"><%=rs.getString(4) %></font></td> </tr>	
					<tr><td><font face="courier" color="brown"><b>Address</b></font></td><td colspan="3"><font color="blue"><%=rs.getString(5) %></font></td> </tr>
					<tr><td><font face="courier" color="brown"><b>Contact No.</b></font></td><td colspan="3"><font color="blue"><%=rs.getString(6) %></font></td> </tr>			
					<tr bgcolor="lightgreen"><td colspan="4" align="center"><a href="">Store In Visited Pages</a></td></tr>				
									<% 
									
									
									}
							
							
							
							%>
					
					
					
					

</body>
</html>