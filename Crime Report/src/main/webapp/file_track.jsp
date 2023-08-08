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
			<td colspan="2" align="center"><%!String[] category = { "Child/Woman Related", "Cyber Crime", 
					"Financial Frauds", "Rape","Murder/Attempt To Murder" };%>


				<form method="post" action="UploadCrimeServlet"
					enctype="multipart/form-data">

					<table cellpadding="5" cellspacing="0" border="0" width="70%"
						bgcolor="lightyellow">

						<tr bgcolor="sky blue">
							<th colspan="4"><font color="white">LODGE YOUR
									COMPLAINT HERE</font></th>
						</tr>

						<tr>
							<td width="35%"></td>
							<td colspan="2" align="left"><select name="cmb_category">

									<option value="" selected="">-select complain
										category-</option>

									<%
									for (String _category : category) {
									%>
									<option value="<%=_category%>"><%=_category%></option>

									<%
									}
									%>


							</select></td>
							<td width="15%"></td>
						</tr>

						<tr>
							<td width="15%"></td>
							<td colspan="2" align="left"><input type="text"
								placeholder="ENTER YOUR NAME/ANONYMOUS" name="txt_name"
								required="required" /></td>
							<td width="15%"></td>
						</tr>


						<tr>
							<td width="15%"></td>
							<td colspan="2" align="left"><textarea name="ta_complain"
									placeholder="ENTER YOUR COMPLAINT HERE" rows="10" cols="40"></textarea>



							</td>
							<td width="15%"></td>
						</tr>

						<tr>
							<td width="15%"></td>
							<td colspan="2" align="left"><font color="red">EVIDENCE
									IMAGE</font> <input type="file" name="file_upload1" /></td>
							<td width="15%"></td>
						</tr>



						<tr>
							<td width="15%"></td>
							<td colspan="2" align="left"><input type="text"
								name="txt_area" placeholder="AREA OF INCIDENT"></td>
							<td width="15%"></td>
						</tr>


						<tr>
							<td colspan="4" align="center"><input type="submit"
								value="Upload Complaint"></td>
						</tr>

					</table>
				</form></td>
		</tr>
	</table>
</body>
</html>