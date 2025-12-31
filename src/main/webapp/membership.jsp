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
    <link rel="stylesheet" href="styles/membership.css">
</head>
<body>
<%@ include file="header.jsp" %>
<main>
<div class="booking-container">
  <h2 class="booking-title">
    <span class="line"></span>
    My Membership
    <span class="line"></span>
  </h2>

  <div class="content-wrapper">
    <div class="sidebar">
      <a href="${pageContext.request.contextPath}/account" class="menu-item">BOOKINGS</a>
      <a href="benifits.jsp" class="menu-item">BENIFITS</a>
      <a href="accOffer.jsp" class="menu-item">OFFERS</a>
       <a href="membership.jsp" class="menu-item active">
        <span class="label">MEMBERSHIPS</span>
        <span class="arrow">›</span>
      </a>
      <a href="membershipsup.jsp" class="menu-item">MEMBER SUPPORT</a>
    </div>
    <div class="membership-card">
  <div class="card-image">
    <img src="images/membership.jpg" alt="Copper Card">
  </div>
  <div class="card-details">
    <h2>MEMBERSHIP</h2>
    <div class="detail-row">
      <div>
        <strong>START DATE</strong>
        <p>14 May 2025</p>
      </div>
      <div>
        <strong>TIER</strong>
        <p>COPPER</p>
      </div>
    </div>
  </div>
</div>
    
    
    
</main>
<%@ include file="footer.jsp" %>
</body>
</html>