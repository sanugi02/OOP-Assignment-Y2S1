<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Crown Crest Hotel</title>

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

  <!-- Custom CSS -->
  <link rel="stylesheet" href="styles/Homepage.css" />
  <link rel="stylesheet" href="styles/header.css" />
  
</head>
<body class="bg-gray-50 font-sans">

 <%@ include file="header.jsp" %>
 
 <!-- Hero Section -->
  <section class="hero-section">
    <div class="hero-overlay">
      <div class="hero-content">
        <h1 class="text-white text-4xl md:text-5xl font-bold">Welcome to Crown Crest</h1>
        <p class="text-white text-lg mt-4">Luxury and elegance redefined</p>
      </div>
    </div>
  </section>
</body>
</html>