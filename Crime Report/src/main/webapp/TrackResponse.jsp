<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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

<head>
<meta charset="ISO-8859-1">
<title>Track Response</title>
<link rel="stylesheet" href="CSS/track.css"/>
</head>
<body>

	  
		<div class="track">
			
				<%
						int cid=Integer.parseInt(request.getParameter("txt_cid"));
						Connection cn=(Connection)application.getAttribute("CONN");						
						PreparedStatement ps=cn.prepareStatement("select complain_status from complaint_info where complaint_id=?");
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