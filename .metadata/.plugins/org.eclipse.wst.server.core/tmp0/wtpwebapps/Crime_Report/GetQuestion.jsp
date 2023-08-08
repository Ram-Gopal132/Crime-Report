<html>
<head>
<link rel="stylesheet" type="text/css" href="css/forget.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

</head>
<body>
<div class="menu">
	<table cellspacing="0" cellpadding="20" width="100%">
			<tr>
				<td align="right"><img src="siteImages/logo1.jpg"
					height="100" width="100" /></td>
				<td colspan="3" align="left"><h4>CRIME REPORT SOLVER</h4></td>
				<td><a href="index.jsp"><img alt="Home"
						src="siteImages/red.png" width="27" height="27"></a></td>
			</tr>
		</table>
		</div>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<% 
		String uid=request.getParameter("ta_email");
		Connection cn=(Connection)application.getAttribute("CONN");
				
		PreparedStatement ps=cn.prepareStatement("select Security_qus from sign_up where Email=?");
		ps.setString(1, uid);
		ResultSet rs=ps.executeQuery();
		
		
		if(rs.next())
			{
			
			%>
			<div class="contai">
			<form method="post" action="recover.jsp">					
			<font face="Sitka Text Semibold" color="white"><%=rs.getString(1)%></font>
			
			<br>
			<input type="hidden" name="hid_email" value="<%=uid%>"/>
			<input type="text" name="ta_ans" placeholder="ANSWER ME">
			<br>
			
			<input class="btn1" type="submit" value="Recover Password" >
									
			</form>
			</div>
			<%
			
			}
		else
		{
			
			
			%>
					<font color="red">User Does not Exist!</font>
			
			<%

		}

%>
</body>
</html>
