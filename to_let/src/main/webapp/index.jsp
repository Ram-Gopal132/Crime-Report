<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
<script lang="javascript" type="text/javascript">
function popuwindow(url,title,w,h){
	var left = (screen.width/2)-(w/2);
	var top =(screen.hight/2)-(h/2);
	return window.open(url,title,'toolbar=no, location=no,directores=no,status=no,menubar=no,scrollbars=no,resizable=no')
}
</script>
</head>
<body>
<table cellpadding= "10" cellspacing="0" border="0" width="100%">


<tr><td colspan="2" align="center"><jsp:include page="banner1.jsp"/></td></tr>

<tr><td colspan="2" align="center"><jsp:include page="menu.jsp"/></td></tr>
<tr><td colspan="2" align="center"><a href="Home.jsp"><font></font></a></td></tr>
<tr><td colspan="2" align="center"><a href="login.jsp"><font border="4" color="black" ><h3>....LOGIN HERE....</h3></font></a></td></tr>
<br><br>
<tr><td colspan="2" align="center"><jsp:include page="image.jsp"/></td></tr>

 </table>

</body>
</html>