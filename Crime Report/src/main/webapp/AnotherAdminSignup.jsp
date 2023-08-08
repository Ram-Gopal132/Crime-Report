<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/Signup.css">
<title>Insert title here</title>
</head>

<style>
body {background-color: #C0C0C0;}
</style>
<body>
<div id="login-box">
  <div class="left">
    <h1>Sign up</h1>
   <tr> <td colspan="2" align="center"><%!String[] question = { "What is your first school name?", "What is your pet name?", "Your first book?" };%></td></tr>
    				<form method="post" action="AdminSignupconfirm.jsp">
    
    <input type="text" name="name" placeholder="Name" />
    <input type="text" name="address" placeholder="Address" />
    <input type="text" name="email" placeholder="E-mail" />
    <input type="text" name="mobile" placeholder="Mobile" />
  	<label for="security question">Security Question</label>
       
       <select name="cmb_quest">
									<option value="" selected>-select security question-</option>

									<%
									for (String _quest : question) {
									%>

									<option value="<%=_quest%>"><%=_quest%></option>
									<%
									}
									%>

							</select>
							
						
   
    <input type="text" name="security_answer" placeholder="Security Answer" />
    <input type="password" name="password" placeholder="Password" />
    
    <input type="submit" name="signup_submit" value="Signup" />
    </form>
  </div>
 </div>
</body>
</html>



