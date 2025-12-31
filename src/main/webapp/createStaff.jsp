<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="icon" type="image/jpeg" href="images/favicon.png" />
    <link rel="stylesheet" href="styles/createStaff.css">
    <link rel="stylesheet" href="styles/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>

<body>
    <%@ include file="header.jsp" %>

    <div class="container">
        <div class="image-container">
            <img src="images/cd.jpg" alt="Employee Illustration">
        </div>
        
        <div class="form-container">
            <h2>Add Employee</h2>
            <form action="${pageContext.request.contextPath}/viewStaff?action=create" method="POST">
            

                <label for="empPSW">Password:</label>
                <input type="password" placeholder="Password" name="password" required>

				<label for="empName">Employee Name</label>
    			<input type="text" placeholder="Employee Name" name="name"required>

    			<label for="empEmail">Email</label>
    			<input type="email" placeholder="Email" name="email" required>
    			
                <label for="role">Occupations:</label>
                <select class="select-input" name="occupation" required>
				    <option value=""disabled selected>Select occupation</option>
				    <option value="admin">Admin</option>
				    <option value="manager">Manager</option>
				    <option value="assistant-manager">Assistant Manager</option>
				    <option value="receptionist">Receptionist</option>
				    <option value="chef">Chef</option>
				    <option value="other">Other</option>
  				</select>
                <br><br>
                <button type="submit" class="submit-button" onclick="${pageContext.request.contextPath}/viewStaff">Add Employee</button>
            </form>
			
            <a href="${pageContext.request.contextPath}/viewStaff?action=list" class="view-link">View Employee Details</a>

        </div>
    </div>
</body>
</html>
