<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%


		String _uid=request.getParameter("Uname");
		String _pass=request.getParameter("Pass");
		
		Connection cn=(Connection)application.getAttribute("CONN");
		
		PreparedStatement ps=cn.prepareStatement("select * from login where userid=? and password=?");
		ps.setString(1, _uid);
		ps.setString(2, _pass);
		
		ResultSet rs=ps.executeQuery();
		
		
		if(rs.next())
			{
			    session.setAttribute("uid",_uid);
			    session.setAttribute("ps", _pass);
			    
					if(rs.getString(3).equals("admin"))
						{
						
						
							response.sendRedirect("AdminForm.jsp");
							
							
						}
					else
						{
							response.sendRedirect("UserWay.jsp");
						
						}
					
			
			
			}
		else
			{
			
					response.sendRedirect("ErrorPage.jsp");
			}
		
		
%>