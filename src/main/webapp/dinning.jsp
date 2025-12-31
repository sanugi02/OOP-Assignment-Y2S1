<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>family meal</title>
    <link rel="stylesheet" href="styles/header.css">
    <link rel="stylesheet" href="styles/dinning.css">
       
   
<body>
<%@ include file="header.jsp" %>
    <div class="offer-container">
        <h1 class = "he">DINNING OFFERS</h1>
        <h2 class="offer-title">FAMILY MEAL - INDULGENCE </h2>
        <p class="offer-description">
            Enjoy a burst of flavours with The Crown Crest’s family meals boasting options from around the world. Choose your family meal option from Chinese, Thai, Indian, Western and Sri Lankan delights and select from over 10 delectable meals. This features starters, mains and desserts
        </p>
        <a href="#book-now" class="btn">BOOK NOW</a>
    </div>

    <img src="images/family.jpg" alt="Luxury Room 1" class="offer-image">

    <div class="offer-section">
        <div class="offer-left-section">
            <h2 class="offer-header">OFFER INCLUSIONS</h2>
            <ul class="offer-items">
                <li>The family meal includes starters, mains and desserts</li>
                <li>The family meal can feed up to 2 – 4,6 and even 8 based on the meal selected</li>
                <li>The inclusions are based on the cuisine and family meal you choose via The Crown Crest’s indulgence website</li>
            </ul>

            <h2 class="offer-header">TERMS & CONDITIONS</h2>
            <ul class="offer-items">
                <li>The family meals are available on the indulgence website.</li>
                <li>The price provided is subject to change.</li>
                <li>The items are based on availability and subject to change.</li>
            </ul>
        </div>
        <div class="offer-right-section">
            <img src="images/family.jpg" alt="family Room 1" class="room-image">
            <p class="offer-description">
                Savor an exquisite culinary journey at The Crown Crest. Relish the finest flavors, crafted with precision and passion, to delight your senses and elevate your dining experience. Our commitment to excellence ensures that every meal becomes a cherished memory.
            </p>
            <a href="#book-now" class="booking-button">BOOK NOW</a>
        </div>
    </div>
     <%@ include file="footer.jsp" %>
</body>
</html>