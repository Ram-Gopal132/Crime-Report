<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table cellpadding="10" cellspacing="0" border="1" width="100%">

		
		
		<tr>
		
			<td colspan="2" align="center">
			
			
					<%
					           

					            String _name=request.getParameter("name");
								String _address=request.getParameter("address");
								String _email=request.getParameter("email");
								String _mobile=request.getParameter("txt_mobile");
								String _pass=request.getParameter("psw");
								String _squest=request.getParameter("cmb_quest");
								String _answer=request.getParameter("security_answer");
								String _utype="Normal";
								
								
								Connection cn=(Connection)application.getAttribute("CONN");
								
								CallableStatement csbt=cn.prepareCall("{ call signup(?,?,?,?,?,?,?,?)}");
								
								
								csbt.setString(1, _email);
								csbt.setString(2, _name);
								csbt.setString(3, _address);
								csbt.setString(4, _mobile);
								csbt.setString(7, _pass);
								csbt.setString(5, _squest);
								csbt.setString(6, _answer);
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