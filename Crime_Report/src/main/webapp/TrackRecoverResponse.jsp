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
<title>Track Response</title>
<link rel="stylesheet" href="css/track.css"/>

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

		<div class="track">
			
				<%
						int cid=Integer.parseInt(request.getParameter("txt_cid"));
						Connection cn=(Connection)application.getAttribute("CONN");						
						PreparedStatement ps=cn.prepareStatement("select complain_solution from complain where Cid=?");
						ps.setInt(1, cid);
						
						ResultSet rs=ps.executeQuery();
						
						if(rs.next())
							{
								
								%>
								
								
					<p><font><%=rs.getString(1)%></font></p>		
								
								
								<%

							}
				
				%>
				
			</div>
		
</body>
</html>