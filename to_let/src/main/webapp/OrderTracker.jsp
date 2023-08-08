<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Vector"%>
<%
if (session.getAttribute("uid") == null || session.getAttribute("ps") == null) {

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



		<%
		Vector v = (Vector)session.getAttribute("pcart");

		Connection cn = (Connection) application.getAttribute("CONN");
		%>

		<tr>
			<td colspan="2" align="center">


				<table cellpadding="5" cellspacing="0" border="0" width="70%"
					bgcolor="lightyellow">

					<tr bgcolor="blue">
						<th colspan="4"><font color="white">MY CART</font></th>
					</tr>
					<%
					double total_price = 0;
					String orders = "";

					for (int i = 0; i < v.size(); i++) {

						PreparedStatement ps = cn.prepareStatement("select * from product_info where product_id=?");
						ps.setInt(1, Integer.parseInt("" + v.get(i)));
						ResultSet rs = ps.executeQuery();

						rs.next();
					%>

					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(4)%></td>
						<td><img src="Productimage.jsp?product_id=<%=rs.getString(1)%>"
							width="150" height="150" /></td>
						<td><%=rs.getString(7)%></td>
					</tr>

					<%
					total_price = total_price + Double.parseDouble(rs.getString(7));
					orders += rs.getString(1);

					}
					%>

					<tr>
						<th colspan="4">The Total Price is:: <%=total_price%><font
							color="red">(Only Cash on delivery Applicable)</font></th>
					</tr>

					<tr>
						<td colspan="4" align="center">


							<form method="post" action="OrderConfirm.jsp">

								<input type="hidden" name="orders" value="<%=orders%>">
								<input type="hidden" name="cost" value="<%=total_price%>" /> <input
									type="submit" value="Confirm Order">

							</form>



						</td>
					</tr>



				</table>



			</td>
		</tr>
</body>
</html>