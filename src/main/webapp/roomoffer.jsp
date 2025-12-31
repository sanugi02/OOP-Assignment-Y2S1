<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Offers</title>
    <link rel="stylesheet" href="styles/header.css">
    <link rel="stylesheet" href="styles/roomoffer.css">
    <style>
        .footer {
            margin-top: 50px; /* Add space above footer */
            background-color: #f1f1f1; /* Optional: Footer background color */
            padding: 20px; /* Add padding for better spacing */
            text-align: center; /* Center align footer content */
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container">
    <p class="heading">ROOM OFFERS</p>
    <h1 class="title">PROMOTIONS</h1>
    <p class="description">
        Visit our five-star city property and take advantage of some exciting hotel offers.
        Here, you will find a list of all our ongoing offers, events, and happenings at the Crown Crest.
        From brunch to high tea, family meal promotions, and wedding offers, your choice is endless here in the city’s preferred hotel.
    </p>
    <div class="offers-menu">
        <a href="offer.jsp">All</a>
        <a href="#" class="active">Room Offers</a>
        <a href="dinningOffer.jsp">Dining Offers</a>
        <a href="weddingOffer.jsp">Event Offers</a>
    </div>
</div>

<!-- Room Offers Section -->
<div class="offer-section">
    <div class="offer-cards">
        <div class="offer-card">
            <img src="images/LUXURY.jpg" alt="Luxury Room 1">
            <div class="offer-content">
                <h3 class="offer-title">LUXURY SUITE OFFER</h3>
                <div class="buttons">
                    <a href="room.jsp" class="know-more">View more &gt;</a>
                </div>
            </div>
        </div>
        <div class="offer-card">
            <img src="images/escape.jpg" alt="Luxury Room 2">
            <div class="offer-content">
                <h3 class="offer-title">Romantic Escapes</h3>
                <div class="buttons">
                    <a href="#" class="know-more">View more &gt;</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer Section -->
<div class="footer">
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>
