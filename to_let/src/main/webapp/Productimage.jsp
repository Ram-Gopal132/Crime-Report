<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.io.OutputStream" %>
 <%@page import="java.sql.Blob" %>
 <%@page import="java.sql.ResultSet" %>
 <%@page import="java.sql.PreparedStatement" %>
 <%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("product_id"));
Connection cn=(Connection)application.getAttribute("CONN");
PreparedStatement ps=cn.prepareStatement("select image from product_info where product_id=?");
ps.setInt(1,id);
ResultSet rs=ps.executeQuery();
rs.next();
Blob _image_in_blob=rs.getBlob(1);
byte[]_image_in_bits=(byte[])_image_in_blob.getBytes(1,(int)_image_in_blob.length());
OutputStream ous=response.getOutputStream();
response.setContentType("image/jpg");
ous.write(_image_in_bits);
ous.flush();
ous.close();
%>
</body>
</html>