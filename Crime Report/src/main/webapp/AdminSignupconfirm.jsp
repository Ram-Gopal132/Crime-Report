<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>SignUp-Confirm</title>
</head>
<style>
body {background-color: #C0C0C0;}
</style>
<body>
	<table cellpadding="10" cellspacing="0" border="1" width="100%">

	<tr>
		<td colspan="2" align="center"><jsp:include page="banner.jsp" /></td>
	</tr>

	<tr>
		
	</tr>

	<tr>
		<td colspan="2" align="center">
	<%
		String _name=request.getParameter("name");
		String _address=request.getParameter("address");
		String _email=request.getParameter("email");
		String _mobile=request.getParameter("mobile");
		String _squest=request.getParameter("cmb_quest");
		String _answer=request.getParameter("security_answer");
		String _pass=request.getParameter("password");
		String _utype="Admin";
								
	Connection cn=(Connection)application.getAttribute("CONN");
								
	CallableStatement csbt=cn.prepareCall("{ call signup(?,?,?,?,?,?,?,?)}"); 
								
		csbt.setString(1, _email);
		csbt.setString(2, _name);
		csbt.setString(3, _address);
		csbt.setString(4, _mobile);
		csbt.setString(5, _squest);
		csbt.setString(6, _answer);
		csbt.setString(7, _pass);
		csbt.setString(8, _utype);
								
	csbt.execute();
	%>
					
	<hr/>
		<h3 align="center"><font face="consolas" color="blue">SIGN UP SUCCESSFUL!</font></h3>
	<hr/>
	</td>
	</tr>
</table>
</body>
</html>