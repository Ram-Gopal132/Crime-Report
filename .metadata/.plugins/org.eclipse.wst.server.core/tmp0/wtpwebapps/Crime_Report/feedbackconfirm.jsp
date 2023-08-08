
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css"/>
<link  rel="stylesheet" type="text/css" href="css/mystyle.css"/>
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
	String _name=request.getParameter("txt_name");
	String _userid=request.getParameter("txt_user");
	String _Feedback=request.getParameter("ta_desc");
	Connection cn = (Connection) application.getAttribute("CONN");
	PreparedStatement ps=cn.prepareStatement("insert into feedback(Name,Email,Message)values(?,?,?)");
	
	ps.setString(1,_name);
	ps.setString(2,_userid);
	ps.setString(3,_Feedback);
	
	ps.execute();
%>


	
<h3 align="center">Feedback Submit</h3>



</body>
</html>