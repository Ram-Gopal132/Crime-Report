<%@page import="java.util.Vector"%>
<%

	int Pid=Integer.parseInt(request.getParameter("pid"));
	Vector v=(Vector)session.getAttribute("cart");
	
	
	if(v.contains(Pid))
		{
		
			out.println("Already Added!");
		}
	else
		{
		
			out.println("Item Added!");
			
			v.add(Pid);
		}


	
	

%>