<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
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
            position: fixed; /* Makes the navbar stick to the top */
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000; /* Ensures it stays above other content */
            background: linear-gradient(135deg, #03396c, #005b96);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 10px 0;
            text-align: center;
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

        h3 {
            margin-top: 80px; /* Adds spacing to avoid content overlapping with the navbar */
            font-size: 1.8em;
            text-align: center;
            color: #03396c;
        }

        .form-container {
            margin: 20px auto;
            background: linear-gradient(145deg, #007bb5, #00bfff);
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 350px; /* Responsive width */
            box-sizing: border-box;
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 1.1em;
            margin-bottom: 5px;
            color: white;
            text-align: left;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.1);
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

        .alert {
            margin-top: 10px;
            color: red;
            font-size: 1em;
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

    <h3>Admin Login</h3>

    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <label for="auname">Enter Username</label>
            <input type="text" id="auname" name="auname" required/>

            <label for="apwd">Enter Password</label>
            <input type="password" id="apwd" name="apwd" required/>

            <div class="button-container">
                <input type="submit" value="Login"/>
                <input type="reset" value="Clear"/>
            </div>
        </form>
    </div>

    <c:if test="${not empty message}">
        <div class="alert">
            ${message}
        </div>
    </c:if>
</body>
</html>
