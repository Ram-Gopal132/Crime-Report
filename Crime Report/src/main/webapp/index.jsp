<html>
<head>
<title>HomePage</title>
<script lang="JavaScript" type="text/javascript">
	function popuwindow(url,title,w,h){
		var left=(screen.width/2)-(w/2);
		var top=(screen.heigth/2)-(h/2);
		return window.open(url,title,'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width='+w+', height='+h+', top='+top+', left='+left+');
		
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
			<td width="15%" border="0"></td>
			<td colspan="2" align="center"><jsp:include page="Menu.jsp" /></td>
			<td width="" border="0"></td>
		</tr>

		<tr>
			<td colspan="2" align="center"><a href="login.jsp"
				onclick="popupwindow('login.jsp','Login here',500,700)"><font 
					face="courier" Style="color: red"><h3>LOGIN HERE</h3></font></a></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><jsp:include page="Sliding.jsp" /></td>
		</tr>
	</table>
</body>
</html>