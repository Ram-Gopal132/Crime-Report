<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Another Admin Sign up</title>
<link rel="stylesheet" href="css/signup.css" />
<link rel="stylesheet" href="css/style.css" />

<script lang="JavaScript" type="text/javascript"
	src="JavaScript/prog1.js"></script>
<script lang="JavaScript" type="text/javascript">
		function  crossCheckPass()
			{
				if(document.getElementById("pass1").value != document.getElementById("pass2").value)
					{
					
						alert("Password & Confirm Password Is Not Same please Enter Same Password!");
						
						return false;
					}
				else
					{
					
						return true;
					}
			
			}

</script>

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

	<div class="container">
		<h3>
			Another Admin Sign<span>Up</span>
		</h3>
		<form method="post" action="anotheradminconfirm.jsp"
			onsubmit="return crossCheckPass()">
			<table class="space">
				<tr>
					<td><label for="name">Name:</label></td>
					<td><input class="design" type="text" name="ta_name"
						placeholder="your Name" required></td>
				</tr>

				<tr>
					<td><label for="email">Email:</label></td>
					<td><input class="design" type="text" name="ta_email"
						placeholder="your Email" required onkeyup="Crosscheck(this.value)"></td>
				</tr>

				<tr>
					<td><label for="phoneNumber">Phone Number:</label></td>
					<td><input class="design" type="tel" name="ta_con" required></td>
				</tr>

				<tr>
					<td><label for="password">Password:</label></td>
					<td><input class="design" type="password" name="ta_pass"
						id="pass1" required></td>
				</tr>

				<tr>
					<td><label for="Cpassword">Confirm Password:</label></td>
					<td><input class="design" type="password" name="ta_pass2"
						id="pass2" required></td>
				</tr>

				<tr>
					<td><label for="Sequest">Security Question:</label></td>
					<td><select name="ta_seq">
							<option selected>Select Security Question?</option>
							<option>What is first school name?</option>
							<option>What is your favorite cricketer?</option>
							<option>What is your favorite Color?</option>
							<option>What is your favorite Movie?</option>
							<option>What is your favorite Sport?</option>
					</select></td>
				</tr>


				<tr>
					<td><label for="ans">Security Answer:</label></td>
					<td><input class="design" type="text" name="ta_ans"></td>
				</tr>


				<tr>
					<td><label for="gender">Gender:</label></td>
					<td><input class="radio" type="radio" name="txt_gender"
						value="male">Male <input class="radio1" type="radio"
						name="txt_gender" value="female">Female</td>
				</tr>

				<tr>
					<td><label for="Address">Address</label></td>
					<td><textarea class="txtarea"
							placeholder="Enter your Address....." name="ta_address" rows="3"
							cols="36"></textarea></td>
				</tr>

				<tr>
					<td><label for="zipcode">Zip Code:</label></td>
					<td><input class="design" type="text" name="zip_code"
						id="zipcode"></td>
				</tr>

				<tr>
					<td colspan="2"><input class="btn" type="submit"
						value="Register"></td>
				</tr>

			</table>
		</form>
	</div>

</body>
</html>