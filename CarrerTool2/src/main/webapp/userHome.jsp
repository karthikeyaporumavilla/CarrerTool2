<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Home</title>
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

        .container {
            margin: 100px auto;
            width: 90%;
            max-width: 800px;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2, h3 {
            text-align: center;
            color: #03396c;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin: 10px 0;
        }

        li a {
            text-decoration: none;
            color: #03396c;
            font-weight: bold;
            font-size: 1em;
            padding: 10px 15px;
            background-color: #00bfff;
            border-radius: 5px;
            display: inline-block;
            transition: background-color 0.3s, color 0.3s;
        }

        li a:hover {
            background-color: #005b96;
            color: white;
        }

        .actions a {
            margin: 10px;
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #03396c;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1em;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .actions a:hover {
            background-color: #00bfff;
            color: #03396c;
        }

        .logout {
            text-align: center;
            margin-top: 20px;
        }

        .logout a {
            color: #f44336;
            font-weight: bold;
            text-decoration: none;
        }

        .logout a:hover {
            color: #b71c1c;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="/">Home</a>
        <a href="profile">Profile</a>
        <a href="testpage">Take Test</a>
        <a href="results">View Results</a>
        <a href="resources">Resources</a>
        <a href="userlogout">Logout</a>
    </div>

    <div class="container">
        <h2>Welcome, user</h2>
        
        </ul>

        <div class="actions">
            <a href="testpage">Take a Test</a>
            <a href="results">View Your Results</a>
            <a href="resources">Explore Resources</a>
			<a href="mathtest.html">math test</a>
			<a href="english.html">english test</a>
			<a href="sciencetest.html">science test</a>
			<a href="aptitudetest.html">Aptitude test</a>
        </div>
    </div>

    <div class="logout">
        <a href="userlogout">Logout</a>
    </div>
</body>
</html>
