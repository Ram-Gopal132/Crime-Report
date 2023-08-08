<% 

session.invalidate();
response.setHeader("Cache-Control","No-Cache");
response.setHeader("Cache=Control","No-store");
response.setDateHeader("Expires",0);
response.setHeader("Pragma","No-Cache");
response.sendRedirect("Menu.jsp");

%>