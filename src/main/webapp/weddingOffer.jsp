<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>event offer </title>
<link rel="stylesheet" href="styles/header.css">
    <link rel="stylesheet" href="styles/weddingOffer.css">
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container">
    <p class="heading">EVENT OFFERS</p>
    <h1 class="title">PROMOTIONS</h1>
    <p class="description">
        Visit our five-star city property and take advantage of some exciting hotel offers.
        Here, you will find a list of all our ongoing offers, events, and happenings at the Crown Crest.
        From brunch to high tea, family meal promotions, and wedding offers, your choice is endless here in the city’s preferred hotel.
    </p>
    <div class="offers-menu">
        <a href="offer.jsp">All</a>
        <a href="roomoffer.jsp">Room Offers</a>
        <a href="dinningOffer.jsp">Dining Offers</a>
        <a href="#"class="active">Event Offers</a>
    </div>
</div>

 <div class="offer-section">
        <div class="offer-cards">
            <div class="offer-card">
                <img src="images/EVENT.jpg" alt="wedding Offer 1">
                <div class="offer-content">
                    <h3 class="offer-title">EVENTS</h3>
                   
                    <div class="dropdown">
                        <label for="event-options">Select an Event:</label>
                        <select id="event-options" class="dropdown-select">
                            <option value="conference">Conference</option>
                            
                            <option value="party">Party</option>
                            <option value="corporate">Corporate Event</option>
                        </select>
                    </div>

                    <div class="buttons">
                       
                        
                    </div>
                </div>
            </div>
            <div class="offer-card">
                <img src="images/weddings.jpg" alt="wedding Offer 2">
                <div class="offer-content">
                    <h3 class="offer-title">WEDDINGS</h3>
                    
                    <div class="buttons">
                        
                        <a href="wedding.jsp" class="know-more">View more &gt;</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <%@ include file="footer.jsp" %>
</body>
</html>
    
    