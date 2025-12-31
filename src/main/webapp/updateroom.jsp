<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Plan Your Stay</title>
  <link rel="stylesheet" href="styles/updateroom.css" />
  <link rel="stylesheet" href="styles/header.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
</head>
<body>
<%@ include file="header.jsp" %>

<div class="booking-container">
  <h2 class="booking-title">
    <span class="line"></span>
    UPDATE PERSONAL DETAILS
    <span class="line"></span>
  </h2>
  
  <div class="booking-wrapper">
  <form action="reservation?action=update&id=${reservation.id}" method="post" onsubmit="return validateForm()">
	 <input type="hidden" name="action" value="update">
	 <input type="hidden" name="id" value="${reservation.id}">
    <div class="guest-form">
      <h2>UPDATE PRIMARY GUEST DETAILS</h2>
      <p>Please fill all relevant fields to proceed further.</p>

      <div class="name-row">
        
        <input type="text" name="name" placeholder="Name" value="${reservation.name}" required>
      </div>

      <div class="contact-row">
        <input type="email" name="email" placeholder="E-mail" value="${reservation.email}" required>
        <div class="phone-group">
          <span class="flag">🇱🇰 +94</span>
          <input type="text" name="contactno" placeholder="Phone Number" inputmode="numeric" pattern="[0-9]*" value="${reservation.contactno}" required>
        </div>
      </div>

      <div class="booking-inputs">
        <div class="input-group">
          <label for="checkin" class="checkin"><b>Check-in</b></label>
          <input type="date" id="checkin" name="checkin" value="${reservation.checkin}" required>
          <label for="checkout" class="checkout"><b>Check-out</b></label>
          <input type="date" id="checkout" name="checkout" value="${reservation.checkout}" required>
        </div>

        <div class="input-group">
          <label><b>Guests and Rooms</b></label>
          <div class="select-wrapper">
            <select name="adults" required>
              <option value="" disabled selected>Adults</option>
              <option value="1" ${reservation.adults == 1 ? 'selected' : ''}>1 Adult</option>
			  <option value="2" ${reservation.adults == 2 ? 'selected' : ''}>2 Adults</option>
			  <option value="3" ${reservation.adults == 3 ? 'selected' : ''}>3 Adults</option>
            </select>
            <select name="children" required>
              <option value="" disabled selected>Children</option>
              <option value="0" ${reservation.children == 0 ? 'selected' : ''}>0 Child</option>
			  <option value="1" ${reservation.children == 1 ? 'selected' : ''}>1 Child</option>
			  <option value="2" ${reservation.children == 2 ? 'selected' : ''}>2 Children</option>
            </select>
            <select name="rooms"  required>
              <option value="" disabled selected>Rooms</option>
              <option value="1" ${reservation.noofrooms == 1 ? 'selected' : ''}>1 Room</option>
			  <option value="2" ${reservation.noofrooms == 2 ? 'selected' : ''}>2 Rooms</option>
			  <option value="3" ${reservation.noofrooms == 3 ? 'selected' : ''}>3 Rooms</option>
            </select>
          </div>
        </div>
      </div>

      <div class="submit">
        <button class="btn-submit" type="submit">Update</button>
      </div>
    </div>
  </form>

  
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
  