<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>My Account</title>
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
  <link rel="stylesheet" href="styles/header.css">
  <link rel="stylesheet" href="styles/footer.css">
    <link rel="stylesheet" href="styles/membershipsup.css">
</head>
<body>
<%@ include file="header.jsp" %>
<main>
<div class="booking-container">
  <h2 class="booking-title">
    <span class="line"></span>
    My Member Support
    <span class="line"></span>
  </h2>

  <div class="content-wrapper">
    <div class="sidebar">
      <a href="${pageContext.request.contextPath}/account" class="menu-item">BOOKINGS</a>
      <a href="benifits.jsp" class="menu-item">BENIFITS</a>
      <a href="accOffer.jsp" class="menu-item">OFFERS</a>
       <a href="membership.jsp" class="menu-item">MEMBERSHIP</a>
      <a href="membershipsup.jsp" class="menu-item active">
        <span class="label">MEMBER SUPPORT</span>
        <span class="arrow">›</span>
      </a>
     
    </div>
    <div class="contact-box">
  <div class="contact-left">
    <p><strong>Copper & Silver Members</strong><br>
    1800 202 8282 from 9:00 am to 6:00 pm</p>

    <p><strong>Gold Members</strong><br>
    24-hour dedicated Member Service Assistance - +91 22 6905 0055</p>

    <p><strong>Platinum Members</strong><br>
    24-hour dedicated Member Service Assistance - 1800 11 4825</p>
  </div>

  <div class="contact-right">
    <p><strong>Email ID:</strong><br>
    customercare@mail.com</p>

    <p><strong>Email ID:</strong><br>
    gold@crowncrsthotels.com</p>

    <p><strong>Email ID:</strong><br>
    platinum@crowncresthotels.com</p>
  </div>
</div>
    
    
    
</main>
<%@ include file="footer.jsp" %>
</body>
</html>