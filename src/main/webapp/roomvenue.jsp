
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Room and Venue Management</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="styles/header.css" />
   <link rel="icon" type="image/jpeg" href="images/favicon.png" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
  
  <style>
  
  .action-button {
    background-color: #2980b9;
    color: white;
    border: none;
    padding: 15px 25px;
    border-radius: 5px;
    text-decoration: none;
    transition: background-color 0.3s ease;
    margin-top:15px;
    margin-left:800px;
  	
   
}

.action-button:hover {
    background-color: #2471a3;
}

  
 .room-management{
    padding-top:120px;
}

  .edit-btn, .delete-btn {
  display: inline-block;
  padding: 10px 20px;
  border-radius: 8px;
  text-decoration: none;
  font-weight: bold;
  transition: background-color 0.3s ease;
  margin-right: 10px;
}

.edit-btn {
  background-color: #2980b9;
  color: #fff;
}

.edit-btn:hover {
  background-color: #2471a3;
}

.delete-btn {
  background-color: #e74c3c;
  color: #fff;
}

.delete-btn:hover {
  background-color: #c0392b;
}
  
  </style>
</head>

<%@ include file="header.jsp" %>
<body class="bg-gray-100 min-h-screen p-6">

  <div class="max-w-7xl mx-auto space-y-10">

    <!-- Room Management Table -->
    
<div class="room-management">
    <div class="bg-white shadow-md rounded-lg p-6">
      <div class="flex justify-between items-center mb-4">
        <h2 class="text-xl font-semibold">Room Management</h2>
        
        <a href="roomvenue?action=create" class="action-button"> ➕ Create New Room</a>
       
          
     
      </div>

      
      <div class="overflow-x-auto">
        <table class="w-full table-fixed border border-gray-200 text-sm text-left">
          <thead class="bg-gray-100 text-gray-700 uppercase">
            <tr>
              <th class="w-1/6 px-4 py-3">Room Name</th>
              <th class="w-1/6 px-4 py-3">Image</th>
              <th class="w-1/6 px-4 py-3">Description</th>
              <th class="w-1/6 px-4 py-3">Price</th>
              <th class="w-1/6 px-4 py-3">Status</th>
              <th class="w-1/6 px-4 py-3 text-center">Actions</th>
            </tr>
          </thead>
          <tbody class="divide-y divide-gray-200">
        
            <c:forEach var="room" items="${rooms}">

              <tr class="hover:bg-gray-50">
                <td class="px-4 py-3"> ${room.roomName}</td>
                <td class="px-4 py-3">
                  <img src="${pageContext.request.contextPath}/images/${room.image}" alt="Room Image" class="w-16 h-16 rounded object-cover" />

                </td>
                <td class="px-4 py-3">${room.description}</td>
                <td class="px-4 py-3">${room.price}</td>
                <td class="px-4 py-3 text-red-600 font-medium">${room.status}</td>
                <td>
        				<a class="edit-btn" href="roomvenue?action=edit&id=${room.id}">Edit</a>
						<a class='delete-btn' href="roomvenue?action=delete&id=${room.id}" onclick="return confirm('Are you sure you want to delete this employee?')">Delete</a>
				</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
        </div>
      </div>
    </div>

    <!-- Venue Management Table -->
    <!-- ... Your existing venue management code ... -->

  </div>
</body>
</html>