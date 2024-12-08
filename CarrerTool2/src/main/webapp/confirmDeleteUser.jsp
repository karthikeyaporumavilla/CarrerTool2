<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Confirm Delete</title>
</head>
<body>
    <h3>Are you sure you want to delete this user?</h3>
    <form action="deleteUser" method="post">
        <input type="hidden" name="id" value="${param.id}"/>
        <button type="submit">Yes, Delete</button>
        <a href="viewallusers">No, Go Back</a>
    </form>
</body>
</html>
