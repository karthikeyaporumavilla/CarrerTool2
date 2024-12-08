<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Councillors</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h3 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table th, table td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #f4f4f4;
        }

        button {
            background-color: #ff4d4d;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }

        button:hover {
            background-color: #e60000;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <h3>Total Councillors: <c:out value="${councillorCount}"/></h3>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="councillor" items="${councillorList}">
                <tr>
                    <td><c:out value="${councillor.id}"/></td>
                    <td><c:out value="${councillor.name}"/></td>
                    <td><c:out value="${councillor.email}"/></td>
                    <td>
                        <a href="viewCouncillorDetails?id=${councillor.id}">View</a> |
                        <form action="confirmDeleteCouncillor" method="post" style="display:inline;">
                            <input type="hidden" name="id" value="${councillor.id}"/>
                            <button type="submit" onclick="return confirm('Are you sure you want to delete this councillor?');">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>

</html>
