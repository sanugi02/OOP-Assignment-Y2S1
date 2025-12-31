<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Manage Offers</title>
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="styles/header.css">
  <link rel="stylesheet" href="styles/footer.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
  
  <style>
    .gold-gradient {
      background: linear-gradient(to right, #00093c, #b89644);
    }
  </style>
</head>

<body class="bg-gray-100 font-sans">

  <!-- Header Include -->
  <%@ include file="header.jsp" %>

  <!-- Title Section -->
  <!-- Main Content Container -->
<div class="pt-32 px-12">
  <div class="text-center mb-6">
    <h1 class="text-3xl font-semibold text-gray-800 border-y-2 border-gray-300 inline-block px-6 py-2">
      Manage Offers
    </h1>
  </div>


  <!-- Create Offer Button -->
  <div class="flex justify-end px-12 mt-6">
    <a href="offer?action=create"
       class="bg-blue-600 text-white font-medium px-6 py-2 rounded-lg hover:bg-green-700 shadow-md">
      Create New Offer
    </a>
  </div>

  <!-- Offers Table -->
  <!-- Offers Table with space before footer -->
<div class="overflow-x-auto px-12 mt-6 mb-20">

    <table class="w-full border-collapse">
      <thead class="gold-gradient text-white font-semibold rounded">
        <tr>
          <th class="px-6 py-3 text-left">Name</th>
          <th class="px-6 py-3 text-left">Table Type</th>
          <th class="px-6 py-3 text-left">Start Date</th>
          <th class="px-6 py-3 text-left">End Date</th>
          <th class="px-6 py-3 text-left">Discount (%)</th>
          <th class="px-6 py-3 text-left">Actions</th>
        </tr>
      </thead>
      <tbody class="bg-white text-gray-800">
        <c:forEach var="offer" items="${offers}">
          <tr class="hover:bg-gray-50 text-center border-t">
            <td class="px-6 py-4">${offer.offerName}</td>
            <td class="px-6 py-4">${offer.offerTablesType}</td>
            <td class="px-6 py-4">${offer.startDate}</td>
            <td class="px-6 py-4">${offer.endDate}</td>
            <td class="px-6 py-4">${offer.discountPercentage}</td>
            <td class="px-6 py-4">
              <a href="offer?action=edit&id=${offer.id}"
                 class="bg-blue-500 text-white px-4 py-1 rounded hover:bg-blue-600 mx-1 inline-block">
                Edit
              </a>
              <a href="offer?action=delete&id=${offer.id}"
                 class="bg-red-500 text-white px-4 py-1 rounded hover:bg-red-600 mx-1 inline-block"
                 onclick="return confirm('Are you sure?')">
                Delete
              </a>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
 </div>
  <%@ include file="footer.jsp" %>
</body>
</html>
