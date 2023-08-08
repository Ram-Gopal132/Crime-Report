
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

		String sname=request.getParameter("sname");
		String cname=request.getParameter("cname");
		
		Connection cn=(Connection)application.getAttribute("CONN");
		
		PreparedStatement  ps=cn.prepareStatement("select * from statistics where state_name=? and city_name=?");
		ps.setString(1, sname);
		ps.setString(2, cname);
		
		ResultSet rs=ps.executeQuery();
		
		

%>
<table cellpadding="5" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
	<tr bgcolor="blue"><th><font color="white">MONTH</font></th><th><font color="white">MURDER CASES</font></th><th><font color="white">CYBER CRIMES</font></th><th><font color="white">CHILD ABUSE</font></th><th><font color="white">FINANCIAL CRIMES<font></th><th><font color="white">WOMAN</font></th></tr>
		<%
			while(rs.next())
				{
				
				
		%>
		
	<tr align="center"><td><%=rs.getString(4) %></td><td><%=rs.getString(5) %></td><td><%=rs.getString(6) %></td><td><%=rs.getString(7) %></td><td><%=rs.getString(8) %></td><td><%=rs.getString(9) %></td></tr>	
		
		<%
				}
		
		
		%>
</table>


