<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>

<head>

<title>HomePage</title>
<link rel="stylesheet" href="extcss/style.css">
<script lang="JavaScript" type="text/javascript" src="js/prog1.js"></script>


</head>
<body>


	<table cellpadding="10" cellspacing="0" border="0px" width="100%">

		<tr>
			<td colspan="2" align="center"><jsp:include page="banner1.jsp" /></td>
		</tr>


		<tr>
			<td colspan="2" align="center"><jsp:include page="menu.jsp" /></td>
		</tr>
		<tr>
				<td colspan="2" align="center">
				
				
				<%
						Connection cn=(Connection)application.getAttribute("CONN");
				
						PreparedStatement ps=cn.prepareStatement("select * from product_info");
						ResultSet rs=ps.executeQuery();
				
				%>
				
						<table cellpadding="10" cellspacing="0" border="0" width="80%" bgcolor="0fa3b1">
						
							<tr bgcolor="040505"><th colspan="3"><font color="white">PRODUCT ENTRY VIEW/DELETE</font></th></tr>
							
							<tr><td width="25%"></td><td>
							
							
							<select name="cmb_prouct" onchange="productDelete(this.value)">
					
									<option value="" selected>-select product-	</option>
									
									<%
									
										while(rs.next())
											{
											
									%>
									
									
									<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%> -<%=rs.getString(2)%> </option>
									
									<%
											}
									
									%>								
							
							
							</select>
							
							
							
							
							
							</td><td width="25%"></td></tr>
							
						
							
						
						</table>
						
						
						<div id="info" align="center" >
						
						</div>
				
				
				</td>
			
		</tr>
		



	</table>



</body>


</html>