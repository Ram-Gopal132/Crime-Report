<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

int pid=Integer.parseInt(request.getParameter("product_id"));


Connection cn=(Connection)application.getAttribute("CONN");

PreparedStatement ps=cn.prepareStatement("delete from product_info where product_id=?");
ps.setInt(1, pid);

int a=ps.executeUpdate();

if(a>0)
	{
		response.sendRedirect("productview.jsp");	
	}


%>