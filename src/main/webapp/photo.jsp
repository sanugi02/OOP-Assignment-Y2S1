<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery</title>
    <link rel="stylesheet" href="styles/header.css">
    <style>
        @charset "UTF-8";
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            width: 90%;
            margin: 0 auto;
            padding-top: 30px;
        }

        .section-title {
            text-align: center;
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 30px;
            color: #333;
        }

        .product-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product-card {
            background-color: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .product-card:hover {
            transform: scale(1.05);
        }

        .product-image {
            width: 100%;
            height: auto;
            object-fit: cover;
            border-bottom: 1px solid #ddd;
        }

        .product-info {
            padding: 15px;
            text-align: center;
        }

        .product-title {
            font-size: 1.1rem;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
        }

        .product-price {
            font-size: 1rem;
            color: #777;
            margin-bottom: 15px;
        }

        .add-to-cart-btn {
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .add-to-cart-btn:hover {
            background-color: #0056b3;
        }

        .hero {
            position: relative;
            width: 100%;
            height: 300px;
            overflow: hidden;
        }

        .hero-images {
            display: flex;
            width: 300%;
            height: 100%;
            animation: slide 9s infinite;
        }

        .hero-image {
            flex: 1;
            background-size: cover;
            background-position: center;
        }

        @keyframes slide {
            0% { transform: translateX(0); }
            33% { transform: translateX(-100%); }
            66% { transform: translateX(-200%); }
            100% { transform: translateX(0); }
        }

        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 1;
        }

        .hero-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            z-index: 2;
            color: white;
        }

        .hero-content h1 {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .hero-content button {
            padding: 10px 20px;
            font-size: 1rem;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .hero-content button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
<main>
    <!-- Hero Section with Image Slider -->
    <div class="hero">
        <div class="hero-images">
            <div class="hero-image" style="background-image: url('images/background1.png');"></div>
            <div class="hero-image" style="background-image: url('images/background2.jpeg');"></div>
            <div class="hero-image" style="background-image: url('images/background3.jpg');"></div>
        </div>
        <div class="hero-overlay"></div>
        <div class="hero-content">
            <h1>Welcome to Our Hotel Gallery</h1>
            
        </div>
    </div>

    <!-- Gallery Section -->
    <div class="container">
       
        <div class="product-container">
            <!-- Product 1 -->
            <div class="product-card">
                <img src="images/in1.jpg" alt="indoor" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">Indoor Area</h3>
                    <p class="product-price">Experience cozy and elegant indoor spaces designed for your comfort.</p>
                   
                </div>
            </div>
            <!-- Product 2 -->
            <div class="product-card">
                <img src="images/outdoor.png" alt="outdoor" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">Outdoor Area</h3>
                    <p class="product-price">Relax and unwind in our scenic outdoor spaces, perfect for leisure and events.</p>
                    
                </div>
            </div>
            <!-- Product 3 -->
            <div class="product-card">
                <img src="images/game.jpg" alt="game" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">Game Area</h3>
                    <p class="product-price">Enjoy fun and entertainment in our vibrant game area.</p>
                    
                </div>
            </div>
            <!-- Product 4 -->
            <div class="product-card">
                <img src="images/POOL2.png" alt="pool" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">Pool Area</h3>
                    <p class="product-price">Dive into relaxation in our refreshing pool area.</p>
                   
                </div>
            </div>
            
            <div class="product-card">
                <img src="images/welcomedrink.jpg" alt="welcomedrink" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">welcome drink</h3>
                    <p class="product-price">Enjoy a refreshing welcome drink upon your arrival</p>
                   
                </div>
            </div>
            
             <!– Product 6 –>
            <div class="product-card">
                <img src="images/hotelevent.jpg" alt="event" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">hotel event</h3>
                    <p class="product-price">Celebrate in style with our exceptional hotel events.</p>
                    
                </div>
            </div>
            
             <!-- Product 7 -->
            <div class="product-card">
                <img src="images/staff.png" alt="staff" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">staff</h3>
                    <p class="product-price">Experience exceptional service from our friendly staff.</p>
                   
                </div>
            </div>
            
             <!– Product 8 –>
            <div class="product-card">
                <img src="images/theater.png" alt="Smartwatch" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">theater</h3>
                    <p class="product-price">Enjoy a cinematic experience in our hotel theater</p>
              
                </div>
            </div>
        </div>
    </div>
</main>
    <%@ include file="footer.jsp" %>
</body>
</html>
