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
	<tr><td colspan="2" align="center"><jsp:include page="banner.jsp"/></td></tr>
	<tr><td colspan="2" align="center"><jsp:include page="menu.jsp"/></td></tr>
	<tr>
			<td colspan="2" align="center"></td>
		</tr>

	
	
	 <tr><td colspan="2" align="center">
	 
	 
	 				<font color="red">Hello.......<%=session.getAttribute("uid") %></font>
	 				
	 				<br>
	 				<br>
	 				
	 				<form method="post" action="OrderStatusConfirm.jsp">
	 				
	 					<table cellpadding="5" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
	 						
	 							<tr bgcolor="blue"><th colspan="4"><font color="white">ORDER STATUS TRACKING</font></th></tr>
	 							<tr><td width="25%"></td><td>Order Id</td><td align="center"><input type="text" name="txt_orderid"></td><td width="25%"></td></tr>
	 							<tr><td colspan="4" align="center"><input type="submit" value="Track Order"></td></tr>
	 					
	 					
	 					
	 					
	 					</table>
	 				
	 				
	 				</form>
	 				
	 				
	 
	 	
	 
	 </td></tr>
	 
	 </table>
	
</body>
</html>