<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Plan Your Stay</title>
  <link rel="stylesheet" href="styles/booking.css" />
  <link rel="stylesheet" href="styles/header.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
</head>
<body>
<%@ include file="header.jsp" %>

<div class="booking-container">
  <h2 class="booking-title">
    <span class="line"></span>
    PLAN YOUR STAY
    <span class="line"></span>
  </h2>

  <div class="steps">
    <div class="step active">
      <div class="circle">1</div>
      <span class="label">Select Room</span>
    </div>
    <div class="step">
      <div class="circle">2</div>
      <span class="label">Personal Details</span>
    </div>
    <div class="step">
      <div class="circle">3</div>
      <span class="label">Payment Details</span>
    </div>
  </div>
</div>

<!-- Combined room-layout -->
<div class="room-layout">

  <div class="room-listing">
    <h3 class="section-heading">Rooms for your search</h3>

    <!-- ROOM CARD 1 -->
    <div class="room-card">
      <div class="room-image">
        <img src="images/room.jpg" alt="Room Image">
      </div>
      <div class="room-info">
        <h4>SEASIDE FAMILY HEAVEN</h4>
        <p class="room-alert"><span>&#9888;</span> Last Few Rooms Available</p>

        <div class="rate-box">
          <div class="rate-description">
            <strong>Member Rate Copper – Breakfast Inclusive</strong>
            <p>Members only rate</p>
            <ul>
              <li>Inclusive of buffet breakfast at a designated dining venue</li>
              <li>Inclusive of standard Wi-Fi</li>
              <li>Applicable taxes extra</li>
            </ul>
          </div>
          
          <div class="rate-pricing">
            <p class="rate-label">STANDARD RATE</p>
            <p class="rate-amount">$136</p>
            <button class="btn btn-outline" onclick="window.location.href='reservation.jsp'">SELECT</button>
          </div>
        </div>

        <div class="rate-box">
          <div class="rate-description">
            <strong>Stay A Bit Longer – Breakfast Inclusive</strong>
            <p>The longer you stay, the better it gets</p>
            <ul>
              <li>Inclusive of buffet breakfast at a designated dining venue</li>
              <li>Inclusive of standard Wi-Fi</li>
              <li>Applicable taxes extra</li>
            </ul>
          </div>
          
          <div class="rate-pricing">
            <p class="rate-label">STANDARD RATE</p>
            <p class="rate-amount">$116</p>
            <button class="btn btn-outline" onclick="window.location.href='reservation.jsp'">SELECT</button>
          </div>
        </div>
      </div>
    </div>

    <!-- ROOM CARD 2 -->
    <div class="room-card">
      <div class="room-image">
        <img src="images/room.jpg" alt="Room Image">
      </div>
      <div class="room-info">
        <h4>VOYAGER ROOM</h4>
         <div class="rate-box">
          <div class="rate-description">
            <strong>Member Rate Copper – Breakfast Inclusive</strong>
            <p>Members only rate</p>
            <ul>
              <li>Inclusive of buffet breakfast at a designated dining venue</li>
              <li>Inclusive of standard Wi-Fi</li>
              <li>Applicable taxes extra</li>
            </ul>
           </div>
          <div class="rate-pricing">
            <p class="rate-label">STANDARD RATE</p>
            <p class="rate-amount">$136</p>
            <button class="btn btn-outline" onclick="window.location.href='reservation.jsp'">SELECT</button>
          </div>
        </div>

        <div class="rate-box">
          <div class="rate-description">
            <strong>Stay A Bit Longer – Breakfast Inclusive</strong>
            <p>The longer you stay, the better it gets</p>
            <ul>
              <li>Inclusive of buffet breakfast at a designated dining venue</li>
              <li>Inclusive of standard Wi-Fi</li>
              <li>Applicable taxes extra</li>
            </ul>
          </div>
          
          <div class="rate-pricing">
            <p class="rate-label">STANDARD RATE</p>
            <p class="rate-amount">$116</p>
            <button class="btn btn-outline" onclick="window.location.href='reservation.jsp'">SELECT</button>
          </div>
        </div>
      </div>
    </div>
    
    <div class="room-card">
      <div class="room-image">
        <img src="images/room.jpg" alt="Room Image">
      </div>
      <div class="room-info">
        <h4>LOVERS' ESCAPE</h4>
         <div class="rate-box">
          <div class="rate-description">
            <strong>Member Rate Copper – Breakfast Inclusive</strong>
            <p>Members only rate</p>
            <ul>
              <li>Inclusive of buffet breakfast at a designated dining venue</li>
              <li>Inclusive of standard Wi-Fi</li>
              <li>Applicable taxes extra</li>
            </ul>
          </div>
          
          <div class="rate-pricing">
            <p class="rate-label">STANDARD RATE</p>
            <p class="rate-amount">$136</p>
            <button class="btn btn-outline" onclick="window.location.href='reservation.jsp'">SELECT</button>
          </div>
        </div>

        <div class="rate-box">
          <div class="rate-description">
            <strong>Stay A Bit Longer – Breakfast Inclusive</strong>
            <p>The longer you stay, the better it gets</p>
            <ul>
              <li>Inclusive of buffet breakfast at a designated dining venue</li>
              <li>Inclusive of standard Wi-Fi</li>
              <li>Applicable taxes extra</li>
            </ul>
          </div>
          
          <div class="rate-pricing">
            <p class="rate-label">STANDARD RATE</p>
            <p class="rate-amount">$116</p>
            <button class="btn btn-outline" onclick="window.location.href='reservation.jsp'">SELECT</button>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- Summary Box -->
  <div class="room-summary-box">
    <div class="room-summary">
      <h4>YOUR STAY</h4>
      <div class="summary-block">
        <p><strong>Room 1 </strong></p>
        <p>Not selected</p>
      </div>
      <div class="summary-block">
        <p>Price <span>$0.00</span></p>
        <p><a href="#">Taxes and Fees</a> <span>$0.00</span></p>
      </div>
      <div class="summary-total">
        <p>Total Amount <span>$0.00</span></p>
      </div>
    </div>
  </div>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>
