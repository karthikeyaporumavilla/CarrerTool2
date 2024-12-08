<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Counselor Registration</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #e0f7fa;
            color: #03396c;
        }

        .navbar {
            position: fixed; /* Sticky navbar */
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000; /* Ensures it stays on top */
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

        h2 {
            margin-top: 80px; /* Prevent overlap with navbar */
            text-align: center;
            font-size: 2em;
            color: #03396c;
        }

        .form-container {
            margin: 20px auto;
            background: linear-gradient(145deg, #007bb5, #00bfff);
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px; /* Responsive */
            box-sizing: border-box;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        label {
            font-size: 1.1em;
            color: white;
            text-align: left;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        input[type="submit"],
        input[type="reset"] {
            flex: 1;
            padding: 10px;
            background-color: #03396c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #005b96;
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

    <h2>Counselor Registration</h2>

    <div class="form-container">
        <form method="post" action="insertcouncillor">
            <label for="cname">Full Name</label>
            <input type="text" id="cname" name="cname" required/>

            <label for="cgender">Gender</label>
            <select id="cgender" name="cgender" required>
                <option value="">Select</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <label for="cdob">Date of Birth</label>
            <input type="date" id="cdob" name="cdob" required/>

            <label for="cemail">Email</label>
            <input type="email" id="cemail" name="cemail" required/>

            <label for="cpwd">Password</label>
            <input type="password" id="cpwd" name="cpwd" required/>

            <label for="ccontact">Contact Number</label>
            <input type="text" id="ccontact" name="ccontact" required/>

            <div class="button-container">
                <input type="submit" value="Register"/>
                <input type="reset" value="Clear"/>
            </div>
        </form>
    </div>
</body>
</html>
