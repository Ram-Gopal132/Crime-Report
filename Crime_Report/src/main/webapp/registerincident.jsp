<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility


if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
	{
	
		response.sendRedirect("ErrorPage1.jsp");
	
	}

%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Incident</title>
<link rel="stylesheet" href="css/registerinci.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body>
	<div class="menu">
	<table cellspacing="0" cellpadding="20" width="100%">
			<tr>
				<td align="right"><img src="siteImages/logo1.jpg"
					height="100" width="100" /></td>
				<td colspan="3" align="left"><h4>CRIME REPORT SOLVER</h4></td>
				<td><a href="index.jsp"><img alt="Home"
						src="siteImages/red.png" width="27" height="27"></a></td>
			</tr>
		</table>
		</div>

	<form method="post" action="UploadServlet"
		enctype="multipart/form-data">
		<div class="container">
			<h2>Report A Crime</h2>

			<input class="size" type="text" name="txt_name"
				placeholder="Enter Your Name" /><br>
			<br> <select name="txt_cat">
				<option selected>Select Crime Category?</option>
				<option>Child Abuse</option>
				<option>Domestic Violence</option>
				<option>Public Incident</option>
				<option>Others</option>
			</select><br>
			<br> <input class="size" type="text" name="txt_Lo"
				Placeholder="Enter the Location of Crime" /><br>
			<br> <label class="blink"><font color="blue">Crime
					Image1</font></label> <input placeholder="Enter Image" type="file"
				name="file_upload" /><br>
			<br>

			<textarea class="txtarea"
				placeholder="Enter the details of crime,the deatils of the vicitms,any information about the criminals,if present at the location."
				name="ta_desc" rows="7" cols="95"></textarea>

			<input class="btn" type="submit" value="Submit" />
		</div>
	</form>
</body>
</html>