
<%
if (session.getAttribute("uid") == null || session.getAttribute("ps") == null) {

	response.sendRedirect("Error.jsp");

}
%>

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
			<td width="20%" border="0"></td>
			<td colspan="2" align="center"><jsp:include page="Menu.jsp" /></td>
			<td width="" border="0"></td>
		</tr>

		<tr>
			<td colspan="2" align="center">

				<table cellpadding="5" cellspacing="0" border="0" width="80%"
					bgcolor="lightyellow">

					<tr bgcolor="sky blue">
						<th><font color="white">ADMIN FORMS</font></th>
					</tr>
					<tr>
						<td align="center"><a href="AnotherAdminSignup.jsp">ANOTHER
								ADMIN SIGNUP</a></td>
					</tr>
					<tr>
						<td align="center"><a href="ComplainResponse.jsp">COMPLAINT
								RESPONSE</a></td>
					</tr>

					<tr>
						<td align="center"><a href="CrimeStatisticsEntry.jsp">CRIME
								STATISTICS ENTRY</a></td>
					</tr>

					<tr>
						<td align="center"><hr /></td>
					</tr>

				</table>


			</td>

		</tr>



	</table>
</body>
</html>