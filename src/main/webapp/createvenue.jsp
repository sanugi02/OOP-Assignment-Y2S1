<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create New Venue</title>
    <script src="https://kit.fontawesome.com/a2e1e6fdb3.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles/header.css">
     <link rel="icon" type="image/jpeg" href="images/favicon.png" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex h-screen bg-gray-100 text-gray-800">

<%@ include file="header.jsp" %>

<div class="flex-1 flex flex-col overflow-hidden">

    <!-- Top Bar -->
    <header class="flex justify-between items-center bg-white shadow px-6 py-4">
        <h1 class="text-xl font-semibold">Create New venue</h1>
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
            <h2 class="text-2xl font-semibold mb-6">Venue Details</h2>

            <form action="${pageContext.request.contextPath}/venue?action=create" method="POST" enctype="multipart/form-data" class="space-y-4">
                <input type="hidden" name="action" value="create">

                <!-- Room Name -->
                <div>
                    <label class="block mb-1 font-medium" for="venue-name">Venue Name</label>
                    <input id="venue-name" type="text" name="venueName" placeholder="e.g. SEASIDE FAMILY HEAVEN" 
                           class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-orange-400">
                </div>

                <!-- Room Image Upload -->
                <div>
                    <label class="block mb-1 font-medium" for="room-image">Image</label>
                    <input type="file" name="image" accept="image/*" id="venue-image"
                           class="block w-full text-sm text-gray-600 file:mr-4 file:py-2 file:px-4
                                  file:rounded-md file:border-0 file:text-sm file:font-semibold
                                  file:bg-orange-50 file:text-orange-700 hover:file:bg-orange-100" />
                    <div class="mt-4">
                        <img id="image-preview" src="#" alt="Image Preview" class="hidden w-48 rounded shadow">
                    </div>
                </div>

                <!-- Description -->
                <div>
                    <label class="block mb-1 font-medium" for="description-name">Description</label>
                    <input id="description-name" type="text" name="description" 
                           class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-orange-400">
                </div>

               <div>
                    <label class="block mb-1 font-medium" for="details">Details</label>
                    <input id="details" type="text" name="details" 
                           class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-orange-400">
                </div>

                <!-- Status -->
                <div>
                    <label class="block mb-1 font-medium" for="status">Status</label>
                    <select id="status" name="status"
                            class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-orange-400">
                        <option value="">Select status</option>
                        <option value="Available" >Available</option>
                        <option value="Booked">Booked</option>
                        <option value="Under Maintenance">Under Maintenance</option>
                    </select>
                </div>

                <!-- Submit Button -->
                <div class="pt-4">
                    <button type="submit"
                            class="bg-orange-500 text-white px-6 py-2 rounded hover:bg-orange-600"  onclick="${pageContext.request.contextPath}/venue?">
                        Add Room
                    </button>
                </div>
            </form>
        </div>
    </main>
</div>

<!-- Image Preview Script -->
<script>
    const input = document.getElementById('venue-image');
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
