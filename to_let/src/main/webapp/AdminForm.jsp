<%

		if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
			{
			
				response.sendRedirect("ErrorPage.jsp");
			}


%>
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
</head>
<body>


	<table cellpadding="10" cellspacing="0" border="1" width="100%">

		
		<tr>
		
			<td colspan="2" align="center">
					
					<table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
					
						<tr bgcolor="blue"><th><font color="white">ADMIN FORMS</font></th></tr>
						<tr><td align="center"><a href="product_entry.jsp"> PPRODUCT ENTRY/UPDATE FORM</a></td></tr>
						<tr><td align="center"><a href="productview.jsp"> PRODUCT VIEW/DELETE</a></td></tr>
						<tr><td align="center"><hr/></td></tr>
					
					</table>
								
			</td>
		
		</tr>




	</table>



</body>


</html>