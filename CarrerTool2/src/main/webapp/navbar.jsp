<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NavBar</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
    }

    .navbar {
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #03396c, #005b96);
        padding: 10px 0;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .navbar a {
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        margin: 0 10px;
        font-size: 1.1em;
        font-weight: bold;
        transition: background-color 0.3s, color 0.3s;
        border-radius: 5px;
    }

    .navbar a:hover {
        background-color: #00bfff;
        color: #03396c;
    }
</style>
</head>
<body>
<div class="navbar">
    <a href="/">Home</a>
    <a href="userlogin">User Login</a>
    <a href="councillorlogin">Counselor Login</a>
    <a href="adminlogin">Admin Login</a>
</div>
</body>
</html>
