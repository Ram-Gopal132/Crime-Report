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
</head>
<body>

	<div class="container">

		<%
		Connection cn = (Connection) application.getAttribute("CONN");

		PreparedStatement ps = cn.prepareStatement("select * from complain where complain_solution=?");
		ps.setString(1, "Waiting....");

		ResultSet rs = ps.executeQuery();
		%>

		<table cellpadding="10" cellspacing="0" border="0" width="97%"
			bgcolor="lightgrey" align="center">



			<tr bgcolor="#2874A6">
				<th colspan="6"><font color="white">COMPLAIN RESPONSE</font></th>
			</tr>

			<tr>
				<td align="center"><b>CATEGORY</b></td>
				<td align="center"><b>DESCRIPTION</b></td>
				<td align="center"><b>EVIDENCE IMAGE</b></td>
				<td align="center"><b>LOCATION</b></td>
				<td align="center"><b>LEGAL RESPONSE</b></td>
				<td colspan="2"></td>
			</tr>

			<%
			while (rs.next()) {
			%>
			<tr>
				<td width="25%" align="center"><font face="times new roman"
					color="brown"><%=rs.getString(3)%></font></td>
				<td><font face="times new roman" color="green"><p><%=rs.getString(5)%></p></font></td>
				<td><a href="showEvidence.jsp?cid=<%=rs.getString(1)%>">
				<img src="showEvidence.jsp?cid=<%=rs.getString(1)%>" width="100"
						height="100" /></a></td>
				<td align="center"><font face="times new roman" color="green"><p><%=rs.getString(9)%></p></font></td>
				<td width="25%" colspan="2" align="center">
				<a href="legalresponse.jsp?cid=<%=rs.getString(1)%>">Legal
						Response</a></td>
			</tr>

			<tr>
				<td colspan="6"><br></td>
			</tr>
			<%
			
			}
	
	%>

		</table>
	</div>
</body>
</html>