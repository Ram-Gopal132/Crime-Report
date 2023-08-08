<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>

<head>

<title>HomePage</title>

<link type="text/css" rel="stylesheet" href="" />

<script lang="JavaScript" type="text/javascript" src="js/prog1.js"></script>

<script lang="JavaScript" type="text/javascript">
	function checkPassword() {

		if (document.getElementById("info").value != document
				.getElementById("info1").value) {

			document.getElementById("msg").innerHTML = "<font face=verdana color=red size=2><b>*PASSWORD MISMATCH</b></font>";

		} else {
			document.getElementById("msg").innerHTML = "";

		}

	}
</script>

</head>
<body>

	<table cellpadding="10" cellspacing="0" border="0" width="100%">

		

		<tr>
			<td colspan="2" align="center"><jsp:include page="menu.jsp" /></td>
		</tr>

		<tr>
			<td colspan="2" align="center">


							<%
									String userId=request.getParameter("hid_uid");
									String password=request.getParameter("psw");
									
									//out.println("User id::"+userId+" password::"+password);
									
									
									Connection cn=(Connection)application.getAttribute("CONN");
									
									PreparedStatement ps=cn.prepareStatement("update login set password=? where userid=?");
									ps.setString(1, password);
									ps.setString(2, userId);
									
									int a=ps.executeUpdate();
									
									if(a>0)
										{
										
										
										%>
										
										<font color="blue"><b>Password Updated! Go to Home Page then Login!</b></font>
										
										<%
										}
							
							%>


			</td>

		</tr>

	</table>



</body>


</html>
