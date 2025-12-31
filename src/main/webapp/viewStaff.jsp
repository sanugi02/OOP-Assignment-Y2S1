<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/ViewStaff.css">
    <link rel="stylesheet" href="styles/header.css" />
     <link rel="icon" type="image/jpeg" href="images/favicon.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="shortcut icon" href="./assets/favicon.png" type="image/x-icon">


<title>Admin-Dashboard</title>


</head>

<body>
<%@ include file="header.jsp" %>

<div class="container">
  <h2 class="header">
    <span class="line"></span>
    MANAGE EMPLOYEE ACCOUNTS
    <span class="line"></span>
  </h2>
</div>

<div class="employee-management">


<a href="viewStaff?action=create" class="action-button"> ➕ Add New Employee</a>



<table>
    <tr>
        <th>Employee ID</th>
        <th>Password</th>
        <th>Employee Name</th>
        <th>Email</th>
        <th>Occupations</th>
        <th>Action</th>
    </tr>
    <!-- Sample row -->
    <c:forEach var="employee" items="${employees}">
    <tr>
        <td>${employee.id }</td>
        <td>${employee.password }</td>
        <td>${employee.name }</td>
        <td>${employee.email }</td>
        <td>${employee.occupation }</td>
        <td>
        	<a class="edit-btn" href="viewStaff?action=edit&id=${employee.id}">Edit</a>

        	    	
			<a class='delete-btn' href="viewStaff?action=delete&id=${employee.id}" onclick="return confirm('Are you sure you want to delete this employee?')">Delete</a>


		</td>
	</tr>
	</c:forEach>
	
</table>


</div>

</body>
</html>