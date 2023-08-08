
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility



%>


<html>
<head>
<title>Menu bar</title>
<link rel="stylesheet" href="css/style.css" />

</head>

<body>
	<div class="menu">
		<table cellspacing="0" cellpadding="20" width="100%">
			<tr>
				<td align="right"><img src="siteImages/logo1.jpg"
					height="100" width="100" /></td>
				<td colspan="3" align="left"><h4>CRIME REPORT SOLVER</h4></td>
				
			</tr>
			</table>
			
	</div>
	
	
	<header>

		<nav class="navbar">
			<ul>
				<li><a class="text_color" href="index.jsp">Home</a></li>
				<li><a class="text_color" href="#">Crime Category</a>
					<ul>
						<li><a class="text" href="childabuse.jsp">Child Abuse</a></li>
						<li><a class="text" href="publicincident.jsp">Public
								Incident</a></li>
						<li><a class="text" href="domestic.jsp">Domestic Violence</a></li>
						<li><a class="text" href="other.jsp">Others</a></li>

					</ul></li>
				<li><a class="text_color" href="registerincident.jsp">Register
						Incident</a></li>
				<li><a class="text_color" href="trackres.jsp">Track
						Response</a></li>
				<li><a class="text_color" href="Crime.jsp">Crime
						Statistics</a></li>
				<li><a class="text_color" href="feedback.jsp">Feedback</a></li>		
				<li><a class="text_color" href="contect.jsp">Contact Us</a></li>
				<li><a class="text_color" href="about.jsp">About Us</a></li>
				<li><a class="text_color" href="login.jsp">Login/SignUp</a></li>


				<% 
						if(session.getAttribute("uid")!=null && session.getAttribute("ps")!=null)
						
						{
						%>

				<li><a class="text_color" href="logout.jsp">Logout</a></li>
				<%
						}
						
						%>
			</ul>

		</nav>
	</header>
	<div class="sp"></div>

</body>
</html>