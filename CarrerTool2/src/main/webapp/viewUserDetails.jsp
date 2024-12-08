<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Details</title>
</head>
<body>
    <h3>User Details</h3>
    <p>ID: <c:out value="${user.id}"/></p>
    <p>Name: <c:out value="${user.name}"/></p>
    <p>Email: <c:out value="${user.email}"/></p>
    <p>Contact: <c:out value="${user.contact}"/></p>
    <a href="viewallusers">Back to User List</a>
</body>
</html>
