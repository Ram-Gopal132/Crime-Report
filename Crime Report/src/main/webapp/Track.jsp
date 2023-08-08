<html>
<head>
<title>HomePage</title>
<link rel="stylesheet" href="CSS/Track.css"/>
</head>
<style>
body {
	background-color: #C0C0C0;
}
</style>
<body>
	

		<tr>
			<td colspan="2" align="center"><jsp:include page="banner.jsp" /></td>
		</tr>

		
			<tr>
			<td width="15%" border="0"></td>
			<td colspan="2" align="center"><jsp:include page="Menu.jsp" /></td>
			<td width="" border="0"></td>
		</tr>
			
		</tr>

		<tr>
			

					<form method="post" action="TrackResponse.jsp">
					<div class="contain">

						<h2>Track Response</h2>
						<input type="text" name="txt_cid" placeholder="Enter Your Complaint Id" required/><br>
						<input class="btn" type="submit" value="Track">

						</div>

					</form>

		</tr>



	</table>
</body>
</html>