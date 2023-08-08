<!DOCTYPE html>
<html>
<head>
  <title>Loan Pass</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <style>
    .container {
  width: 400px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
}

form {
  display: grid;
  gap: 10px;
}

label {
  font-weight: bold;
}

input[type="text"],
input[type="Pan card"],
textarea {
  width: 100%;
  padding: 5px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #45a049;
}
h2 {
    text-align: center;
}
  </style>
</head>
<body>
  <div class="container">
    <h2>Loan Pass</h2>
    <form method="post" action="LoanSubmitted">
      <label for="name">Name:</label>
      <input type="text" id="name" name="txt_name" required>

      <label for="Enter Aadhar card no">Aadhar card no:</label>
      <input type="Enter Aadhar card no" id="Aadhar card no" name="txt_adhar" placeholder="Enter your aadhar card no" required>
      <label for="phone">PAN card:</label>
      <input type="text" name="txt_pan" id="Pan card" placeholder="Enter your pan card no" class="formbold-form-input" required>
      <label for="Adhar">Select Adhar</label><input type="file" name="file_adhar">
      <label for="Pan">Select Pan</label><input type="file" name="file_pan">
      <input type="submit" value="Submit">
    </form>
  </div>
</body>
</html>