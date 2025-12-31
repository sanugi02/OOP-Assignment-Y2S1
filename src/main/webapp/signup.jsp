<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hotel Sign Up</title>
  <script>
        function validateForm() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirm_password").value;
            if (password !== confirmPassword) {
                alert("Passwords do not match!");
                return false;
            }
            return true;
        }
    </script>
     <link rel="icon" type="image/jpeg" href="images/favicon.png" />
  <link rel="stylesheet" href="styles/signup.css">
  <link rel="stylesheet" href="styles/header.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<%@ include file="header.jsp" %>
 <div class="signup-wrapper">
  <div class="container">
    <div class="form-section">
      <h2>Join Hotel Crown Crest</h2>
      <p>Your journey to comfort begins here.</p>

      <div class="buttons">
        <button class="btn-filled">Sign up</button>
        <button class="btn-outline" onclick="window.location.href='login.jsp'">Log in</button>
      </div>

      <h3>Create Your Account</h3>

      <form action=${pageContext.request.contextPath}/signup method="POST" class="space-y=4">
        <input type="text" name="fullname" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="password" name="cnfrmpassword" placeholder="Confirm Password" required>


	   <div class="terms">
		  <input type="checkbox" class="check" required>
		  <label for="terms">I agree to the <a href="#">Terms & Conditions</a></label>
		</div>
        
        <c:if test="${not empty error}">
            <div class="bg-red-500/20 text-red-400 border border-red-500 rounded-lg p-4 mb-6">
                <p>${error}</p>
            </div>
        </c:if>
        
        <div class="form-action">
           <button type="submit" class="btn-filled full" onclick="window.location.href='login.jsp'">Sign Up</button>
           <p class="alt-option">Already have an account? <a href="login.jsp">Log in</a></p>
        </div>
        
      </form>

      
    </div>

    <div class="image-section">
      <div class="overlay">
        <h3>Experience Hospitality</h3>
        <p>Sign up today and make your special stay unforgettable.</p>
      </div>
    </div>
  </div>
  </div>
</body>
</html>
    