<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Meetings & Event Spaces</title>
  <link rel="stylesheet" href="styles/venue.css">
  <link rel="stylesheet" href="styles/header.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
</head>
<body>
  <%@ include file="header.jsp" %>

  <div class="booking-container">
    <h2 class="booking-title">
      <span class="line"></span>
      Meetings & Event Spaces
      <span class="line"></span>
    </h2>
  </div>

  <div class="banquet-container">
    <!-- Card 1 -->
    <div class="banquet-card">
      <img src="images/weddings.jpg" alt="Crystal Ballroom" class="banquet-image" />
      <h2 class="banquet-title"><b>Crystal Ballroom</b></h2>
      <p class="banquet-description">
        Celebrate your special day in our exquisite wedding ballroom — a stunning blend of timeless elegance and modern luxury.
      </p>
      <div class="word">
        <ul>
          <li>AREA : 5628 sq.ft</li>
          <li>LOCATION : Main lobby</li>
          <li>MAX OCCUPANCY : Up to 300</li>
        </ul>
      </div>
      <div class="banquet-actions">
        <button class="enquire-button" onclick="openPopup()">ENQUIRE NOW</button>
      </div>
    </div>

    <!-- Card 2 -->
    <div class="banquet-card">
      <img src="images/hotelparty.jpg" alt="The Party Loft" class="banquet-image" />
      <h2 class="banquet-title"><b>The Party Loft</b></h2>
      <p class="banquet-description">
        A stylish venue with lighting, music, food and unforgettable memories.
      </p>
      <div class="word">
        <ul>
          <li>AREA : 7956 sq.ft</li>
          <li>LOCATION : Second Floor</li>
          <li>MAX OCCUPANCY : Up to 150</li>
        </ul>
      </div>
      <div class="banquet-actions">
        <button class="enquire-button" onclick="openPopup()">ENQUIRE NOW</button>
      </div>
    </div>

    <!-- Card 3 -->
    <div class="banquet-card">
      <img src="images/meetings.jpg" alt="Orion Meeting Room" class="banquet-image" />
      <h2 class="banquet-title"><b>Orion Meeting Room</b></h2>
      <p class="banquet-description">
        Perfectly suited for board meetings and business luncheons.
      </p>
      <div class="word">
        <ul>
          <li>AREA : 993 sq.ft</li>
          <li>LOCATION : First Floor</li>
          <li>MAX OCCUPANCY : Up to 40</li>
        </ul>
      </div>
      <div class="banquet-actions">
        <button class="enquire-button" onclick="openPopup()">ENQUIRE NOW</button>
      </div>
    </div>
  </div>

  <!-- Enquiry Form Popup -->
  <div class="popup-overlay" id="popupOverlay">
    <div class="popup-form">
      <h2>Venue Enquiry Form</h2>
      <form id="enquiryForm" action="venueReservation" method="post">
        <input type="hidden" name="action" value="create">

        <div class="name-row">
          <select class="select-input" name="salutation" required>
            <option value="" disabled selected>Select Salutation</option>
            <option value="mr">Mr</option>
            <option value="ms">Ms</option>
            <option value="mrs">Mrs</option>
            <option value="miss">Miss</option>
          </select>
          <input type="text" name="name" placeholder="Name" required />
        </div>

        <div class="contact-row">
          <input type="email" name="email" placeholder="E-mail" required />
          <div class="phone-group">
            <input type="text" name="contactno" placeholder="Phone Number" inputmode="numeric" pattern="[0-9]*" required />
          </div>
        </div>

        <!-- Event Type & Guest Count Row -->
        <div class="event-guest-row">
          <select class="select-input" name="eventType" required>
            <option value="" disabled selected>Select Event Type</option>
            <option value="wedding">Wedding</option>
            <option value="birthday">Birthday</option>
            <option value="corporate">Party</option>
            <option value="conference">Conference</option>
            <option value="other">Other</option>
          </select>

          <select class="select-input" name="guestCount" required>
            <option value="" disabled selected>No. of Guests</option>
            <option value="1-50">1 - 50</option>
            <option value="51-100">51 - 100</option>
            <option value="101-200">101 - 200</option>
            <option value="201-300">201 - 300</option>
            <option value="300+">300+</option>
          </select>
        </div>

        <button type="submit">Submit</button>
        <br><br>
        <button type="button" onclick="closePopup()">Cancel</button>
      </form>
    </div>
  </div>

  <!-- Success Message Popup (Unused since server handles it) -->
  <div class="popup-overlay" id="successPopup" style="display: none;">
    <div class="popup-form success-style">
      <h2>Thank you for your enquiry!</h2>
      <p>We will get back to you soon.</p>
      <button onclick="closeSuccess()">Close</button>
    </div>
  </div>

  <script>
    function openPopup() {
      document.getElementById("popupOverlay").style.display = "flex";
    }

    function closePopup() {
      document.getElementById("popupOverlay").style.display = "none";
    }

    function closeSuccess() {
      document.getElementById("successPopup").style.display = "none";
    }

    // Allow only digits in contact number input
    document.querySelectorAll('input[pattern="[0-9]*"]').forEach(input => {
      input.addEventListener('input', () => {
        input.value = input.value.replace(/\D/g, '');
      });
    });
  </script>

</body>
</html>
