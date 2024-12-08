<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Counselor Login</title>
    <link rel="stylesheet" href="styles.css">
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
            display: flex;
            justify-content: center;
            align-items: center;
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

        h3 {
            margin-top: 120px;
            text-align: center;
            color: #03396c;
            font-size: 2em;
            font-weight: bold;
        }

        .form-container {
            width: 100%;
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 1em;
            font-weight: bold;
        }

        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            font-weight: bold;
            color: white;
            background-color: #03396c;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #00bfff;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 10px;
            color: #03396c;
            font-weight: bold;
            font-size: 1em;
            text-decoration: none;
        }

        a:hover {
            color: #005b96;
        }

        .alert {
            margin: 20px auto;
            padding: 10px;
            max-width: 400px;
            text-align: center;
            color: white;
            background-color: #f44336;
            border-radius: 5px;
            font-size: 1em;
        }
    </style>
</head>
<body>
    <!-- Horizontal Navbar -->
    <div class="navbar">
        <a href="/">Home</a>
        <a href="userlogin">User Login</a>
        <a href="councillorlogin">Counselor Login</a>
        <a href="adminlogin">Admin Login</a>
    </div>

    <h3>Counselor Login</h3>

    <div class="form-container">
        <form id="loginForm" method="post" action="checkcouncillorlogin">
            <label for="cemail">Enter Email</label>
            <input type="email" id="cemail" name="cemail" required/>

            <label for="cpwd">Enter Password</label>
            <input type="password" id="cpwd" name="cpwd" required/>

            <div class="button-container">
                <input type="submit" value="Login"/>
                <input type="reset" value="Clear"/>
            </div>
        </form>
        <a href="councillorreg">New Counselor? Register Here</a>
    </div>

    <c:if test="${not empty message}">
        <div class="alert">
            ${message}
        </div>
    </c:if>

    <script>
        document.getElementById('loginForm').addEventListener('submit', function(event) {
            const email = document.getElementById('cemail').value;
            localStorage.setItem('counselorEmail', email);
            console.log('Counselor email stored:', email);
        });
    </script>
</body>
</html>
