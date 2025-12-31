<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Offer</title>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
     <link rel="stylesheet" href="styles/header.css">
     <link rel="icon" type="image/jpeg" href="images/favicon.png" />
</head>
<body class="bg-gray-100">
<%@ include file="header.jsp" %>
    <div class="max-w-xl mx-auto mt-28 p-8 bg-white rounded shadow">
    
        <h2 class="text-2xl font-semibold mb-6">Create New Offer</h2>
        <form action="offer?action=create" method="post" class="space-y-6">
            <!-- Offer Name -->
            <div>
                <label for="offerName" class="block mb-2 font-medium text-gray-700">Offer Name</label>
                <select id="offerName" name="offerName" class="w-full border border-gray-300 p-2 rounded">
                    <option value="">Select an offer</option>
                    <option value="Room Offer">Room Offer</option>
                    <option value="Dinning Offer">Dinning Offer</option>
                    <option value="Event Offer">Event Offer</option>
                </select>
            </div>

            <!-- Table Type -->
            <div>
                <label for="OfferTablesType" class="block mb-2 font-medium text-gray-700">Table Type</label>
                <select id="offerTablesType" name="offerTablesType" class="w-full border border-gray-300 p-2 rounded">
                    <option value="">Select a table type</option>
                    <option value="Dining Table">Dining Table</option>
                    <option value="Coffee Table">Coffee Table</option>
                    <option value="Study Table">Study Table</option>
                    <option value="Bedside Table">Bedside Table</option>
                </select>
            </div>

            <!-- Start Date -->
            <div>
                <label for="startDate" class="block mb-2 font-medium text-gray-700">Start Date</label>
                <input type="date" id="startDate" name="startDate" class="w-full border border-gray-300 p-2 rounded" />
            </div>

            <!-- End Date -->
            <div>
                <label for="endDate" class="block mb-2 font-medium text-gray-700">End Date</label>
                <input type="date" id="endDate" name="endDate" class="w-full border border-gray-300 p-2 rounded" />
            </div>

            <!-- Discount Percentage -->
            <div>
                <label for="discountPercentage" class="block mb-2 font-medium text-gray-700">Discount Percentage</label>
                <input type="number" id="discountPercentage" name="discountPercentage" min="0" max="100" class="w-full border border-gray-300 p-2 rounded" />
            </div>

            <!-- Submit Button -->
            <div class="flex justify-between">
                <a href="offer" class="bg-gray-500 text-white px-4 py-2 rounded hover:bg-gray-600">Cancel</a>
                <button type="submit" class="bg-blue-500 text-white px-6 py-2 rounded hover:bg-blue-600">
                    <i class="fas fa-save"></i> Submit
                </button>
            </div>
        </form>
    </div>
</body>
</html>
