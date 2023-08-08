


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
<html>
<head>
<title>HomePage</title>
<script lang="JavaScript" type="text/javascript" src="JS/Prog1.js"></script>


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
		
			<%
					String[] months={"January","February","March","April","May",
							"June","July","August","September","October","November","December"};
			
					Connection cn=(Connection)application.getAttribute("CONN");
					PreparedStatement ps=cn.prepareStatement("select distinct state_name from state_city");
					ResultSet rs=ps.executeQuery();
					
			
			%>
		
		<form method="post" action="CStats.jsp">
		
				<table cellpadding="5" cellspacing="0" border="0" width="50%" bgcolor="lightyellow">
				
				
					<tr bgcolor="sky blue"><th colspan="4"><font color="white">CRIME STATISTICS REPORT</font></th></tr>
				
					
					
					<tr>	<td width="25%"></td><td>
					
								<select name="cmb_state" onchange="populateCities(this.value)" id="cmb1">
								
										<option>- select the state -</option>
									
										<%
											while(rs.next())
												{
												
										%>
										<option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
										
										<%
												}
										
										
										%>
								</select>
					
					</td><td>
					<select name="cmb_city" id="info" onchange="populateStats()">
								
										<option>- select the  city -</option>
									
								
								</select>
					
					
					</td><td width="25%"></td>	</tr>
					
			</table>
		</form>
		
		</td>

</tr>
		


	</table>
	<div align="center" id ="display">
	
	
	</div>
	
</body>
</html>