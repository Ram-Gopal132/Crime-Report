<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/register.css" />
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


	<table cellpadding="0" cellspacing="0" border="0" width="100%">



		<%
		String _email = request.getParameter("ta_email");
		String _name = request.getParameter("ta_name");
		String _contect = request.getParameter("ta_con");
		String _address = request.getParameter("ta_address");
		String _squest = request.getParameter("ta_seq");
		String _sans = request.getParameter("ta_ans");
		String _zip_code = request.getParameter("zip_code");
		String _gender = request.getParameter("txt_gender");
		String _pass = request.getParameter("ta_pass");

		String _utype = "Normal";
		Connection cn = (Connection) application.getAttribute("CONN");
		CallableStatement csbt = cn.prepareCall("{ call sign(?,?,?,?,?,?,?,?,?,?)}");

		csbt.setString(1, _email);
		csbt.setString(2, _name);
		csbt.setString(3, _contect);
		csbt.setString(4, _address);
		csbt.setString(5, _squest);
		csbt.setString(6, _sans);
		csbt.setString(7, _zip_code);
		csbt.setString(8, _gender);
		csbt.setString(9, _pass);
		csbt.setString(10, _utype);

		csbt.execute();
		%>
		<div>
			<h1>Registration is Successful!</h1>
			<p>
				<a href="login.jsp">Click login Here!</a>
			</p>
		</div>

	</table>


</body>
</html>