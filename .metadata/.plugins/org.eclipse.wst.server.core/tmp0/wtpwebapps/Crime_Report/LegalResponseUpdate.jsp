<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility


if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
	{
	
		response.sendRedirect("ErrorPage.jsp");
	
	}

%>



<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

		int cid=Integer.parseInt(request.getParameter("hid_cid"));
		String _response=request.getParameter("ta_response");

		Connection cn=(Connection)application.getAttribute("CONN");

		
		PreparedStatement ps=cn.prepareStatement("update complain set complain_solution=?,solution_date_time=?  where Cid=?");
		ps.setString(1, _response);
		ps.setString(2, (new Date()).toString());
		ps.setInt(3, cid);
		
		int a=ps.executeUpdate();
		
		if(a>0)
			{
			
					response.sendRedirect("ComplainResponse.jsp");
			}

%>

