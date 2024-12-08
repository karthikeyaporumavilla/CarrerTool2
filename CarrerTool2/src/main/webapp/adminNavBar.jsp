<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
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

        /* Add some padding to the body to prevent content from being hidden under the navbar */
        body {
            padding-top: 60px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <a href="adminhome">Admin Home</a>
        <a href="viewallcouncillors">View All Counselors</a>
        <!-- <a href="deletecouncillor">Delete Counselor</a> -->
        <a href="viewallusers">View All Users</a>
        <!-- <a href="deleteuser">Delete User</a> -->
        <!-- <a href="updatecouncillorstatus">Update Counselor Status</a> -->
        <a href="adminlogout">Logout</a>
    </div>
</body>
</html>
