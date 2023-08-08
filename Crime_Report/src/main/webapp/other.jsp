<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility


if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
	{
	
		response.sendRedirect("ErrorPage1.jsp");
	
	}

%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Other</title>
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

	
	<%
	String _category = "Others";
	Connection cn = (Connection) application.getAttribute("CONN");

	PreparedStatement ps = cn.prepareStatement("select * from complain where category=?");
	ps.setString(1, _category);

	ResultSet rs = ps.executeQuery();
	%>

	<table cellpadding="10" cellspacing="0" border="0" width="100%"
		bgcolor="lightyellow" align="center">

		<tr bgcolor="blue">
			<th colspan="6"><font color="white">OTHER COMPLAINS</font></th>
		</tr>

		<%
		while (rs.next()) {
		%>

		<tr bgcolor="#A3E4D7">
			<td></td>
			<td><font face="courier" color="red">COMP. ID</font></td>
			<td><%=rs.getString(1)%></td>
			<td><font face="courier" color="red">COMPLAINANT</font></td>
			<td><%=rs.getString(2)%></td>
			<td rowspan="4" bgcolor="#D7BDE2" align="center"><a
				href="showEvidence.jsp?cid=<%=rs.getString(1)%>"><img
					src="showEvidence.jsp?cid=<%=rs.getString(1)%>" width="150"
					height="150"></a></td>
		</tr>


		<tr>
			<td></td>
			<td><font face="courier" color="red">Description</font></td>
			<td colspan="3"><font face="consolas" color="green">(<font
					color="brown">Complain Time:<%=rs.getString(7)%></font>)<%=rs.getString(5)%></font></td>


		</tr>

		<tr>
			<td></td>
			<td><font face="courier" color="red">Location</font></td>
			<td colspan="3"><%=rs.getString(9)%></font></td>


		</tr>

		<tr bgcolor="lightyellow">
			<td></td>
			<td><font face="courier" color="red">Response</font></td>
			<td colspan="3"><font color="Orange">(<font color="blue">Response
						Time:<%=rs.getString(8)%></font>)<%=rs.getString(6)%></font></td>


		</tr>
		<tr>
			<td colspan="6"><hr /></td>
		</tr>
		<%
		}
		%>

		<tr>
		</tr>



	</table>






</body>
</html>