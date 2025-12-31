<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>The Crown Crest Hotel</title>
  <link rel="stylesheet" href="styles/style.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png"/>
  <link rel="stylesheet" href="styles/header.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>

<body>
  <%@ include file="header.jsp" %>

  <section class="home">
    <div class="content">
      <div class="item">
        <video autoplay muted loop playsinline class="w-full h-screen object-cover absolute z-0">
          <source src="images/home.mp4" type="video/mp4">
        </video>
        <div class="text">
          <h1>Luxurious Stays Await</h1>
          <p>Host with elegance, Rest in refinement, Where every moment is wrapped in luxury...</p>
          <div class="flex">
            <button class="primary-btn">READ MORE</button>
            <button class="secondary-btn">CONTACT US</button>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="about top">
    <div class="container flex">
      <div class="left">
        <div class="heading">
          <h1>WELCOME</h1>
          <h2>The Crown Crest Hotel</h2>
        </div>
        <p>Welcome to The Crown Crest, where timeless elegance meets modern comfort. 
        Whether you're planning an unforgettable celebration or seeking a serene retreat, our hotel offers luxurious stays, exquisite venues, 
        and exceptional service fit for royalty. Discover a haven where every detail is designed to delight.</p>
        <button class="primary-btn">ABOUT US</button>
      </div>
      <div class="right">
        <img src="images/image1.jpg" alt="">
      </div>
    </div>
  </section>

  <section class="services top">
    <div class="container">
      <div class="heading">
        <h1>SERVICES</h1>
        <h2>Our Services</h2>
        <p>At The Crown Crest, we offer a range of premium services<br> including elegant accommodations, 
        event hosting, fine dining, and personalized hospitality to <br>ensure every guest experience is exceptional.</p>
      </div>

      <div class="content flex_space">
        <div class="left grid2">
          <div class="box"><div class="text"><i class="fa-solid fa-champagne-glasses"></i><h3>Delicious Food</h3></div></div>
          <div class="box"><div class="text"><i class="fa-solid fa-person-biking"></i><h3>Fitness</h3></div></div>
          <div class="box"><div class="text"><i class="fa-solid fa-utensils"></i><h3>In-house Restaurant</h3></div></div>
          <div class="box"><div class="text"><i class="fa-solid fa-spa"></i><h3>Beauty Spa</h3></div></div>
        </div>

        <div class="slideshow-container">
          <div class="slide fade"><img src="images/food.jpg" alt="Slide 1"></div>
          <div class="slide fade"><img src="images/gym.jpg" alt="Slide 2"></div>
          <div class="slide fade"><img src="images/inhouse.jpg" alt="Slide 3"></div>
          <div class="slide fade"><img src="images/spa.jpg" alt="Slide 4"></div>
        </div>
      </div>
    </div>
  </section>



  <%@ include file="footer.jsp" %>

  <script>
    document.addEventListener("DOMContentLoaded", function () {
      let currentIndex = 0;
      const slides = document.querySelectorAll(".slide");

      function showSlides() {
        slides.forEach((slide, index) => {
          slide.style.display = (index === currentIndex) ? "block" : "none";
        });
        currentIndex = (currentIndex + 1) % slides.length;
        setTimeout(showSlides, 4000);
      }

      showSlides();
    });
  </script>

  <script src="https://kit.fontawesome.com/032d11eac3.js" crossorigin="anonymous"></script>
</body>

</html>
