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
    <link rel="stylesheet" href="styles/benifits.css">
</head>
<body>
<%@ include file="header.jsp" %>
<main>
<div class="booking-container">
  <h2 class="booking-title">
    <span class="line"></span>
    My Benifits
    <span class="line"></span>
  </h2>

  <div class="content-wrapper">
    <div class="sidebar">
      <a href="${pageContext.request.contextPath}/account" class="menu-item">BOOKINGS</a>
      <a href="benifits.jsp" class="menu-item active">
        <span class="label">BENIFITS</span>
        <span class="arrow">›</span>
      </a>
      <a href="accOffer.jsp" class="menu-item">OFFERS</a>
      <a href="membership.jsp" class="menu-item">MEMBERSHIPS</a>
      <a href="membershipsup.jsp" class="menu-item">MEMBER SUPPORT</a>
    </div>
<table>
    <tr>
      <th></th>
      <th>PLATINUM</th>
      <th>GOLD</th>
      <th>SILVER</th>
      <th>COPPER</th>
    </tr>

    <tr>
      <td class="section-heading" colspan="5">Eligibility</td>
    </tr>
    <tr>
      <td>Eligible spends in a year - 365 days</td>
      <td>80 room nights or LKR 8 lakhs</td>
      <td>40 room nights or LKR 4 lakhs</td>
      <td>10 room nights or LKR 1 lakh</td>
      <td>—</td>
    </tr>

    <tr>
      <td class="section-heading" colspan="5">Benefits</td>
    </tr>
    <tr>
      <td>Earn Rate on eligible spends (CrownCrest, SeleQtions, Vivanta and amā stays & trails)</td>
      <td>8 Points per LKR 10000</td>
      <td>7 Points per LKR 10000</td>
      <td>5 Points per LKR 10000</td>
      <td>4 Points per LKR 10000</td>
    </tr>
    <tr>
      <td>Earn Rate on eligible spends (Ginger)</td>
      <td>4 Points per LKR 100</td>
      <td>4 Points per LKR 100</td>
      <td>4 Points per LKR 100</td>
      <td>4 Points per LKR 100</td>
    </tr>
    <tr>
      <td>Member Rates *</td>
      <td>20% Savings</td>
      <td>15% Savings</td>
      <td>10% Savings</td>
      <td>10% Savings</td>
    </tr>
    <tr>
      <td>Early Check-in and Late Check-out #</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>Late checkout only</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Room Upgrades ^</td>
      <td>Unlimited</td>
      <td>20</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Crown Crest Club Room Upgrade Voucher **</td>
      <td>4</td>
      <td>2</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Priority Check-In</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Premium Wi-Fi</td>
      <td>Yes</td>
      <td>—</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Spa</td>
      <td>20% Savings</td>
      <td>15% Savings</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Food & Beverages</td>
      <td>10% Savings</td>
      <td>10% Savings</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Happy Hours at designated venue (6 PM to 8 PM)</td>
      <td>Yes</td>
      <td>—</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>Special Welcome Amenity</td>
      <td>Yes</td>
      <td>—</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tr>
      <td>24/7 Dedicated Concierge Service</td>
      <td>Yes</td>
      <td>Yes</td>
      <td>—</td>
      <td>—</td>
    </tr>
    <tfoot>
      <tr>
        <td colspan="5" class="note">
          * On Best Available Rates<br>
          # Subject to availability<br>
          ^ To next level from the room booked and subject to availability at time of check-in. Up to standard suite. Applicable for a stay of up to 5 nights<br>
          ** Subject to availability at time of check-in. Applicable for a stay of up to 5 days. Transfers not included<br>
          Membership Benefits <a href="#">Terms and Conditions</a>
        </td>
      </tr>
    </tfoot>
  </table>
</main>
<%@ include file="footer.jsp" %>
</body>
</html>