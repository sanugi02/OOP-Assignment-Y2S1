<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>wedding offer </title>
<link rel="stylesheet" href="styles/header.css">
    <link rel="stylesheet" href="styles/wedding.css">
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="offer-container">
        <h1 class = "he">WEDDING OFFERS</h1>
        <h2 class="offer-title">WEDDIINGS AT THE CROWN CREST</h2>
        <p class="offer-description">
            Discover one of the most graceful outdoor wedding venues . The Bliss is The Crown Crest's  lush green lawns that face the Galle face green and blue Indian ocean. Ideal for parties, cocktails and weddings, this venue takes you one step closer to bringing your dream fairy-tale to reality. Book your wedding at The Oval and receive a savings of up to 10%.
        </p>
        <a href="#book-now" class="btn">BOOK NOW</a>
    </div>

    <img src="images/weddings.jpg" alt="wedding Room 2" class="offer-image">

    <div class="offer-section">
        <div class="offer-left-section">
            <h2 class="offer-header">OFFER INCLUSIONS</h2>
            <ul class="offer-items">
                <li>This offer is valid for 100 pax or more.</li>
                <li>Save up to 10% for all weddings held until the 30th of November 2025.</li>
                <li>This offer can be utilized across all menu categories.</li>
            </ul>

            <h2 class="offer-header">TERMS & CONDITIONS</h2>
            <ul class="offer-items">
                <li>Validity: This offer is valid for all weddings held until the 30th of November 2026.</li>
                <li>Bookable via a sales representative at The Crown Crest.</li>
                <li>Offer valid for all wedding packages and categories.</li>
            </ul>
        </div>
        <div class="offer-right-section">
            <img src="images/bridal.jpg" alt="WDDINGS Room 1" class="room-image">
            <p class="offer-description">
                Celebrate your special day in grandeur at The Crown Crest. From elegant venues to meticulous planning, we ensure every detail is crafted to perfection. Let us transform your dream wedding into a breathtaking reality, leaving you with memories to treasure forever.
            </p>
            <a href="#book-now" class="booking-button">BOOK NOW</a>
        </div>
    </div>
      <%@ include file="footer.jsp" %>
</body>
</html>