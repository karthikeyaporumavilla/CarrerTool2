<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Councillor Details</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Displaying the logged-in user's name -->
    <div class="header">
        <h2>Welcome, ${username}</h2> <!-- Username from session or model -->
    </div>

    <h1>Councillor Details</h1>
    
    <!-- Display selected councillor's details -->
    <h3>Name: ${councillor.name}</h3>
    <p>Gender: ${councillor.gender}</p>
    <p>Date of Birth: ${councillor.dateofbirth}</p>
    <p>Email: ${councillor.email}</p>
    <p>Contact: ${councillor.contact}</p>
    <p>Status: ${councillor.status}</p>

    <!-- Confirmation options -->
    <form action="confirmSelection" method="post">
        <input type="hidden" name="userId" value="${userId}">
        <input type="hidden" name="councillorId" value="${councillor.id}">
        <button type="submit" name="action" value="confirm">Confirm</button>
        <a href="userViewAllCouncillors">
            <button type="button">Abort</button>
        </a>
    </form>
</body>
</html>
