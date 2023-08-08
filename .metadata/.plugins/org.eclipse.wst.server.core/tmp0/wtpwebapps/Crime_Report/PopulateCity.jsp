<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>


<option value="" selected>-select city name-</option>
<%
	String sname=request.getParameter("sname");

	Connection cn=(Connection)application.getAttribute("CONN");
	
	PreparedStatement ps=cn.prepareStatement("select City_name from state_city where State_name=?");
	ps.setString(1, sname);
	
	ResultSet rs=ps.executeQuery();
	
	while(rs.next())
		{
		
		
	%>
	
	<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
	
	
	
	<%
		}


%>