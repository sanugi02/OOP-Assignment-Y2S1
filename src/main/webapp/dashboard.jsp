<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/AdminDashboard.css">
    <link rel="stylesheet" href="styles/header.css" />
     <link rel="icon" type="image/jpeg" href="images/favicon.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title>Admin-Dashboard</title>
</head>


    
<body>
    <%@ include file="header.jsp" %>
    <hr>

	
    <div class="dashboard">
    <div class="admin"><h1>ADMIN DASHBOARD</h1>
    </div>
        
]
        <div class="card-container1">
            <div class="card1">
                <img src="images/staff.png" alt="Employee Icon">
                <h2>Employee Details</h2>
                <h4 class="details">Managing Staff members</h4>
                <a href="ViewStaff.jsp" class="btn">Access <span class="arrow">→</span></a>
            </div>
            <img src="images/manage.jpg" alt="Employee Image" class="card-img1">
        </div>

        <div class="card-container2">
            <img src="images/imgg.jpeg" alt="User Details Image" class="card-img2">
            <div class="card2">
                <img src="images/user.png" alt="User Icon">
                <h2>Users Details</h2>
                <h4 class="details">Viewing User details</h4>
                <a href="usersDetails.jsp" class="btn">Access <span class="arrow">→</span></a>
            </div>
        </div>
    </div>

    <script src="js/dashboard.js"></script>
</body>
<br><br>
<footer>

</footer>
</html>
