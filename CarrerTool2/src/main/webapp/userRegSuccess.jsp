<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration Success</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
    <%@include file="navbar.jsp" %>
    <h2 align="center">User Registration</h2>

    <div class="content" align="center" style="margin-top: 20px;">
        <h3>${message}</h3> <!-- Displays the success message passed from the controller -->
        <p>Your registration as a user was successful.</p>
        <p><a href="userlogin">Go to Login Page</a></p>
    </div>
</body>
</html>