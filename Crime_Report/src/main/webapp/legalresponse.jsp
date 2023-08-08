
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



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LegalResponse</title>
<link rel="stylesheet" href="css/forget.css"/>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
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
	int cid=Integer.parseInt(request.getParameter("cid"));

	Connection cn=(Connection)application.getAttribute("CONN");
	
	PreparedStatement ps=cn.prepareStatement("select description from complain where Cid=?");
	
	ps.setInt(1, cid);
	
	ResultSet rs=ps.executeQuery();
	rs.next();


%>
<div align="center">
<form method="post" action="LegalResponseUpdate.jsp">

<input type="hidden" name="hid_cid" value="<%=cid%>">

<table cellpadding="10" cellspacing="10" border="0" width="70%" height="450px" bgcolor="lightyellow" align="center">

	<tr bgcolor="blue" height="20px"><th colspan="4"><font color="white">LEGAL COMPLAIN RESPONSE</font></th></tr>
	<tr><td width="25%"></td><td><font face="courier" color="red">Complain Id</font></td><td><%=cid %></td><td width="25%"></td></tr>
	<tr><td></td><td><font face="courier" color="red">Complain Text</font></td><td><%=rs.getString(1) %></td><td></td></tr>
	<tr><td colspan="4" align="center">
			<textarea name="ta_response" placeholder="ENTER RESPONSE" rows="10" cols="50"></textarea>
	
	
	</td></tr>
	
	<tr><td colspan="4" align="center"><input class="btn" type="submit" value="Update Response"></td></tr>
	
	<tr><td colspan="4"></td></tr>
	<tr><td></td></tr>

</table>
</form>
</div>
</body>
</html>