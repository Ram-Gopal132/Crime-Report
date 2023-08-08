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
<script lang="JavaScript" type="text/javascript" src="js/prog1.js"></script>
<link rel="stylesheet" type="text/css" href="css/checkpass.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

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
	<table cellpadding="0" cellspacing="0" border="0" width="100%">

		
		

	<%
				
			String uid=request.getParameter("ta_seq");
			String answer=request.getParameter("ta_ans");
				
			Connection cn=(Connection)application.getAttribute("CONN");
						
			PreparedStatement ps=cn.prepareStatement("select * from sign_up where Email=? and Security_ans=?");
			ps.setString(1, uid);
			ps.setString(2, answer);
						
			ResultSet rs=ps.executeQuery();
			if(rs.next())
				{
							
			    %>
			    	<p>
					<font><%=rs.getString(1)%>Security Answer Match<a href="Updatepass.jsp">Click Here Update Password!</a></font>
					</p>										
							
				<%
				}
			else
				{
							
				%>
							
				<p><font color="red">Wrong Answer! Try Again!</font></p>			
				<%
							
			}
	%>

	</table>


</body>
</html>