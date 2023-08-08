<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>
<script lang="javascript" type="text/javascript">
function popuwindow(url,title,w,h){
	var left = (screen.width/2)-(w/2);
	var top =(screen.hight/2)-(h/2);
	return window.open(url,title,'toolbar=no, location=no,directores=no,status=no,menubar=no,scrollbars=no,resizable=no')
}
</script>
</head>
<body>
<table cellpeding= "10" cellspacing="0" border="1" width="100%">


<tr><td colspan="2" align="center"><jsp:include page="banner1.jsp"/></td></tr>

<tr><td colspan="2" align="center"><jsp:include page="menu.jsp"/></td></tr>


<tr>
			<td colspan="2" align="center">
			
			<%
			
			
						Connection cn=(Connection)application.getAttribute("CONN");
						String _category="Crop";
						String _scategory="Nutrition";
						
						PreparedStatement ps=cn.prepareStatement("select * from product_info where category=? and scategory=?");
						ps.setString(1, _category);
						ps.setString(2, _scategory);
						
						ResultSet rs=ps.executeQuery();
			
			
			%>
			
			<table cellpadding="5" cellspacing="0" border="0" width="80%" bgcolor="lightyellow">
						<tr bgcolor="green"><th colspan="4"><font color="white">CROP NUTRITION</font></th></tr>
			
						<%
								while(rs.next())
									{
						%>
						
						<tr><td width="15%"></td>	<td><font color="red">PRODUCT NAME</font></td><td><font color="black"><%=rs.getString(4) %></font></td><td width="15%"></td></tr>
						<tr><td></td>	<td><font face="verdana" color="red">DESCRIPTION</font></td><td><font color="black"><%=rs.getString(5) %></font></td><td></td></tr>
						<tr><td></td>	<td><font color="red">IMAGE</font></td><td><font color="black"><img src="Productimage.jsp?product_id=<%=rs.getString(1)%>" width="100" height="100"></font></td><td></td></tr>
						<tr><td></td>	<td><font color="red">PRODUCT NAME</font></td><td><font color="black"><%=rs.getString(4) %></font></td><td></td></tr>
						<tr><td></td>	<td><font color="red">PRICE</font></td><td><font color="black"><%=rs.getString(7) %></font></td><td></td></tr>
						<tr><td colspan="4" align="center"><a href="">Add To Cart</a></td></tr>
						<tr><td colspan="4" align="center"><hr/></td></tr>
						<%
									
									}
						
						%>
			
			</table>
			
			</td>

</tr>

 </table>

</body>
</html>