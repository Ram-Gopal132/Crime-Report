<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
	String _uid=request.getParameter("uid");

	Connection cn=(Connection)application.getAttribute("CONN");
	
	PreparedStatement ps=cn.prepareStatement("select Security_question from user_info where email=?");
	ps.setString(1, _uid);
	
	ResultSet rs=ps.executeQuery();
	if(rs.next())
		{
		%>
			<font face="consolas" color="blue"><%=rs.getString(1)%></font>
			<br>
			<br>
			
			<font face="verdana">Your Answer</font> <input type="text" name="security_answer">
			<br>
			<br>
			
			<input type="submit" value="Recover Password">
		<%
		}
	
	else
		{
		%>
		<font color="red">User Doesn't Exist!</font>
		<%
	}
		%>