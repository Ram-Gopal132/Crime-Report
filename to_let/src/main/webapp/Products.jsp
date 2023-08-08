<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>

<head>

<title>HomePage</title>
<link rel="stylesheet" href="extcss/style.css">
<script lang="JavaScript" type="text/javascript">
	
	function popupwindow(url, title, w, h) {
		
		  var left = (screen.width/2)-(w/2);
		  var top = (screen.height/2)-(h/2);
		  return window.open(url, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width='+w+', height='+h+', top='+top+', left='+left);
		} 
	
	</script>
	
	<script lang="JavaScript" type="text/javascript" src="js/prog.js"></script>
</head>
<body>


	<table cellpadding="10" cellspacing="0" border="0" width="100%" bgcolor="11A3C0" >

		<tr>
			<td colspan="2" align="center"><jsp:include page="banner1.jsp" /></td>
		</tr>


		<tr>
			<td colspan="2" align="center"><jsp:include page="menu.jsp" /></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center"><input type="text" style="border-color: red;width: 40%" name="txt_search" placeholder="SEARCH YOUR PRODUCT" width="50%"  onkeyup="searchHospital(this.value)"></td>
		</tr>

		<tr>
		
				<td colspan="2" align="center">
				
						<% 
						
							Connection cn=(Connection)application.getAttribute("CONN");
							PreparedStatement ps=cn.prepareStatement("select * from product_info");
							
							ResultSet rs=ps.executeQuery();
						
						%>
						
						
					<table cellpadding="5" cellspacing="0" border="0" width="80%" id="info" >
					
						
					
					
					
					</table>
				
				</td>
		
		
		</tr>



	</table>



</body>


</html>