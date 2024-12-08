<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
</head>
<body>
    <h3>User Profile</h3>
    <p>Name: <c:out value="${user.name}"/></p>
    <p>Email: <c:out value="${user.email}"/></p>
    <p>Contact: <c:out value="${user.contact}"/></p>

    <!-- Display assigned councillor -->
    <h4>Assigned Councillor:</h4>
    <p>Name: <c:out value="${user.councillor.name}"/></p>
    <p>Email: <c:out value="${user.councillor.email}"/></p>

    <a href="/logout">Logout</a>
</body>
</html>
