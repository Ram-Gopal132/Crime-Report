
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

	String _uid=request.getParameter("txt_uid");
	String _password=request.getParameter("txt_pass");
	
	Connection cn=(Connection)application.getAttribute("CONN");
	
	PreparedStatement ps=cn.prepareStatement("select * from login where user_id=? and password=?");
	ps.setString(1, _uid);
	ps.setString(2, _password);
	
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
		{
		
		session.setAttribute("uid", _uid);
		session.setAttribute("ps", _password);
				if(rs.getString(3).equals("Admin"))
					{
						response.sendRedirect("Admin.jsp");
					}
				else
					{
					
						response.sendRedirect("user.jsp");
					}
		
		}
	else
		{
		
			response.sendRedirect("ErrorPage.jsp");
		}

%>