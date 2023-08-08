<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>HomePage</title>
<script lang="JavaScript" type="text/javascript" src="JS/Prog1.js"></script>

<link type="text/css" rel="stylesheet" href="CSS/style.css"/>
</head>

<style>
body {background-color: #C0C0C0;}
</style>
<body>
	<table cellpadding="10" cellspacing="0" border="0" width="100%">

	<tr>
			<td colspan="2" align="center"><jsp:include page="banner.jsp" /></td>
	</tr>
	
		<tr>
			<td width="15%" border="0"></td><td colspan="2" align="center"><jsp:include page="Menu.jsp" /></td><td width="" border="0"></td>
	</tr>
	
<tr> 
		<td colspan="2" align="center">
		<%
			String _month=request.getParameter("cmb_month");
			String _state=request.getParameter("cmb_state");
			String _city=request.getParameter("cmb_city");
			String _murder=request.getParameter("txt_murder");
			String _cyber=request.getParameter("txt_cyber");
			String _child=request.getParameter("txt_child");
			String _financial=request.getParameter("txt_financial");
			String _woman=request.getParameter("txt_woman");
			
			Connection cn=(Connection)application.getAttribute("CONN");
			
			PreparedStatement ps=cn.prepareStatement("insert into statistics(state_name,city_name,months, murder_cases,cyber_cases,child_abuse,financial_cases,woman_cases) values(?,?,?,?,?,?,?,?)");
			ps.setString(1,_state);
			ps.setString(2, _city);
			ps.setString(3, _month);
			ps.setString(4, _murder);
			ps.setString(5, _cyber);
			ps.setString(6, _child);
			ps.setString(7, _financial);
			ps.setString(8, _woman);
			
			
			int a=ps.executeUpdate();
			
			if(a>0)
				{
				
						out.println("<h2 align=center>Statistics Updated!</h2>");
				}
		
		
		%>
					
		</td>

</tr>
		


	</table>
</body>
</html>