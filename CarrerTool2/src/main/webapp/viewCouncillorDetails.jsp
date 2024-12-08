<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Councillor Details</title>
</head>
<body>
    <h3>Councillor Details</h3>
    <p>ID: <c:out value="${councillor.id}"/></p>
    <p>Name: <c:out value="${councillor.name}"/></p>
    <p>Email: <c:out value="${councillor.email}"/></p>
    <p>Status: <c:out value="${councillor.status}"/></p>

    <form action="updateCouncillorStatus" method="post">
        <input type="hidden" name="id" value="${councillor.id}" />
        <label for="status">Update Status:</label>
        <select name="status" id="status">
            <option value="registered">---SELECT---</option>
            <option value="accepted">Accepted</option>
            <option value="rejected">Rejected</option>
        </select>
        <button type="submit">Update</button>
    </form>
</body>
</html>
