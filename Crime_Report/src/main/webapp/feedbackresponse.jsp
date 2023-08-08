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
<link rel="stylesheet" href="css/complainres.css" />
<link rel="stylesheet" href="css/style.css"/>
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

	<div class="container">

		<%
		Connection cn = (Connection) application.getAttribute("CONN");

		PreparedStatement ps = cn.prepareStatement("select * from feedback where Response=?");
		ps.setString(1, "Pending..");

		ResultSet rs = ps.executeQuery();
		%>

		<table cellpadding="10" cellspacing="0" border="0" width="100%"
			bgcolor="lightgrey" align="center">



			<tr bgcolor="#2874A6">
				<th colspan="6"><font color="white">FEEDBAK RESPONSE</font></th>
			</tr>

			<tr>
				<td align="center"><b>NAME</b></td>
				<td align="center"><b>EMAIL</b></td>
				<td align="center"><b>FEEDBACK MESSAGE</b></td>
				<td colspan="2"></td>
			</tr>

			<%
			while (rs.next()) {
			%>
			<tr>
				<td width="25%" align="center"><font face="times new roman"
					color="brown"><%=rs.getString(1)%></font></td>
					<td width="25%" align="center"><font face="times new roman"
					color="brown"><%=rs.getString(2)%></font></td>
					<td width="25%" align="center"><font face="times new roman"
					color="brown"><%=rs.getString(3)%></font></td>
			</tr>

			<tr>
				<td colspan="4"><br></td>
			</tr>
			<%
			
			}
	
	%>

		</table>
	</div>
</body>
</html>