<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home_page</title>
<script lang="javaScript" type="text/javascript">
function popupwindow(url, title, w, h)
{
	var left = (screen.width/2)-(w/2);
	var top = (screen.width/2)-(h/2);
	return window.open(url, title, 'toolbar=no', location=no, status=no, menubar=no, scrollbar=no, resizable=no,copyhistory=no, width='+w+', hight='+h+' , top='+top+', left='+left+');
}

</script>
</head>
<body>
<table cellpadding="10", cellspacing ="0", border="1", width ="10%">
<tr><td colspan="2" align="center"><jsp:include  page="navigation.jsp"/></td></tr>
<tr><td colspan="2" align="center"><a href="" onclick="popuwindow('login.jsp','login here', 500,700)"><font face="courier">login </font></a></td></tr>
<tr><td colspan="2" align="center"><jsp:include  page="image.jsp/"/></td></tr>

</table>
</body>
</html>