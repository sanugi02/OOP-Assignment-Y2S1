<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>My Account</title>
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
  <style>
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
  font-size: 40px;
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

.content-wrapper {
  display: flex;
  align-items: flex-start;
  gap: 20px;
  max-width: 1400px;
  margin: 0 auto;
  margin-right:50px;
}

.sidebar {
  width: 220px;
  flex-shrink: 0;
}

.main-content {
  flex-grow: 1;
}

.reservation-section {
  display: flex;
  flex-direction: column;
  gap: 30px;
}

.reservation-card {
  width: 100%;
  background-color: #fff;
  padding: 25px;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  position: relative;
  min-height: 320px;
  overflow-x: auto;
}

.menu-item {
  display: block;
  padding: 15px 10px;
  color: #555;
  font-size: 16px;
  text-decoration: none;
  border-bottom: 1px solid transparent;
  margin-left: 10px;
}

.menu-item:hover {
  background-color: #f0f0f0;
}

.menu-item.active {
  background-color: #f5f1e9;
  color: #b89644;
  font-weight: bold;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.arrow {
  font-size: 18px;
}

h3 {
  margin-bottom: 20px;
  font-size: 22px;
  color: #2c3e50;
}

.action-button {
  background-color: #b89644;
  color: white;
  border: none;
  padding: 8px 20px;
  border-radius: 6px;
  text-decoration: none;
  transition: background-color 0.3s ease;
  position: absolute;
  right: 20px;
  top: 20px;
}

.action-button:hover {
  background-color: #2471a3;
}

table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 20px;
  border-radius: 8px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
  overflow: hidden;
}

table th,
table td {
  padding: 12px 15px;
  text-align: left;
  white-space: nowrap;
}

table th {
  background: linear-gradient(to right, #b89d4f, #f9e79f);
  color: #1f1f1f;
  text-transform: uppercase;
  font-size: 14px;
  letter-spacing: 0.5px;
}

table tr:nth-child(even) {
  background-color: #f4f6f7;
}

table tr:hover {
  background-color: #eaf2f8;
  transition: background-color 0.3s ease;
}

.edit-btn, .delete-btn {
  display: inline-block;
  padding: 8px 16px;
  border-radius: 6px;
  text-decoration: none;
  font-weight: bold;
  margin-right: 10px;
  color: #fff;
}

.edit-btn {
  background-color: #2980b9;
}

.edit-btn:hover {
  background-color: #2471a3;
}

.delete-btn {
  background-color: #e74c3c;
}

.delete-btn:hover {
  background-color: #c0392b;
}
 </style>
 
  <link rel="stylesheet" href="styles/header.css">
</head>
<body>
<%@ include file="header.jsp" %>

<div class="booking-container">
  <h2 class="booking-title">
    <span class="line"></span>
    MY ACCOUNT
    <span class="line"></span>
  </h2>

  <div class="content-wrapper">
    <div class="sidebar">
      <a href="myAcc.jsp" class="menu-item active">
        <span class="label">BOOKINGS</span>
        <span class="arrow">›</span>
      </a>
      <a href="benifits.jsp" class="menu-item">BENEFITS</a>
      <a href="accOffer.jsp" class="menu-item">OFFERS</a>
      <a href="membership.jsp" class="menu-item">MEMBERSHIPS</a>
      <a href="membershipsup.jsp" class="menu-item">MEMBER SUPPORT</a>
    </div>

    <div class="main-content">
      <div class="reservation-section">
        <div class="reservation-card">
          <h3><b>Room Reservations</b></h3>
          <a href="#" class="action-button" onclick="window.location.href='booking.jsp'">Add Room Reservation</a>
          <table>
            <tr>
              <th>Name</th>
              <th>Email</th>
              <th>ContactNo</th>
              <th>CheckIn</th>
              <th>CheckOut</th>
              <th>Adults</th>
			  <th>Children</th>
              <th>NoOfRooms</th>
              <th>Action</th>
            </tr>

           <c:forEach var="reservation" items="${reservations}">
            <tr>
			    <td>${reservation.name}</td>
			    <td>${reservation.email}</td>
			    <td>${reservation.contactno}</td>
			    <td>${reservation.checkin}</td>
			    <td>${reservation.checkout}</td>
			    <td>${reservation.adults}</td>
                <td>${reservation.children}</td>
			    <td>${reservation.noofrooms}</td>
			    <td>
			    <div style="display: flex; gap: 10px;">
                <a class='edit-btn' href="#" onclick="window.location.href='reservation?action=edit&id=${reservation.id}'">Edit</a>
                <a class='delete-btn' href='#' onclick='confirmRoomDelete(${reservation.id})'>Delete</a>
                </div>
              </td>
			</tr>
		</c:forEach>
            
          </table>
        </div>

        <div class="reservation-card">
          <h3><b>Venue Reservations</b></h3>
          <a href="venue.jsp" class="action-button">Add Venue Reservation</a>
          <table>
            <tr>
              <th>Name</th>
              <th>Email</th>
              <th>ContactNo</th>
              <th>Event</th>
              <th>Guests</th>
              <th>Action</th>
            </tr>
      
            <c:forEach var="vreservation" items="${venueReservations}">
            <tr>
			    <td>${vreservation.name}</td>
			    <td>${vreservation.email}</td>
			    <td>${vreservation.contactno}</td>
			    <td>${vreservation.eventType}</td>
			    <td>${vreservation.guestCount}</td>
               <td>
                <a class='edit-btn' href="#" onclick="window.location.href='venueReservation?action=edit&id=${vreservation.id}'">Edit</a>
               <a class='delete-btn' href='#' onclick='confirmVenueDelete(${vreservation.id})'>Delete</a>

              </td>
			</tr>
		</c:forEach>
          </table>
        </div>

              </div>
    </div>
  </div>
</div>
<script>
function confirmRoomDelete(id) {
  const confirmed = confirm("Are you sure you want to delete this room reservation?");
  if (confirmed) {
    window.location.href = 'reservation?action=delete&id=' + id;
  }
}

function confirmVenueDelete(id) {
  const confirmed = confirm("Are you sure you want to delete this venue reservation?");
  if (confirmed) {
    window.location.href = 'venueReservation?action=delete&id=' + id;
  }
}
</script>
<%@ include file="footer.jsp" %>
</body>
</html>
