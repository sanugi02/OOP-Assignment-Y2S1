<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Plan Your Moment</title>
  <link rel="stylesheet" href="styles/updatevenue.css" />
  <link rel="stylesheet" href="styles/header.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
</head>
<body>
<%@ include file="header.jsp" %>

<div class="booking-container">
  <h2 class="booking-title">
    <span class="line"></span>
    UPDATE ENQUIRE FORM
    <span class="line"></span>
  </h2>
  
  <div class="popup-form">
      <h2>Update Venue Enquiry Form</h2>
      <form id="enquiryForm" method="post" action="venueReservation?action=update">
      <input type="hidden" name="id" value="${venueReservation.id}" />
        <div class="name-row">
          
          <input type="text" name="name" placeholder="Name" value="${venueReservation.name}" required />
        </div>

        <div class="contact-row">
          <input type="email" name="email" placeholder="E-mail" value="${venueReservation.email}" required />
          <div class="phone-group">
            
            <input type="text" name="contactno" placeholder="Phone Number" inputmode="numeric" pattern="[0-9]*" value="${venueReservation.contactno}" required />
          </div>
        </div>

        
        <!-- Event Type & Guest Count Row -->
<div class="event-guest-row">
  <select class="select-input" name="eventType" required>
    <option value="" disabled selected>Select Event Type</option>
    <option value="wedding" ${venueReservation.eventType == 'wedding' ? 'selected = "selected"' : ''}>Wedding</option>
    <option value="birthday" ${venueReservation.eventType == 'birthday' ? 'selected = "selected"' : ''}>Birthday</option>
    <option value="corporate" ${venueReservation.eventType == 'corporate' ? 'selected = "selected"' : ''}>Party</option>
    <option value="conference" ${venueReservation.eventType == 'conference' ? 'selected = "selected"' : ''}>Conference</option>
    <option value="other" ${venueReservation.eventType == 'other' ? 'selected = "selected"' : ''}>Other</option>
  </select>

  <select class="select-input" name="guestCount" required>
    <option value="" disabled selected>No. of Guests</option>
    <option value="1-50" ${venueReservation.guestCount == '1-50' ? 'selected = "selected"' : ''}>1 - 50</option>
    <option value="51-100" ${venueReservation.guestCount == '51-100' ? 'selected = "selected"' : ''}>51 - 100</option>
    <option value="101-200" ${venueReservation.guestCount == '101-200' ? 'selected = "selected"' : ''}>101 - 200</option>
    <option value="201-300" ${venueReservation.guestCount == '201-300' ? 'selected = "selected"' : ''}>201 - 300</option>
    <option value="300+" ${venueReservation.guestCount == '300' ? 'selected = "selected"' : ''}>300+</option>
  </select>
</div>

       
        <button type="submit">Update</button>
        <br><br>
       
      </form>
    </div>
  </div>
 <script>
document.querySelectorAll('input[pattern="[0-9]*"]').forEach(input => {
    input.addEventListener('input', () => {
      input.value = input.value.replace(/\D/g, '');
    });
   
    </script>
   
 </body>
 </html>