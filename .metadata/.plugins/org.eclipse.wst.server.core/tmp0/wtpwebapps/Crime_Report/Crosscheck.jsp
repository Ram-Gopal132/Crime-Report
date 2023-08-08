<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
	String email=request.getParameter("uid");

	Connection cn=(Connection)application.getAttribute("CONN");
	
	PreparedStatement ps=cn.prepareStatement("select * from login where user_id=?");
	ps.setString(1, email);
	
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
		{
		
		%>
		
		<font color="red"><b>*Already Exist!</b></font>
		<%
		}

%>