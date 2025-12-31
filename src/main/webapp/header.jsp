<%@ page session="true" %>
<%@ page import="com.crowncrest.model.UserLogin" %>
<%@ page import="com.crowncrest.model.EmployeeLogin" %>
<%
    UserLogin user = (UserLogin) session.getAttribute("user");
    EmployeeLogin employee = (EmployeeLogin) session.getAttribute("employee");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Crown Crest Hotel</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
  <link rel="icon" type="image/png" href="images/favicon.png">
  <link rel="stylesheet" href="styles/styles.css" />
</head>
<body class="bg-gray-50 font-sans">
<header class="bg-transparent absolute top-0 left-0 w-full z-50">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex justify-between items-center h-20">
      <div class="logo">
        <a href="header.jsp"><img src="images/logo.png" id="logoimage" alt="Crown Crest Logo"></a>
      </div>
      <nav class="hidden md:flex space-x-12 text-medium font-semibold uppercase">
        <a href="home.jsp" class="text-black hover:text-blue-400">Home</a>
        <a href="about.jsp" class="text-black hover:text-blue-400">Our features</a>
        <a href="venue.jsp" class="text-black hover:text-blue-400">Venue</a>
        <a href="offer.jsp" class="text-black hover:text-blue-400">Offers</a>
        <a href="photo.jsp" class="text-black hover:text-blue-400">Gallery</a>
        <a href="contacts.jsp" class="text-black hover:text-blue-400">Contacts Us</a>
      </nav>
      <div class="hidden md:flex items-center space-x-6">
        <% if (user != null) { %>
          <a href="${pageContext.request.contextPath}/account" class="text-black hover:text-blue-400 flex items-center space-x-1">
            <i class="fas fa-user"></i>
            <span>My Account</span>
          </a>
          
          <a href="logout.jsp" class="text-black hover:text-blue-400 flex items-center space-x-1">
            <i class="fas fa-sign-out-alt"></i>
            <span>Logout</span>
          </a>
          
          <a href="booking.jsp" class="bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded">
          Book A Stay
        </a>
        <% }else if(employee != null){ %>
        <a href="${pageContext.request.contextPath}/account" class="text-black hover:text-blue-400 flex items-center space-x-1">
        <i class="fas fa-user"></i>
        <span>My Dashboard</span>
      </a>
      
      <a href="logout.jsp" class="text-black hover:text-blue-400 flex items-center space-x-1">
        <i class="fas fa-sign-out-alt"></i>
        <span>Logout</span>
      </a>
    <% 
        	
        }
 
        else { %>
          <a href="login.jsp" class="text-black hover:text-blue-400 flex items-center space-x-1">
            <i class="fas fa-user"></i>
            <span>Login</span>
          </a>
          <a href="signup.jsp" class="text-black hover:text-blue-400 flex items-center space-x-1">
            <i class="fas fa-user-plus"></i>
            <span>Register</span>
          </a>
        <% } %>
      </div>

    </div>
  </div>
</header>
</body>
</html>
