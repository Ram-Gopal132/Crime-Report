<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Vector"%>
<%

		if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
			{
			
				response.sendRedirect("ErrorPage.jsp");
			}


%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table cellpadding="10" cellspacing="0" border="0" width="100%">
		<tr>
			<td colspan="2" align="center"><jsp:include page="banner1.jsp" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><jsp:include page="menu.jsp" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center"></td>
		</tr>



		<tr>
			<td colspan="2" align="center"><font color="red">Hello.......<%=session.getAttribute("uid") %></font>


				<%
				

				Connection cn = (Connection) application.getAttribute("CONN");

				String _orders = request.getParameter("orders");
				double _amount = Double.parseDouble(request.getParameter("cost"));

				PreparedStatement ps = cn
						.prepareStatement("insert into order_id(order_description,user_id,payment_amount) values(?,?,?)");
				ps.setString(1, _orders);
				ps.setString(2, "" + session.getAttribute("uid"));
				ps.setDouble(3, _amount);

				int a = ps.executeUpdate();

				if (a > 0) {
					PreparedStatement p1 = cn.prepareStatement("select max(order_id) from order_id where user_id=?");
					p1.setString(1, "" + session.getAttribute("uid"));
					
					ResultSet rs1 = p1.executeQuery();

					rs1.next();

					out.println("<h3 align=center>Your Order is Confirmed and Your Order Id is::" + rs1.getString(1) + "</h3>");

				}
				%></td>
		</tr>


	</table>

</body>
</html>