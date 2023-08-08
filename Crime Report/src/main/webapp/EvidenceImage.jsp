<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

	int cid=Integer.parseInt(request.getParameter("cid"));

	Connection cn=(Connection)application.getAttribute("CONN");
	
	PreparedStatement ps=cn.prepareStatement("select image_evidence_1 from complaint_info where complaint_id=?");
	ps.setInt(1, cid);
	
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