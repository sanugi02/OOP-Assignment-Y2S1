<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Plan Your Stay</title>
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
 <style>
 @charset "UTF-8";
body {
  font-family: 'Georgia', serif;
  background: linear-gradient(to bottom, #fff, #f8f8f8);
  margin: 0;
  padding: 0;
}

.booking-container {
  text-align: center;
  padding: 90px 20px;
}

.booking-title {
  font-size: 32px;
  color: #333;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 20px;
  font-weight: normal;
  letter-spacing: 1px;
  margin-bottom: 20px;
}

.line {
  flex: 1;
  height: 1px;
  background-color: #999;
  max-width: 100px;
}

.steps {
  display: flex;
  justify-content: center;
  margin-top: 40px;
  margin-bottom: -70px;
  gap: 40px;
}

.step {
  display: flex;
  align-items: center;
  gap: 10px;
  color: #555;
  font-size: 18px;
}

.step .circle {
  width: 32px;
  height: 32px;
  border-radius: 50%;
  background-color: white;
  border: 1px solid #ccc;
  color: #555;
  display: flex;
  align-items: center;
  justify-content: center;
}

.step.active .circle {
  background-color: #b88a44;
  color: white;
  border: none;
}

.step.active .label {
  font-weight: bold;
  color: #222;
}

.booking-wrapper {
  display: flex;
  flex-wrap: wrap;
  gap: 2rem;
  justify-content: center;
}

.guest-form {
  border: 1px solid #ddd;
  padding: 2rem;
  width: 600px;
  max-width: 100%;
  background-color: #fff;
}

.guest-form h2 {
  font-size: 1.5rem;
  margin-bottom: 0.5rem;
}

.name-row,
.contact-row {
  display: flex;
  gap: 1rem;
  margin-bottom: 1rem;
}

.select-input,
.name-row input,
.contact-row input,
.guest-form input,
textarea {
  flex: 1;
  padding: 0.6rem;
  border: none;
  border-bottom: 1px solid #888;
  font-size: 1rem;
  background: transparent;
}

.select-input:focus,
input:focus,
textarea:focus {
  border-color: #b88a44;
  outline: none;
}

.booking-inputs {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  margin-bottom: 2rem;
}

.input-group {
  display: flex;
  flex-direction: column;
  font-family: 'Helvetica Neue', sans-serif;
  font-size: 1rem;
  color: #333;
}

.input-group label {
  margin-bottom: 0.5rem;
  font-weight: 500;
  color: #333;
}

.input-group input[type="date"],
.input-group select {
  border: none;
  border-bottom: 1px solid #aaa;
  padding: 0.5rem 0;
  font-size: 1rem;
  background: transparent;
  width: 100%;
  outline: none;
  color: #444;
}

.select-wrapper {
  display: flex;
  gap: 1rem;
}

.phone-group {
  display: flex;
  align-items: center;
  gap: 0.5rem;
}

.phone-group .flag {
  white-space: nowrap;
  font-size: 0.95rem;
}

textarea {
  width: 100%;
  height: 80px;
  resize: none;
  margin-top: 0.5rem;
  font-family: inherit;
}

.char-count {
  text-align: right;
  font-size: 0.9rem;
  color: navy;
  margin-top: 0.25rem;
}

.checkbox {
  margin-top: 1rem;
  display: flex;
  align-items: center;
  gap: 0.5rem;
  font-size: 0.95rem;
}

.checkbox input {
  transform: scale(1.2);
}

.checkbox a {
  color: #b89d4f;
  text-decoration: none;
}

.submit {
  margin-top: 25px;
  text-align: center;
}

.btn-submit {
  background-color: #b89d4f;
  color: #fff;
  padding: 10px 25px;
  border: none;
  border-radius: 25px;
  cursor: pointer;
  font-weight: 500;
  transition: background-color 0.3s ease;
}

.btn-submit:hover {
  background-color: #a0762b;
}

.booking-summary {
  width: 300px;
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.summary-card {
  border: 1px solid #d4a949;
  padding: 1rem;
  background-color: #fffefb;
}

.summary-card h3 {
  margin-top: 0;
  font-size: 1.3rem;
  border-bottom: 1px solid #ccc;
  padding-bottom: 0.5rem;
}

.room-details {
  margin: 1rem 0;
}

.room-details p,
.pricing p {
  margin: 0.5rem 0;
}

.pricing {
  border-top: 1px solid #ccc;
  padding-top: 1rem;
}

.pricing span {
  float: right;
}

.total {
  font-weight: bold;
  display: block;
  margin-top: 0.5rem;
}

.cancellation-policy {
  border: 1px solid #ccc;
  padding: 1rem;
  background-color: #f8f8f8;
}

.pay-at-hotel {
  border: 1px solid #ccc;
  padding: 1rem;
  background-color: #fdf6e3;
  font-size: 0.95rem;
  margin-bottom:10px;
}
 
 </style>
  <link rel="stylesheet" href="styles/header.css">
</head>
<body>
<%@ include file="header.jsp" %>

<div class="booking-container">
  <h2 class="booking-title">
    <span class="line"></span>
    PERSONAL DETAILS
    <span class="line"></span>
  </h2>

  <div class="steps">
    <div class="step">
      <div class="circle">1</div>
      <span class="label">Select Room</span>
    </div>
    <div class="step active">
      <div class="circle">2</div>
      <span class="label">Personal Details</span>
    </div>
    <div class="step">
      <div class="circle">3</div>
      <span class="label">Payment Details</span>
    </div>
  </div>
</div>
<div class="booking-wrapper">
  <form action="reservation" method="post" onsubmit="return validateForm()">
   <input type="hidden" name="action" value="create">
    <div class="guest-form">
      <h2>PRIMARY GUEST DETAILS</h2>
      <p>Please fill all relevant fields to proceed further.</p>

      <div class="name-row">
        <select class="select-input" name="salutation" required>
          <option value="" disabled selected>Select Salutation</option>
          <option value="mr">Mr</option>
          <option value="ms">Ms</option>
          <option value="mrs">Mrs</option>
          <option value="miss">Miss</option>
        </select>
        <input type="text" name="name" placeholder="Name" required>
      </div>

      <div class="contact-row">
        <input type="email" name="email" placeholder="E-mail" required>
        <div class="phone-group">
          <span class="flag">🇱🇰 +94</span>
          <input type="text" name="contactno" placeholder="Phone Number" inputmode="numeric" pattern="[0-9]*" required>
        </div>
      </div>

      <div class="booking-inputs">
        <div class="input-group">
          <label for="checkin" class="checkin"><b>Check-in</b></label>
          <input type="date" id="checkin" name="checkin" required>
          <label for="checkout" class="checkout"><b>Check-out</b></label>
          <input type="date" id="checkout" name="checkout" required>
        </div>

        <div class="input-group">
          <label><b>Guests and Rooms</b></label>
          <div class="select-wrapper">
            <select name="adults" required>
              <option value=""disabled selected>Adults</option>
              <option value="1">1 Adult</option>
              <option value="2">2 Adults</option>
              <option value="3">3 Adults</option>
            </select>
            <select name="children" required>
              <option value=""disabled selected>Children</option>
              <option value="0">0 Child</option>
              <option value="1">1 Child</option>
              <option value="2">2 Children</option>
            </select>
            <select name="rooms" required>
              <option value=""disabled selected>Rooms</option>
              <option value="1">1 Room</option>
              <option value="2">2 Rooms</option>
              <option value="3">3 Rooms</option>
            </select>
          </div>
        </div>
      </div>



      <label class="checkbox">
        <input type="checkbox" required>
        I have read and agree to the <a href="#">Privacy Policy</a> and <a href="#">Terms & Conditions</a>.
      </label>

      <div class="submit">
        <button class="btn-submit" type="submit" onclick="window.location.href='reservation?action=create'">Submit</button>
      </div>
    </div>
  </form>

  <div class="booking-summary">
    <div class="summary-card">
      <h3>YOUR STAY</h3>
      <div class="room-details">
        <p><strong>Room 1 </strong></p>
        <p>SUPERIOR GARDEN VIEW TWIN BED ROOM</p>
        <p>Breakfast Inclusive Rate <span class="price">$409.00</span></p>
        
      </div>
      <div class="pricing">
        <p>Price <span>$409.00</span></p>
        <p>Taxes and Fees <span>$139.13</span></p>
        <hr>
        <p><strong>Total Amount</strong><br>Payable at Hotel <span class="total">$548.13</span></p>
      </div>
    </div>

    <div class="cancellation-policy">
      <h4>Cancellation Policy</h4>
      <p>Free cancellation by 2PM–7 days prior to arrival to avoid a penalty of 1 night charge plus any applicable taxes & fees.</p>
    </div>

    <div class="pay-at-hotel">
      <input type="checkbox" class="check" />
      <strong>🏨 PAY AT HOTEL </strong>
      <p>Make your payment at the hotel</p>
    </div>
  </div>
</div>

<script>
  function validateForm() {
    const checkin = document.getElementById("checkin").value;
    const checkout = document.getElementById("checkout").value;
    if (checkin && checkout && checkin > checkout) {
      alert("Check-out date must be after check-in date.");
      return false;
    }
    return true;
  }
  document.querySelectorAll('input[pattern="[0-9]*"]').forEach(input => {
	    input.addEventListener('input', () => {
	      input.value = input.value.replace(/\D/g, '');
	    });
	  });
  
</script>
<%@ include file="footer.jsp" %>
</body>
</html>
