<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Fail</title>
    <link rel="stylesheet" type="text/css" href="styles.css"/>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #03396c;
        }

        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
            background: linear-gradient(135deg, #03396c, #005b96);
            padding: 10px 0;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 1.1em;
            font-weight: bold;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .navbar a:hover {
            background-color: #00bfff;
            color: #03396c;
        }

        .content {
            margin-top: 80px; /* Prevent overlap with navbar */
            text-align: center;
            padding: 20px;
        }

        .alert {
            padding: 20px;
            background-color: #f44336;
            color: white;
            margin: 20px 0;
            border-radius: 5px;
        }

        a {
            text-decoration: none;
            color: #03396c;
            font-size: 1.2em;
            margin-top: 20px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #00bfff;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #005b96;
            color: white;
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

    <div class="content">
        <div class="alert">
            <strong>Login Failed!</strong> <br>
            <c:out value="${message}"/>
        </div>

        <a href="adminlogin">Try Again</a>
    </div>
</body>
</html>
