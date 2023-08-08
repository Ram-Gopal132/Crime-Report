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
				int cid = Integer.parseInt(request.getParameter("cid"));

				Connection cn = (Connection) application.getAttribute("CONN");

				PreparedStatement ps = cn.prepareStatement("select complain_text from complaint_info where complaint_id=?");
				ps.setInt(1, cid);

				ResultSet rs = ps.executeQuery();

				rs.next();
				%>

				<form method="post" action="ComplainResponseConfirm.jsp">

					<input type="hidden" name="hid_cid" value="<%=cid%>">

					<table cellpadding="5" cellspacing="0" border="0" width="70%"
						bgcolor="lightyellow">

						<tr bgcolor="sky blue">
							<th colspan="4"><font color="white">COMPLAIN RESPONSE</font></th>
						</tr>

						<tr>
							<td></td>
							<td><b>COMP ID</b></td>
							<td><%=cid%></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td><b>COMPLAIN</b></td>
							<td><%=rs.getString(1)%></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="4" align="center"><textarea name="ta_response"
									placeholder="Legal Response" rows="10" cols="50"></textarea></td>
						</tr>

 
						<tr>
							<td colspan="4" align="center"><input type="submit"
								value="Update Response"></td>
						</tr>

						<tr>
							<td colspan="4"><hr /></td>
						</tr>

					</table>
				</form>
			</td>
		</tr>
</table>
</body>
</html>