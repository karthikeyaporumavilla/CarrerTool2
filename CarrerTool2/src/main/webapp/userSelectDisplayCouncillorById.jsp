<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Councillor Details</title>
</head>
<body>
    <h2>Councillor Details</h2>

    <!-- Display councillor details -->
    <table>
        <tr>
            <th>ID</th>
            <td>${councillor.id}</td>
        </tr>
        <tr>
            <th>Name</th>
            <td>${councillor.name}</td>
        </tr>
        <tr>
            <th>Gender</th>
            <td>${councillor.gender}</td>
        </tr>
        <tr>
            <th>Date of Birth</th>
            <td>${councillor.dateofbirth}</td>
        </tr>
        <tr>
            <th>Email</th>
            <td>${councillor.email}</td>
        </tr>
        <tr>
            <th>Contact</th>
            <td>${councillor.contact}</td>
        </tr>
    </table>

    <!-- Form to assign councillor to user -->
    <h3>Assign This Councillor to Yourself</h3>
    <form action="/confirmSelectCouncillor" method="post">
        <input type="hidden" name="userId" value="${userId}" />  <!-- Ensure the userId is set correctly -->
        <input type="hidden" name="councillorId" value="${councillor.id}" /> <!-- Hidden councillor ID field -->
        <button type="submit">Assign Councillor</button>
    </form>

    <a href="/userviewcouncillors">Back to Councillors List</a>
</body>
</html>
