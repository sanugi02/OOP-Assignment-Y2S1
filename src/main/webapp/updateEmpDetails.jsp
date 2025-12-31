<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Employee Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="styles/updateEmpDetails.css">
    <link rel="stylesheet" href="styles/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
     <link rel="icon" type="image/jpeg" href="images/favicon.png" />
</head>

<body>
    <%@ include file="header.jsp" %>

    <div class="container">
        <div class="image-container">
            <img src="images/abc.jpg" alt="Employee Illustration">
        </div>
        
        <div class="form-container">
            <h2>Update Employee Details</h2>
            <form action="${pageContext.request.contextPath}/viewStaff?action=update" method="POST">

                <label for="empID">Employee ID:</label>
                <input type="text" name="id" placeholder="Employee ID" value="${employee.id}" readonly required>

                <label for="empPSW">Password:</label>
                <input type="password" name="password" placeholder="Password" value="${employee.password}" required>
				
				<label for="empName">Employee Name</label>
    			<input type="text" name="name" placeholder="Employee Name"  value="${employee.name}" required>

    			<label for="empEmail">Email</label>
    			<input type="email" name="email" placeholder="Email" value="${employee.email}" required>
    			
                <label for="role">Occupations:</label>
                <select name="occupation" class="select-input" required>
			        <option value="" disabled>Select occupation</option>
			        <option value="admin" ${employee.occupation == 'admin' ? 'selected' : ''}>Admin</option>
			        <option value="manager" ${employee.occupation == 'manager' ? 'selected' : ''}>Manager</option>
			        <option value="assistant-manager" ${employee.occupation == 'assistant-manager' ? 'selected' : ''}>Assistant Manager</option>
			        <option value="receptionist" ${employee.occupation == 'receptionist' ? 'selected' : ''}>Receptionist</option>
			        <option value="chef" ${employee.occupation == 'chef' ? 'selected' : ''}>Chef</option>
			        <option value="other" ${employee.occupation == 'other' ? 'selected' : ''}>Other</option>
			    </select>
                <br><br>
                <button type="submit"  class="submit-button">Update Employee</button>
            </form>
			
           
        </div>
    </div>
</body>
</html>
