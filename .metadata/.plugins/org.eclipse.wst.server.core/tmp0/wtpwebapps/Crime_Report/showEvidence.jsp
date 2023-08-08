<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>
Show Evidence

</title>
</head>
<body>

<table cellspacing="0" cellpadding="20" width="100%">
			<tr>
				<td align="right"><img src="siteImages/logo1.jpg"
					height="100" width="100" /></td>
				<td colspan="3" align="left"><h4>CRIME REPORT SOLVER</h4></td>
				<td><a href="index.jsp"><img alt="Home"
						src="siteImages/red.png" width="27" height="27"></a></td>
			</tr>
		</table>

<%

	int _cid=Integer.parseInt(request.getParameter("cid"));

	Connection cn=(Connection)application.getAttribute("CONN");
	
	PreparedStatement ps=cn.prepareStatement("select image_evidence1 from complain where Cid=?");
	ps.setInt(1, _cid);
	
	ResultSet rs=ps.executeQuery();
	
	rs.next();
	
	Blob _image_in_blob=rs.getBlob(1);
	byte[] _image_in_bits=(byte[])_image_in_blob.getBytes(1,(int)_image_in_blob.length());
	
	OutputStream ous=response.getOutputStream();
	
	response.setContentType("image/jpg");
	ous.write(_image_in_bits);
	ous.flush();
	ous.close();

%>

</body>
</html>
