<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>

<head>

<title>HomePage</title>

<link type="text/css" rel="stylesheet" href="csss/style.css" />

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
									String _uid=request.getParameter("txt_uid");
									String _answer=request.getParameter("security_answer");
									
									Connection cn=(Connection)application.getAttribute("CONN");
									
									PreparedStatement ps=cn.prepareStatement("select * from user_info where email=? and security_ans=?");
									ps.setString(1, _uid);
									ps.setString(2, _answer);
									
									ResultSet rs=ps.executeQuery();
									
									if(rs.next())
										{
										
										%>
										
										<form method="post" action="Updatepassword.jsp">
												<input type="hidden" name="hid_uid" value="<%=_uid%>">
											<table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
													<tr bgcolor="blue"><th colspan="4"><font color="white">UPDATE PASSWORD</font></th></tr>
													<tr><td width="25%"></td><td>New Password</td><td><input type="password" name="psw"></td><td width="25%"></td></tr>
													<tr><td width="25%"></td><td>Retype Password</td><td><input type="password" name="psw-repeat"></td><td width="25%"></td></tr>
													<tr><td colspan="4" align="center"><input type="submit" value="Update Password"></td></tr>
											
											
											</table>
										
										
										
										
										
										
										</form>
										
										
										
										<%
										
										}
									else
									{
										
										%>
										
										<h4 align="center"><font color="red">Answer Incorrect!</font></h4>
										
										<%
										
									}
								
								
								%>



			</td>

		</tr>

	</table>



</body>


</html>