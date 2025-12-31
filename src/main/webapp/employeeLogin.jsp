<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Employee Login</title>
  <link rel="stylesheet" href="styles/employeeLogin.css">
  <link rel="stylesheet" href="styles/header.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<%@ include file="header.jsp" %>

<div class="login-wrapper">
  <div class="container">
    <div class="form-section">
      <h2>Staff Login - The Crown Crest</h2>
      <p>Your daily workspace..</p>

      <div class="buttons">
        <button class="btn-outline" onclick="window.location.href='employeeSignup.jsp'">Sign up</button>
        <button class="btn-filled">Log in</button>
      </div>

      <h3>Journey Begins</h3>

      <div class="social-login">
        <i class="fab fa-apple"></i>
        <i class="fab fa-google"></i>
        <i class="fab fa-facebook"></i>
      </div>

<form action="${pageContext.request.contextPath}/employeelogin" method="post">
  <h4 style="margin-bottom: 10px;">Occupations:</h4>
   <select class="select-input" required>
    <option value=""disabled selected>Select occupation</option>
    <option value="admin">Admin</option>
    <option value="manager">Manager</option>
    <option value="assistant-manager">Assistant Manager</option>
    <option value="receptionist">Receptionist</option>
    <option value="chef">Chef</option>
    <option value="other">Other</option>
  </select>

  <input type="text" name="email" placeholder="Email" required>
  <input type="password" name="password" placeholder="Password" required>

  <div class="options">
    <label class="remember-me">
      <input type="checkbox" class="check" />
      <span>Remember Me</span>
    </label>
    <a href="#" class="forgot-password">Forgot Password?</a>
  </div>

  <button type="submit" class="btn-filled full">Log in</button>
</form>



    </div>

    <div class="image-section">
      <div class="overlay">
        <h3>Welcome to the Team Hub</h3>
        <p>Stay informed, stay connected,<br>and shine together!</p>
      </div>
    </div>
  </div>
</div>

</body>
</html>
