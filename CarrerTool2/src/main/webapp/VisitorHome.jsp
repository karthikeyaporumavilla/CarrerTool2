<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Career Enhancement Tool - Home</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Page layout and colors */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            height: 100%;
            font-family: Arial, sans-serif;
            color: #03396c;
            background-color: #e0f7fa;
        }

        body {
            display: flex;
            flex-direction: column;
        }

        header {
            text-align: center;
            padding: 30px 0;
            background: linear-gradient(135deg, #03396c, #005b96);
            color: white;
        }

        header h1 {
            font-size: 2.5em;
        }

        header p {
            font-size: 1.2em;
            margin-top: 5px;
        }

        /* Tile Container Styling */
        .tile-container {
            display: flex;
            justify-content: center;
            gap: 30px;
            padding: 20px;
            flex: 1;
            align-items: center;
        }

        .tile {
            width: 180px;
            height: 180px;
            background: linear-gradient(145deg, #007bb5, #00bfff);
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: white;
            border-radius: 15px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
            text-align: center;
        }

        .tile h2 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .tile p {
            font-size: 1em;
            font-weight: 300;
        }

        .tile:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }

        /* Footer Styling */
        footer {
            text-align: center;
            padding: 20px 0;
            background-color: #03396c;
            color: white;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to the Career Enhancement Tool</h1>
        <p>Choose a role to begin your journey</p>
    </header>

    <section class="tile-container">
        <!-- Admin Tile -->
        <div class="tile" onclick="location.href='adminlogin'">
            <h2>Admin</h2>
            <p>Manage users and oversee the system</p>
        </div>

        <!-- Counselor Tile -->
        <div class="tile" onclick="location.href='councillorlogin'">
            <h2>Counselor</h2>
            <p>Guide students in their career choices</p>
        </div>

        <!-- User Tile -->
        <div class="tile" onclick="location.href='userlogin'">
            <h2>User</h2>
            <p>Explore career paths and take assessments</p>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Career Enhancement Tool. All rights reserved.</p>
    </footer>
</body>
</html>
