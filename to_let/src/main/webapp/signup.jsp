<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="signup.css">
<script lang="JavaScript" type="text/javascript" src="js/prog.js"></script>

<script lang="JavaScript" type="text/javascript">

function checkPassword()
	{
		
			if(document.getElementById("info").value != document.getElementById("info1").value)
					{
				
						document.getElementById("msg").innerHTML="<font face=verdana color=red size=2><b>*PASSWORD MISMATCH</b></font>";
				
					}
			else
					{
				document.getElementById("msg").innerHTML="";
						
					}
	
	}


</script>
<style>
    @charset "ISO-8859-1";
* {box-sizing: border-box}

/* Full-width input fields */

  input[type=text], input[type=password] ,input[type=number]{
  width: 50%;
  padding: 15px;
  margin:  0;
  display: inline-block;
  border: none;
  background: gainsboro;
}
select{
 width: 50%;
  padding: 15px;
  margin:  0;
  display: inline-block;
  border: none;
  background: gainsboro;
	
}

/* 
input[type=text]:focus, input[type=password]:focus ,input[type=number]:focus{
  background-color: #408080;
  outline: none;
} */

hr {
  border:  #808080;
  margin-bottom: 25px;
}
/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}
/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}
label {
    padding-inline: 20px;
}
/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: center;
  width: 20%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
    width: 100%;
    max-width: 900px;
    box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
    margin-top: 50px;
}
.container1 {
    display: flex;
    align-items: center;
    padding-bottom: 20px;
}
label b {
    display: none;
    width: max-content;
    text-transform: capitalize;
    font-weight: 100;
}
/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
    width: 100%;
  }
}
</style>
</head>
<body>
<table cellpadding="10" cellspacing="0" border="0" width="100%" >
<form action="confirmation.jsp" style="border:1px solid #ccc">
<tr>
			<td colspan="2" align="center"><%!String[] question = { "What is your first school name?", "What is your pet name?", "Your first book?" };%>

				<form method="post" action="confirmation.jsp">

					<table cellpadding="10" cellspacing="0" border="0" width="80%"
						bgcolor="#7BCCB5">

						
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this</p>
    <hr>
    <div class="container1">
     <label for="Name"><b>Name</b></label>
    
    <input type="text" placeholder="Enter Name" name="name" required>
    
    <label for="email"><b>Email</b></label>
    
    <input type="text" placeholder="Enter Email" name="email" required/>
      
      </div>
      <div class="container1">
      <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

   
    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
</div>
     
     <div class="container1">
     <label for="mobile"><b>mobile</b></label>
     <input type="number" placeholder="contact number" name="txt_mobile" required/>
      
     <label for="Address"><b>Address</b></label>
    
    <input type="text" placeholder="Enter Address" name="address" required>
       
   
    </div>
    <div class="container1">
     <label for="Security Question"><b>security Question</b></label>
     <select name="cmb_quest">
              <option value="" selected>- security question-</option>"
                                   <%
									for (String _quest : question) {
									%>

									<option value="<%=_quest%>"><%=_quest%></option>
									<%
									}
									%>
									</select>
    
						
<label for="security-answer"><b>security-answer</b></label>
    <input type="text" placeholder="security_answer" name="security_answer" required/>
</div>
<div class="clearfix">  
    <button type="submit" class="signupbtn">Sign Up</button>
  </div>
  </div> 
 
  
</form>
</table>
</body>
</html>