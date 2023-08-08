<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<option value="" selected>-select city name-</option>


<%
	String _sname=request.getParameter("sname");

	Connection cn=(Connection)application.getAttribute("CONN");
	
	PreparedStatement ps=cn.prepareStatement("select city_name from  state_city where state_name=?");
	ps.setString(1, _sname);
	
	ResultSet rs=ps.executeQuery();
	
	
	while(rs.next())
		{
		
		
		%>
		
<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>		
		
		
		<%
		
		}



%>


