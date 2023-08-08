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
				
							String _month=request.getParameter("cmb_month");
							String _state=request.getParameter("cmb_state");
							String _city=request.getParameter("cmb_city");
							
							String _cabuse=request.getParameter("txt_cabuse");
							String _domestic=request.getParameter("txt_domestic");
							
							String _public =request.getParameter("txt_pincidents");
							
							String _others=request.getParameter("txt_others");
							
							Connection cn=(Connection)application.getAttribute("CONN");
							
							PreparedStatement ps=cn.prepareStatement("insert into statistics(state_name,city_name,month,child_abuse,domestic_cases,public_complain,others)values(?,?,?,?,?,?,?)");
							ps.setString(1,_state);
							ps.setString(2,_city);
							ps.setString(3,_month);
							ps.setString(4,_cabuse);
							ps.setString(5,_domestic);
							ps.setString(6,_public);
							ps.setString(7,_others);
							
							ps.execute();
				
				
				%>
				<h3 align="center">UpdateStatistics</h3>
		
</body>
</html>