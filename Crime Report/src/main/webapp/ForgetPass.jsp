<html>
<head>
<title>HomePage</title>

<link type="text/css" rel="stylesheet" href="CSS/style.css" />
<script lang="JavaScript" type="text/javascript" src="JS/Prog1.js"></script>
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
<style>
body {background-color: #C0C0C0;}
</style>
<body>
	<table cellpadding="10" cellspacing="0" border="0" width="100%">

	<tr>
		<td colspan="2" align="center"><jsp:include page="banner.jsp" /></td>
	</tr>

	<tr>
		<td width="15%" border="0"></td><td colspan="2" align="center"><jsp:include page="Menu.jsp" /></td><td width="" border="0"></td>
	</tr>

	<tr>
		<td colspan="2" align="center">

	<form method="post" action="Recoverpass.jsp">

		<table cellpadding="10" cellspacing="0" border="0" width="80%" bgcolor="lightyellow">
	<tr bgcolor="sky blue">
	<th colspan="4"><font color="white">FORGET PASSWORD</font></th>
						
	</tr>
	<tr>
		<td width="25%"></td>
		<td align="center">USERID</td>
		<td><input type="text" name="txt_uid" id="uid"></td>
		<td width="25%"><a href="javascript: getQuestion()">Get Security Question</a></td>
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