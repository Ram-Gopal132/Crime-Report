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


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" type="text/css" href="css/checkpass.css" />
<link rel="stylesheet" type="text/css" href="css/forget.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script lang="JavaScript" type="text/javascript" src="JavaScript/prog1.js"></script>

<title>Next Page</title>

<script lang="JavaScript" type="text/javascript">
		function  crossCheckPass()
			{
				if(document.getElementById("pass1").value != document.getElementById("pass2").value)
					{
					
						alert("Password Mismatch!");
						
						return false;
					}
				else
					{
					
						return true;
					}
			
			}

</script>


</head>
<body>
<div class="menu">
		<table cellspacing="0" cellpadding="20" width="100%">
			<tr>
				<td align="right"><img src="siteImages/logo1.jpg"
					height="100" width="100" /></td>
				<td colspan="3" align="left"><h4>CRIME REPORT SOLVER</h4></td>
				<td><a  href="index.jsp"><img alt="Home"
						src="siteImages/red.png" width="27" height="27"></a></td>
			</tr>
		</table>

	</div>
	<% 
		String uid=request.getParameter("hid_email");
		String answer=request.getParameter("ta_ans");
		Connection cn=(Connection)application.getAttribute("CONN");		
		PreparedStatement ps=cn.prepareStatement("select * from sign_up where Email=? and Security_ans=?");
		
		ps.setString(1, uid);
		ps.setString(2, answer);
		ResultSet rs=ps.executeQuery();
		
		
		if(rs.next())
			{
			
			%>
			<div class="contai">
			<form action="Updatepass.jsp" method="post" onsubmit="return crossCheckPass()">
				<input type="hidden" name="hidden_email" value="<%=uid%>"/>
				<input type="password" name="txt_pass1" id="pass1" placeholder="ENTER NEW PASSWORD">
				<input type="password" name="txt_pass2" id="pass2" placeholder="CONFIRM NEW PASSWORD">
				<input class="btn1" type="submit" value="Update Password">
		</form>
			</div>	
			<%
			
			}
		
		else
		{
			
			
			%>
					<p><font color="white">Wrong Answer! Try Again!</font></p>
			
			<%

		}

%>


</body>
</html>