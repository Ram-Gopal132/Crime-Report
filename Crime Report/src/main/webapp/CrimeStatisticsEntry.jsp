<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>HomePage</title>
<script lang="JavaScript" type="text/javascript" src="JS/Prog1.js"></script>


</head>

<style>
body {background-color: #C0C0C0;}
</style>
<body>


	<tr>
		<td colspan="2" align="center">
			<%
			String[] months = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October",
					"November", "December" };

			Connection cn = (Connection) application.getAttribute("CONN");
			PreparedStatement ps = cn.prepareStatement("select distinct state_name from state_city");
			ResultSet rs = ps.executeQuery();
			%>

			<form method="post" action="CStats.jsp">

				<table cellpadding="5" cellspacing="0" border="0" width="80%"
					bgcolor="lightyellow">


					<tr bgcolor="sky blue">
						<th colspan="4"><font color="white"> AREA WISE
								STATISTICS</font></th>
					</tr>

					<tr>
						<td width="25%"></td>
						<td>Select Month</td>
						<td><select name="cmb_month">

								<option>- select the month -</option>
								<%
								for (String _month : months) {
								%>

								<option value="<%=_month%>"><%=_month%></option>
								<%
								}
								%>

						</select></td>
						<td width="25%"></td>
					</tr>

					<tr>
						<td width="25%"></td>
						<td>Select State</td>
						<td><select name="cmb_state"
							onchange="populateCities(this.value)">

								<option>- select the state -</option>

								<%
								while (rs.next()) {
								%>
								<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>

								<%
								}
								%>
						</select></td>
						<td width="25%"></td>
					</tr>

					<tr>
						<td width="25%"></td>
						<td>Select City</td>
						<td><select name="cmb_city" id="info">

								<option>- select the city -</option>


						</select></td>
						<td width="25%"></td>
					</tr>



					<tr>
						<td></td>
						<td>Murder Cases</td>
						<td><input type="text" name="txt_murder"></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td>Cyber Cases</td>
						<td><input type="text" name="txt_cyber"></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td>Child Abuse Cases</td>
						<td><input type="text" name="txt_child"></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td>Financial Crimes</td>
						<td><input type="text" name="txt_financial"></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td>Woman Crimes</td>
						<td><input type="text" name="txt_woman"></td>
						<td></td>
					</tr>

					<tr>
						<td colspan="4" align="center"><input type="submit"
							value="Upload Status"></td>
					</tr>



				</table>
			</form>

		</td>

	</tr>



	</table>
</body>
</html>