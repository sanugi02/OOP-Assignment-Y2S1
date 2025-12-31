<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>luxury suite Offer</title>
    <link rel="stylesheet" href="styles/header.css">
    <link rel="stylesheet" href="styles/room.css">
 </head>
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="offer-container">
        <h1 class = "he">ROOM OFFERS</h1>
        <h2 class="offer-title">LUXURY SUITE OFFER</h2>
        <p class="offer-description">
            Indulge in luxury at the Crown Crest Suites. Enjoy the best rates in town for spacious suites, savor the city's finest culinary delights at our world-renowned buffet, and unwind with exclusive discounts on rejuvenating spa treatments and delectable dining experiences. Book directly with us and enjoy our best rate guarantee and exclusive benefits!
        </p>
        <a href="#book-now" class="btn">BOOK NOW</a>
    </div>

    <img src="images/LUXURY.jpg" alt="Luxury Room 1" class="offer-image">

    <div class="offer-section">
        <div class="offer-left-section">
            <h2 class="offer-header">OFFER INCLUSIONS</h2>
            <ul class="offer-items">
                <li>Daily Breakfast</li>
                <li>15% Off at Senses Spa</li>
                <li>10% off at Harbour Court</li>
            </ul>

            <h2 class="offer-header">TERMS & CONDITIONS</h2>
            <ul class="offer-items">
                <li>Offer valid until 31st October 2025 for both residents and non-residents.</li>
                <li>The offers cannot be exchanged for cash and/or used in conjunction with any other promotional programs or offers provided by service establishments involved in this promotion.</li>
                <li>The Crown Crest reserves the right to withdraw, modify, or change all or any of the rules, terms, and conditions applicable to this promotion at any given time without prior notice.</li>
            </ul>
        </div>
        <div class="offer-right-section">
            <img src="images/LUXURY.jpg" alt="Luxury Room 1" class="room-image">
            <p class="offer-description">
                Experience the epitome of hospitality at The Crown Crest. Your comfort and convenience are our top priority.
            </p>
            <a href="#book-now" class="booking-button">BOOK NOW</a>
        </div>
    </div>
     <%@ include file="footer.jsp" %>
</body>
</html>