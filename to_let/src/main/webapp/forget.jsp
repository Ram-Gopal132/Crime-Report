<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<html>

<head>

<title>HomePage</title>

<link type="text/css" rel="stylesheet" href="login.css" />


<script lang="JavaScript" type="text/javascript" src="js/prog.js"></script>

<script lang="JavaScript" type="text/javascript">
	function checkPassword() {

		if (document.getElementById("info").value != document
				.getElementById("info1").value) {

			document.getElementById("msg").innerHTML = "<font face=verdana color=red size=2><b>*PASSWORD MISMATCH</b></font>";

		} else {
			document.getElementById("msg").innerHTML = "";

		}

	}
</script>

</head>
<body>

	<table cellpadding="10" cellspacing="0" border="0" width="100%">
		<tr>
			<td colspan="2" align="center"><jsp:include page="banner1.jsp" /></td>
		</tr>

		<tr>
			<td colspan="2" align="center"><jsp:include page="menu.jsp" /></td>
		</tr>


		<tr>
			<td colspan="2" align="center">


				<form method="post" action="recoverpassword.jsp">

					<table cellpadding="10" cellspacing="0" border="0" width="70%"
						bgcolor="light blue">
						<tr bgcolor="green">
							<th colspan="4"><font color="white">FORGET PASSWORD
									FORM</font></th>
						</tr>
						<tr>
							<td width="25%"></td>
							<td align="center">ENTER USERID</td>
							<td><input type="text" name="txt_uid" id="uid"></td>
							<td width="25%"><a href="javascript: getQuestion()">Get
									Security Question</a></td>
						</tr>
						<tr>
							<td colspan="4" align="center" id="info"></td>
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
