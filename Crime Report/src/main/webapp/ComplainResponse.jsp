<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>HomePage</title>

</head>
<style>
body {
	background-color: #C0C0C0;
}
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
				Connection cn = (Connection) application.getAttribute("CONN");
				String cstatus = "Pending";
				PreparedStatement ps = cn.prepareStatement("select * from complaint_info where complain_status=? ");
				ps.setString(1, cstatus);

				ResultSet rs = ps.executeQuery();
				%>

				<table cellpadding="5" cellspacing="0" border="0" width="90%"
					bgcolor="lightyellow">

					<tr bgcolor="Sky blue">
						<th colspan="7"><font color="white">COMPLAINTS</font></th>
					</tr>
					<tr bgcolor="#99e6b3 ">
						<th></th>
						<th><%=rs.getMetaData().getColumnLabel(1).toUpperCase()%></th>
						<th><%=rs.getMetaData().getColumnLabel(2).toUpperCase()%></th>
						<th><%=rs.getMetaData().getColumnLabel(4).toUpperCase()%></th>
						<th><%=rs.getMetaData().getColumnLabel(5).toUpperCase()%></th>
						<th><%=rs.getMetaData().getColumnLabel(6).toUpperCase()%></th>
						<th></th>
					</tr>
					<%
					while (rs.next()) {
					%>

					<tr>
						<td></td>
						<td align="center"><b><%=rs.getString(1)%></b></td>
						<td><b><font color="blue"><%=rs.getString(2)%></font></b></td>
						<td><b><font color="red"><%=rs.getString(4)%></font></b></td>
						<td><a href="EvidenceImage.jsp?cid=<%=rs.getString(1)%>"><img
								src="EvidenceImage.jsp?cid=<%=rs.getString(1)%>" width="100"
								height="100"></a></td>
						<td><%=rs.getString(6)%></td>
						<td width="15%"><a
							href="LegalResponse.jsp?cid=<%=rs.getString(1)%>">Legal
								Response</a></td>
					</tr>

					<tr>
						<td colspan="7"><hr /></td>
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