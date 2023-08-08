<!DOCTYPE html>
<html>
<head>
  <title>Contact Us</title>
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
input[type="email"],
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
    <h2>Contact Us</h2>
    <form>
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>
      <label for="phone">Phone number:</label>
      <input type="text" name="phone" id="phone" placeholder="Enter your phone number" class="formbold-form-input" required>
      <label for="message">Message:</label>
      <textarea id="message" name="message" required></textarea>

      <input type="submit" value="Submit">
    </form>
  </div>
</body>
</html>