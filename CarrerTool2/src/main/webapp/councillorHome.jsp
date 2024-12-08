<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Councillor Home</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
    <%@include file="navbar.jsp" %>
    <h2 align="center">Welcome to the Councillor Dashboard</h2>

    <div class="content" align="center" style="margin-top: 20px;">
        <h3>Hello, ${councillor.name}!</h3> <!-- Displays the councillor's name -->
        <p>Welcome to your home page. Here you can access various features and manage your details.</p>
        
        <div class="councillor-options">
            <a href="viewProfile">View Profile</a> |
            <a href="updateProfile">Update Profile</a> |
            <a href="manageRequests">Manage Requests</a> |
            <a href="resources">Resources</a>|
			<a href="testresults">testresults</a> |
            <a href="councillorlogout">Logout</a>|
			<a href="viewtestresults">View All Test Results</a>
        </div>
    </div>
</body>
</html>