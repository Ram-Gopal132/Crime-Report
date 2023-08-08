<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%


int cid = Integer.parseInt(request.getParameter("hid_cid"));
String cresponse = request.getParameter("ta_response");

Connection cn = (Connection) application.getAttribute("CONN");

PreparedStatement ps = cn
		.prepareStatement("update complaint_info set complain_status=?,solution_time=? where complaint_id=?");
ps.setString(1, cresponse);
ps.setString(2, (new Date()).toString());
ps.setInt(3, cid);

int a = ps.executeUpdate();

if (a > 0) {

	response.sendRedirect("ComplainResponse.jsp");
}
%> 