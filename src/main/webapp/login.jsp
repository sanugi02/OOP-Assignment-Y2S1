<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hotel Login</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/login.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/header.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<%@ include file="header.jsp" %>

<div class="login-wrapper">
  <div class="container">
    <div class="form-section">
      <h2>The Crown Crest</h2>
      <p>Explore More. Experience Luxury.</p>

      <div class="buttons">
        <button class="btn-outline" onclick="window.location.href='signup.jsp'">Sign up</button>
        <button class="btn-filled">Log in</button>
      </div>

      <h3>Journey Begins</h3> 

      <div class="social-login">
        <i class="fab fa-apple"></i>
        <i class="fab fa-google"></i>
        <i class="fab fa-facebook"></i>
      </div>

      <form action=${pageContext.request.contextPath}/userlogin method="POST" class="space-y=4">
        <input type="text" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
         
       <c:if test="${not empty error}">
            <div class="bg-red-500/20 text-red-400 border border-red-500 rounded-lg p-4 mb-6">
                <p>${error}</p>
            </div>
        </c:if>
        
        <div class="options">
          <label class="remember-me">
            <input type="checkbox" class="check" />
            <span>Remember Me</span>
          </label>
          <a href="#" class="forgot-password">Forgot Password?</a>
        </div>

        <button type="submit" class="btn-filled full" onclick="window.location.href='myAcc.jsp'">Log in</button>
      </form>

      <!-- NEW: Employee login redirect button -->
      <div class="employee-link">
        <button class="btn-employee" onclick="window.location.href='employeeLogin.jsp'">
          If you're an employee
        </button>
      </div>
    </div>

    <div class="image-section">
      <div class="overlay">
        <h3>Wander. Explore. Experience.</h3>
        <p>Escape the Ordinary,<br>Embrace the Journey!</p>
      </div>
    </div>
  </div>
</div>

</body>
</html>
