<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Confirm Delete</title>
</head>
<body>
    <h3>Are you sure you want to delete this councillor?</h3>
    <form action="deleteCouncillor" method="post">
        <input type="hidden" name="id" value="${param.id}"/>
        <button type="submit">Yes, Delete</button>
        <a href="viewallcouncillors">No, Go Back</a>
    </form>
</body>
</html>

