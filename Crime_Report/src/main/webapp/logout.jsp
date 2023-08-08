<html>

<head>

<link rel="stylesheet" href="css/style.css"/>

</head>

<body>

<div class="menu">
	<table cellspacing="0" cellpadding="20" width="100%">
			<tr>
				<td align="right"><img src="siteImages/logo1.jpg"
					height="100" width="100" /></td>
				<td colspan="3" align="left"><h4>CRIME REPORT SOLVER</h4></td>
				<td><a href="index.jsp"><img alt="Home"
						src="siteImages/red.png" width="27" height="27"></a></td>
			</tr>
		</table>
		</div>



<% 

session.invalidate();
response.setHeader("Cache-Control","No-Cache");
response.setHeader("Cache=Control","No-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","No-Cache");
response.sendRedirect("menu.jsp");

%>

</body>
</html>