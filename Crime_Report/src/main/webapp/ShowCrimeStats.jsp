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
<%
		
String sname=request.getParameter("sname");
String cname=request.getParameter("cname");



Connection cn=(Connection)application.getAttribute("CONN");

PreparedStatement ps=cn.prepareStatement("select * from statistics where state_name=? and city_name=?");
ps.setString(1, sname);
ps.setString(2, cname);


ResultSet rs=ps.executeQuery();

%>


<table cellpadding="5" cellspacing="5" border="0" width="80%" bgcolor="lightyellow" align="center">

		<tr bgcolor="#2874A6" align="center"><td><font color="white">MONTH</font></td><td><font color="white">CHILD ABUSE</font></td><td><font color="white">DOMESTIC CASES</font></td><td><font color="white">PUBLIC COMPLAINS</font></td><td><font color="white">OTHERS</font></td></tr>

		<%
			while(rs.next())
				{
				
		%>
		<tr><td align="center"><%=rs.getString(4) %></td><td align="center"><%=rs.getString(5) %></td><td align="center"><%=rs.getString(6) %></td><td align="center"><%=rs.getString(7) %></td><td align="center"><%=rs.getString(8) %></td></tr>		
				
		<%
				
				
				}
		
		%>

</table>