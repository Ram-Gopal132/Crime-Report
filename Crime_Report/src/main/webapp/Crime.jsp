
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility


if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
	{
	
		response.sendRedirect("ErrorPage1.jsp");
	
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
<title>Insert title here</title>
<link rel="stylesheet" href="css/crime.css" />
<link rel="stylesheet" href="css/style.css"/>
<script lang="JavaScript" type="text/javascript"
	src="JavaScript/Proj1.js"></script>

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
				String[] months={"January","February","March","April","May",
						"June","July","August","September","October","November","December"};
					
				Connection cn=(Connection)application.getAttribute("CONN");
								
				PreparedStatement ps=cn.prepareStatement("select distinct State_name from state_city");
				ResultSet rs=ps.executeQuery();
					
		%>


		<div class="contain">
					
					
					<div class="h">		
					<h3>Crime Statistics</h3>
					</div>
					
					
					
					<select class="select" name="cmb_state"  onchange="populateCities(this.value)" id="cmb1">
					
							<option value="" selected>-select state name-</option>
							
							
							<%
							
								while(rs.next())
									{
									
									
							%>
							
							<option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
							
							<%
									}
							
							
							%>
							
							
					
					
					</select>
					
					<select class="select" name="cmb_city"  id="info" onchange="populateStats()">
					
							<option value="" selected>-select city name-</option>
							
						
					
					</select>
					
					
					</div>
					<div align="center" id="display"></div>
					

</body>
</html>