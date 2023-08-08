<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script lang="JavaScript" type="text/javascript" src="js/prog.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<style>
    select,input {
    padding: 10px;
    width: 230px;
}
#submt {
    background: green;
    color: #fff;
    width: max-content;
    border: unset;
    cursor: pointer;
    padding: 15px 18px;
}
td {
    padding-block: 10px;
}
font {
    letter-spacing: 1;
    line-height: 2;
}
#select{
    margin-top: 30px;
}
</style>
</head>
<body>
		<%
		
				Connection cn=(Connection)application.getAttribute("CONN");
		
				PreparedStatement  ps=cn.prepareStatement("select distinct category_name from cscategory");
				ResultSet rs=ps.executeQuery();
		
		
		%>

			<div align="center">
	
					<form method="post" action="RecordUploadServlet" enctype="multipart/form-data">
					
							<table cellpadding="5" cellspacing="0" border="0" width="80%" bgcolor="lightyellow">
							
									<tr bgcolor="green"><th colspan="4"><font color="white">AGRICULTURE PRODUCTS ENTRY</font></th></tr>
									
									<tr><td width="25%"></td><td colspan="2" align="center">
									
											<select id="select" name="cmb_category" onchange="populateScategory(this.value)">
											
													<option value="" selected>-select product category-</option>
													<%
														while(rs.next())
															{
															
													%>
													
													<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
													
													<%
															}
													
													%>
											
											</select>
									
									</td><td width="25%"></td></tr>
							
								<tr><td width="25%"></td><td colspan="2" align="center">
									
											<select name="cmb_scategory" id="info">
											
													<option value="" selected>-select product sub category-</option>
											</select>
									</td><td width="25%"></td></tr>
									
								<tr><td width="25%"></td><td colspan="2" align="center">
									
										<input type="text" name="txt_pname" placeholder="ENTER PRODUCT NAME">
									</td><td width="25%"></td></tr>
							
								<tr><td width="25%"></td><td colspan="2" align="center">
									
										<textarea name="ta_description" placeholder="ENTER DESCRIPTION" rows="5" cols="25"></textarea>
									</td><td width="25%"></td></tr>
									
									<tr><td width="25%"></td><td colspan="2" align="center">
									
										<label>Product Image</label>  <input type="file" name="file_upload">
									</td><td width="25%"></td></tr>
									
										<tr><td width="25%"></td><td colspan="2" align="center">
									
										<input type="text" name="txt_price" placeholder="ENTER PRODUCT PRICE" required="required">
									</td><td width="25%"></td></tr>
									
									<tr><td colspan="4" align="center"><input type="submit" id="submt" value="Upload Product"></td></tr>
									
									
									<tr><td colspan="4"><hr/></td></tr>
							
							
							</table>
					
					
					
					
					
					</form>		
			
			
			</div>
</body>
</html>