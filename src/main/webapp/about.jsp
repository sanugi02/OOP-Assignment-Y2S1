<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Crown Crest</title>
    <link rel="stylesheet" href="styles/header.css">

    <style>
        /* Reset default spacing */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
        }

        /* Header-specific styles */
        header {
            margin: 0;
            padding: 10px 20px;
            background-color: transparent;
            color: #2d3142;
            box-shadow: none;
            width: 100%;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5em;
            font-weight: bold;
            text-transform: uppercase;
        }

        .nav-links {
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            text-decoration: none;
            color: #2d3142;
            font-size: 1em;
        }

        .nav-links a:hover {
            text-decoration: underline;
        }

        /* Page-specific styles */
        .hero {
            margin-top: 0;
            padding: 20px 0;
        }

        .hero h1 {
            font-size: 2.5em;
            color: #2d3142;
            text-align: left; /* Align to the left */
            margin-left: 20px; /* Add a slight margin for better spacing */
        }

        .hero p {
            text-align: center;
            color: #4a4e69;
            margin-top: 10px;
        }

        .about-section, .corporate-section, .milestones-section, .more-info-section {
            margin: 20px auto;
            max-width: 900px;
            text-align: center;
        }

        .about-section p {
            font-size: 1.2em;
            line-height: 1.8;
        }

        .corporate-section p, .milestones-section p {
            font-size: 1.1em;
            color: #555;
        }

        .board-members {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .board-member {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #ffffff;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .member-photo {
            width: 140px;
            height: 140px;
            border-radius: 50%;
            margin-bottom: 15px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            text-align: left;
        }

        ul li {
            margin-bottom: 10px;
            font-size: 1.1em;
            color: #4a4e69;
        }

        .learn-more-btn {
            padding: 10px 25px;
            font-size: 0.9em;
            background-color: #2d3142;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }

        .learn-more-btn:hover {
            background-color: #4a4e69;
        }

        #more-info {
            margin-top: 15px;
            font-size: 1em;
            color: #555;
        }
    </style>
</head>

<body>
    <header>
        <%@ include file="header.jsp" %>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <h4>About Crown Crest</h4>
                <p>
                    Welcome to Crown Crest, where effortless online hotel reservations meet unparalleled luxury. Since 2010, we’ve redefined hospitality by combining world-class accommodations with the convenience of modern technology. Explore and book your dream stay in just a few clicks, and let us elevate your travel experience with personalized services, exquisite comfort, and unforgettable memories. At Crown Crest, every journey begins with excellence.
                </p>
            </div>
        </section>

        <section class="corporate-section">
            <div class="container">
                <h2>Board of Management</h2>
                <p>Our leadership team ensures that Crown Crest remains a premier choice for seamless online hotel reservations, delivering exceptional service and unforgettable guest experiences.</p>
                <div class="board-members">
                    <div class="board-member">
                        <img src="images/Kasun Perera.jpg" alt="Kasun Perera - CEO" class="member-photo">
                        <div class="member-info">
                            <h3>Kasun Perera</h3>
                            <p><strong>CEO:</strong> With over 20 years in hospitality management, Kasun leads our vision of world-class service and guest satisfaction.</p>
                        </div>
                    </div>
                    <div class="board-member">
                        <img src="images/Nadeeka Wijesinghe.jpg" alt="Nadeeka Wijesinghe - CFO" class="member-photo">
                        <div class="member-info">
                            <h3>Nadeeka Wijesinghe</h3>
                            <p><strong>CFO:</strong> Nadeeka oversees our financial strategies, ensuring the growth and sustainability of our brand.</p>
                        </div>
                    </div>
                    <div class="board-member">
                        <img src="images/Amila Fernando.jpg" alt="Amila Fernando - COO" class="member-photo">
                        <div class="member-info">
                            <h3>Amila Fernando</h3>
                            <p><strong>COO:</strong> Amila oversees day-to-day operations, focusing on the seamless execution of events and services.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="milestones-section">
            <div class="container">
                <h2>Milestones</h2>
                <p>Crown Crest has achieved many milestones since its inception, reflecting our dedication to excellence:</p>
                <ul>
                    <li><strong>2010:</strong> Crown Crest opens its doors, offering world-class accommodations to travelers worldwide.</li>
                    <li><strong>2016:</strong> Expanded to include premium suites and state-of-the-art conference facilities.</li>
                    <li><strong>2019:</strong> Recognized as one of the top online hotel booking platforms, receiving the "Excellence in Hospitality Innovation Award."</li>
                    <li><strong>2024:</strong> Launched our exclusive mobile app, enabling seamless hotel reservations on the go.</li>
                    <li><strong>2025:</strong> Completed a major digital upgrade, enhancing our platform with AI-driven personalization and real-time availability features.</li>
                </ul>
            </div>
        </section>

        <section class="more-info-section">
            <div class="container">
                <button class="learn-more-btn" onclick="showMore()">Learn More About Our History</button>
                <p id="more-info" style="display: none;">
                    Founded by hospitality visionaries, Crown Crest was created with the belief that every guest deserves a seamless and exceptional travel experience. Over the years, we’ve welcomed thousands of travelers, earning a reputation for unmatched service and meticulous attention to detail. Our mission is to continue redefining hospitality by offering personalized stays, luxurious accommodations, and a booking experience that is as effortless as it is memorable.
                </p>
            </div>
        </section>
    </main>

    <%@ include file="footer.jsp" %>

    <script>
        function showMore() {
            const moreInfo = document.getElementById('more-info');
            moreInfo.style.display = moreInfo.style.display === 'none' ? 'block' : 'none';
        }
    </script>
</body>

</html>
