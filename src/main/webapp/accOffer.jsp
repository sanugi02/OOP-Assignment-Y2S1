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
    <link rel="stylesheet" href="styles/accOffer.css">
</head>
<body>
<%@ include file="header.jsp" %>
<main>
<div class="booking-container">
  <h2 class="booking-title">
    <span class="line"></span>
    My Offers
    <span class="line"></span>
  </h2>

  <div class="content-wrapper">
    <div class="sidebar">
      <a href="${pageContext.request.contextPath}/account" class="menu-item">BOOKINGS</a>
      <a href="benifits.jsp" class="menu-item">BENIFITS</a>
      <a href="accOffer.jsp" class="menu-item active">
        <span class="label">OFFERS</span>
        <span class="arrow">›</span>
      </a>
      <a href="membership.jsp" class="menu-item">MEMBERSHIPS</a>
      <a href="membershipsup.jsp" class="menu-item">MEMBER SUPPORT</a>
    </div>
    <div class="offer-wrapper">
	  <div class="offer-box">
	    <p>PLEASE <a href="offer.jsp" class="offer-link">CLICK HERE</a> TO VIEW YOUR OFFERS</p>
	  </div>
	</div>

    
</main>
<%@ include file="footer.jsp" %>
</body>
</html>