<%@ page import="java.sql.Connection"%>

<%

	Connection cn=(Connection)application.getAttribute("CONN");
	if(!cn.isClosed())
		out.println("Server Connected");

%>
