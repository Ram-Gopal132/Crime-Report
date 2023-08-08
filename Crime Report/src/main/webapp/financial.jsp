




<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility


if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
	{
	
		response.sendRedirect("ErrorPage.jsp");
	
	}

%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>HomePage</title>

</head>

<style>
body {background-color: #C0C0C0;}
</style>
<body>
	<table cellpadding="10" cellspacing="0" border="0" width="100%">

		<tr>
			<td colspan="2" align="center"><jsp:include page="banner.jsp" /></td>
		</tr>

		<tr>
			<td width="15%" border="0"></td>
			<td colspan="2" align="center"><jsp:include page="Menu.jsp" /></td>
			<td width="" border="0"></td>
		</tr>

		<tr>
			<td colspan="2" align="center">
				<%
				String category = "Financial Frauds";
				Connection cn = (Connection) application.getAttribute("CONN");

				PreparedStatement ps = cn.prepareStatement("select * from complaint_info where complaint_category=?");

				ps.setString(1, category);

				ResultSet rs = ps.executeQuery();
				%>

				<table cellpadding="5" cellspacing="0" border="0" width="100%"
					bgcolor="lightyellow">


					<tr bgcolor="sky blue">
						<th colspan="6"><font color="white">FINANCIAL
								COMPLAINTS</font></th>
					</tr>

					<%
					while (rs.next()) {
					%>


					<tr>
						<td width="1%"></td>
						<td><font color="red">Complainant</font></td>
						<td><%=rs.getString(3)%></td>
						<td><font color="red">Area</font></td>
						<td><%=rs.getString(6)%></td>
						<td width="10%" rowspan="3"><img
							src="EvidenceImage.jsp?cid=<%=rs.getString(1)%>" border="1"
							width="150" height="150"></td>
					</tr>
					<tr bgcolor="#D5F5E3">
						<td width="1%"></td>
						<td><font color="red">My Complain</font></td>
						<td colspan="2"><%=rs.getString(4)%></td>
						<td></td>
					</tr>
					<tr>
						<td width="1%"></td>
						<td><font color="green">Complain Time</font></td>
						<td><%=rs.getString(7)%></td>
						<td><font color="green">Solution Time</font></td>
						<td><%=rs.getString(8)%></td>
					</tr>
					<tr bgcolor="#FDEBD0">
						<td colspan="6"><font face="courier" color="red">Complain
								Response: <b><font color="blue"><%=rs.getString(9)%></font></b></td>
					</tr>
					<tr>
						<td colspan="6"><hr></td>
					</tr>

					<%
					}
					%>



				</table>



			</td>

		</tr>



	</table>
</body>
</html>