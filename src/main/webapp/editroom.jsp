<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Edit Room</title>
  <link rel="stylesheet" href="styles/header.css">
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex h-screen bg-gray-100 text-gray-800">

<%@ include file="header.jsp" %>

  <!-- Main Content -->
  <div class="flex-1 flex flex-col overflow-hidden">

    <!-- Top Bar -->
    <header class="flex justify-between items-center bg-white shadow px-6 py-4">
      <h1 class="text-xl font-semibold">Edit Room</h1>
      <div class="flex items-center space-x-4">
        <span class="text-gray-600">Admin: <strong>Manager</strong></span>
        <button class="text-red-500 hover:text-red-700">
          <i class="fas fa-sign-out-alt"></i> Logout
        </button>
      </div>
    </header>

    <!-- Content Area -->
    <main class="flex-1 p-6 overflow-auto">
      <div class="max-w-4xl mx-auto bg-white shadow rounded-lg p-6">
        <h2 class="text-2xl font-semibold mb-6">Update Room Details</h2>

        <form action="${pageContext.request.contextPath}/roomvenue?action=update" method="post" enctype="multipart/form-data">

        <input type="hidden" name="id" value="${room.id}">
        
        <!-- Room Name -->
        <div>
          <label class="block mb-1 font-medium" for="room-name">Room Name</label>
          <input id="room-name" name="roomName" type="text" placeholder="e.g. SEASIDE FAMILY HEAVEN" value="${room.roomName}"
            class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-orange-400">
        </div>

        <!-- Room Image Upload -->
        <div>
          <label class="block mb-1 font-medium">Room Image</label>
          <input type="file" accept="image/*" id="room-image" name="image"
            class="block w-full text-sm text-gray-600 file:mr-4 file:py-2 file:px-4
                   file:rounded-md file:border-0 file:text-sm file:font-semibold
                   file:bg-orange-50 file:text-orange-700 hover:file:bg-orange-100" />
          
          <!-- Display current image if it exists -->
          <c:if test="${not empty room.image}">
            <div class="mt-4">
              <h3>Current Image:</h3>
              <img src="${pageContext.request.contextPath}/images/${room.image}" alt="Current Room Image" class="w-48 rounded shadow">
            </div>
          </c:if>
          
          <!-- Image Preview for New Upload -->
          <div class="mt-4">
            <img id="image-preview" src="#" alt="Image Preview" class="hidden w-48 rounded shadow">
          </div>
        </div>        

        <!-- Details -->
        <div>
          <label class="block mb-1 font-medium" for="description-name">Details</label>
          <input id="description-name" type="text" name="description"
            class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-orange-400" value="${room.description}">
        </div>

        <!-- Price -->
        <div>
          <label class="block mb-1 font-medium" for="price">Price per Night ($)</label>
          <input id="price" name="price" type="number" placeholder="e.g. 120"
            class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-orange-400" value="${room.price}">
        </div>

        <!-- Status -->
        <div>
          <label class="block mb-1 font-medium" for="status">Status</label>
          <select id="status" name="status"
            class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-orange-400">
            <option value="">Select status</option>
            <option value="Available" ${room.status == 'Available' ? 'selected' : ''}>Available</option>
            <option value="Booked" ${room.status == 'Booked' ? 'selected' : ''}>Booked</option>
            <option value="Under Maintenance" ${room.status == 'Under Maintenance' ? 'selected' : ''}>Under Maintenance</option>
          </select>
        </div>

        <!-- Submit Button -->
        <div class="pt-4">
          <button type="submit"
            class="bg-orange-500 text-white px-6 py-2 rounded hover:bg-orange-600">
            <i class="fas fa-plus mr-2"></i> Update Room
          </button>
        </div>
      </form>
    </div>
  </main>

</div>

<!-- Image Preview Script -->
<script>
  const input = document.getElementById('room-image');
  const preview = document.getElementById('image-preview');

  input.addEventListener('change', function () {
    const file = this.files[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = function (e) {
        preview.src = e.target.result;
        preview.classList.remove('hidden');
      };
      reader.readAsDataURL(file);
    }
  });
</script>

</body>
</html>
