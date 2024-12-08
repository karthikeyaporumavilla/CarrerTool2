<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>View All Councillors</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Displaying the logged-in user's name -->
    <div class="header">
        <h2>Welcome, ${username}</h2> <!-- Username from session or model -->
    </div>
    
    <h1>All Councillors</h1>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Gender</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <!-- Loop through all councillors -->
            <c:forEach var="councillor" items="${councillors}">
                <tr>
                    <td>${councillor.name}</td>
                    <td>${councillor.gender}</td>
                    <td>${councillor.contact}</td>
                    <td>${councillor.email}</td>
                    <td>
                        <a href="userCouncillorDetails?councillorId=${councillor.id}">
                            <button>View Details</button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
