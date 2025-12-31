<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hotel Sign Up</title>
  <link rel="stylesheet" href="styles/employeeSignup.css">
  <link rel="stylesheet" href="styles/header.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<%@ include file="header.jsp" %>
 <div class="signup-wrapper">
  <div class="container">
    <div class="form-section">
      <h2>Employee Portal – The Crown Crest</h2>
      <p>Collaborate. Coordinate. Contribute.</p>

      <div class="buttons">
        <button class="btn-filled">Sign up</button>
        <button class="btn-outline" onclick="window.location.href='employeeLogin.jsp'">Log in</button>
      </div>
      
      <div class="section">
        <h2>Create Your Account</h2>
      </div>
      
      <form action="${pageContext.request.contextPath}/employeesignup" method="post">
		       
		   <select class="select-input" name="occupation" required>
		    <option value=""disabled selected>Select occupation</option>
		    <option value="admin">Admin</option>
		    <option value="manager">Manager</option>
		    <option value="assistant-manager">Assistant Manager</option>
		    <option value="receptionist">Receptionist</option>
		    <option value="chef">Chef</option>
		    <option value="other">Other</option>
		  </select>
        
        <input type="text" name="fullname" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="password" name="cnfrmpassword" placeholder="Confirm Password" required>

	   <div class="terms">
		  <input type="checkbox" class="check" required>
		  <label for="terms">I agree to the<a href="#">Terms & Conditions</a></label>
		</div>
        
        
        <div class="form-action">
           <button type="submit" class="btn-filled full">Sign Up</button>
           <p class="alt-option">Already have an account? <a href="login.jsp">Log in</a></p>
        </div>
        
      </form>

      
    </div>

    <div class="image-section">
      <div class="overlay">
        <h3>Empowering Hospitality Professionals</h3>
        <p>Every interaction matters.<br>Every detail counts.</p>
      </div>
    </div>
  </div>
  </div>
</body>
</html>
    