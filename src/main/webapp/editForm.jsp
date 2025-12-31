<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>edit form</title>
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="styles/header.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
</head>
<body class="bg-gray-100">
  <%@ include file="header.jsp" %>
  <!-- Dashboard Layout -->
  <div class="flex h-screen">

    <!-- Main Content Area -->
    <div class="flex-1 flex flex-col">

      
      <!-- Content Area -->
      <main class="flex-grow bg-gray-100 flex justify-center items-center">
        <div class="bg-white shadow rounded-lg p-6 w-full max-w-md">
          <h3 class="text-lg font-bold mb-4">Edit New Offer</h3>

          <!-- Form for Creating New Room -->
          <form class="space-y-6" action="offer" method="post">
  <input type="hidden" name="action" value="update">
  <input type="hidden" name="id" value="${offer.id}">

  <div>
    <label class="block text-gray-700 font-medium mb-2">Offer Name</label>
    <select name="offerName" class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
      <option ${offer.offerName == 'Room Offer' ? 'selected' : ''}>Room Offer</option>
      <option ${offer.offerName == 'Dinning Offer' ? 'selected' : ''}>Dinning Offer</option>
      <option ${offer.offerName == 'Event Offer' ? 'selected' : ''}>Event Offer</option>
    </select>
  </div>

  <div>
    <label class="block text-gray-700 font-medium mb-2"> Offer Tables Type</label>
    <select name="offerTablesType" class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
      <option ${offer.offerTablesType == 'Dining Table' ? 'selected' : ''}>Dining Table</option>
      <option ${offer.offerTablesType == 'Coffee Table' ? 'selected' : ''}>Coffee Table</option>
      <option ${offer.offerTablesType == 'Study Table' ? 'selected' : ''}>Study Table</option>
      <option ${offer.offerTablesType == 'Bedside Table' ? 'selected' : ''}>Bedside Table</option>
    </select>
  </div>

  <div>
    <label class="block text-gray-700 font-medium mb-2">Start Date</label>
    <input type="date" name="startDate" value="${offer.startDate}" class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
  </div>

  <div>
    <label class="block text-gray-700 font-medium mb-2">End Date</label>
    <input type="date" name="endDate" value="${offer.endDate}" class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
  </div>

  <div>
    <label class="block text-gray-700 font-medium mb-2">Discount Percentage</label>
    <input type="number" name="discountPercentage" value="${offer.discountPercentage}" class="w-full border border-gray-300 px-4 py-2 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
  </div>

  <div class="flex justify-end">
    <button type="submit" class="bg-blue-500 text-white px-6 py-2 rounded hover:bg-blue-600">
      <i class="fas fa-save"></i> Submit
    </button>
  </div>
</form>
          
        </div>
      </main>

    </div>
  </div>

</body>
</html>
    