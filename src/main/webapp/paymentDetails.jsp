<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Payment Confirmation</title>
  <link rel="stylesheet" href="styles/paymentDetails.css" />
  <link rel="stylesheet" href="styles/header.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
</head>
<body>
<%@ include file="header.jsp" %>

<div class="booking-container">
  <h2 class="booking-title">
    <span class="line"></span>
    PAYMENT DETAILS
    <span class="line"></span>
  </h2>

  <div class="steps">
    <div class="step">
      <div class="circle">1</div>
      <span class="label">Select Room</span>
    </div>
    <div class="step">
      <div class="circle">2</div>
      <span class="label">Personal Details</span>
    </div>
    <div class="step active">
      <div class="circle">3</div>
      <span class="label">Payment Details</span>
    </div>
  </div>
</div>

<div class="payment-container">
  <div class="image-section">
    <img src="images/card1.jpg" alt="Credit Card">
  </div>

  <div class="form-section">
    <h2>Payment Details</h2>
    <form>
    
      <div class="input-group">
        <label>Amount</label>
        <input type="text" placeholder="$250" inputmode="numeric" pattern="[0-9]*" required>
      </div>
      
      <div class="input-group">
        <label>Card Number</label>
        <input type="text" placeholder="1234 5678 9012 3456" inputmode="numeric" pattern="[0-9]*" required>
      </div>

      <div class="input-group">
        <label>Cardholder Name</label>
        <input type="text" placeholder="John Doe" required>
      </div>

      <div class="row">
        <div class="input-group small">
          <label>Month</label>
          <input type="text" placeholder="MM" maxlength="2" inputmode="numeric" pattern="[0-9]*" required>
        </div>

        <div class="input-group small">
          <label>Year</label>
          <input type="text" placeholder="YYYY" maxlength="4" inputmode="numeric" pattern="[0-9]*" required>
        </div>

        <div class="input-group small">
          <label>CVV</label>
          <input type="text" placeholder="123" maxlength="4" inputmode="numeric" pattern="[0-9]*" required>
        </div>
      </div>

      <div class="form-actions">
        <button type="submit" class="confirm" onclick="window.location.href='myAcc.jsp'">CONFIRM AND PAY</button>
        <button type="button" class="cancel">CANCEL</button>
      </div>
    </form>
  </div>
</div>
<script>
  document.querySelectorAll('input[pattern="[0-9]*"]').forEach(input => {
    input.addEventListener('input', () => {
      input.value = input.value.replace(/\D/g, '');
    });
  });
</script>

</body>
</html>
