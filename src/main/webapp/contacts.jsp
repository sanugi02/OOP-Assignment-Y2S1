<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="styles/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9; /* Light gray background */
            color: #333; /* Dark text for readability */
            margin: 0;
            padding: 0;
        }

        /* Ensuring the header is at the top */
        header {
            position: fixed; /* Fixed positioning to keep it at the top */
            top: 0;
            left: 0;
            right: 0;
            z-index: 10; /* Keep it above other elements */
            width: 100%;
            background-color: #003366; /* Match the footer color */
            padding: 10px 0;
        }

        /* Content below the header */
        main {
            margin-top: 70px; /* Add top margin to prevent overlap with fixed header */
        }

        /* Contact Container */
        .contact-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            padding: 40px 20px;
        }

        /* Contact Info Boxes */
        .contact-info {
            display: flex;
            flex-direction: column;
            gap: 20px;
            flex: 1;
            max-width: 400px;
        }

        .contact-box {
            display: flex;
            align-items: center;
            background-color: #003366; /* Match footer color, dark blue */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            color: #fff; /* White text for contrast */
        }

        .contact-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .contact-box .icon {
            font-size: 36px;
            margin-right: 15px;
            color: #ffcc00; /* Yellow for icons */
        }

        .contact-box .info h3 {
            margin: 0;
            font-size: 18px;
            font-weight: bold;
            color: #ffcc00; /* Yellow for headings */
        }

        .contact-box .info p {
            margin: 5px 0 0;
            font-size: 14px;
            color: #fff; /* White for text */
        }

        /* Contact Form */
        .contact-form {
            background-color: #ffffff; /* White background for the form */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            flex: 2;
            max-width: 600px;
            width: 100%;
        }

        .contact-form h2 {
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
            color: #003366; /* Match footer theme */
            text-align: center;
        }

        .contact-form form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 15px;
            font-size: 16px;
            border: 1px solid #ccc; /* Light gray border for inputs */
            border-radius: 5px;
            background-color: #f9f9f9; /* Light gray input background */
            color: #333; /* Dark text inside inputs */
            box-sizing: border-box;
            resize: none;
        }

        .contact-form input:focus,
        .contact-form textarea:focus {
            outline: none;
            border-color: #003366; /* Match footer theme */
            box-shadow: 0 0 5px rgba(0, 51, 102, 0.5);
        }

        .contact-form textarea {
            min-height: 150px;
        }

        .contact-form button {
            padding: 15px;
            font-size: 16px;
            font-weight: bold;
            color: #fff; /* White text */
            background-color: #003366; /* Match footer color */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        .contact-form button:hover {
            background-color: #001a33; /* Darker shade on hover */
            box-shadow: 0 4px 15px rgba(0, 51, 102, 0.4);
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
    <main>
        <div class="contact-container">
            <!-- Contact Info Section -->
            <div class="contact-info">
                <div class="contact-box">
                    <div class="icon">📍</div>
                    <div class="info">
                        <h3>Our Location</h3>
                        <p>Colombo Road <br>WhiteField,<br>Grandpass<br>CrownCrest</p>
                    </div>
                </div>
    
                <div class="contact-box">
                    <div class="icon">📞</div>
                    <div class="info">
                        <h3>Phone Number</h3>
                        <p>(+94) 011 2678943</p>
                    </div>
                </div>
    
                <div class="contact-box">
                    <div class="icon">📠</div>
                    <div class="info">
                        <h3>Fax</h3>
                        <p>1-234-5678-900</p>
                    </div>
                </div>
    
                <div class="contact-box">
                    <div class="icon">✉️</div>
                    <div class="info">
                        <h3>Email</h3>
                        <p>contactus@crowncrest.com</p>
                    </div>
                </div>
            </div>
    
            <!-- Contact Form Section -->
            <div class="contact-form">
                <h2>Contact Us</h2>
                <form action="contact.php" method="POST">
                    <input type="text" name="name" placeholder="Your Name" required>
                    <input type="email" name="email" placeholder="Email" required>
                    <textarea name="message" placeholder="Message" required></textarea>
                    <button type="submit">SEND</button>
                </form>
            </div>
        </div>
    </main>
    <%@ include file="footer.jsp" %>
</body>
</html>
