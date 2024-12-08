<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>View All Test Results</title>
</head>
<body>
    <h3>Total Test Responses: <c:out value="${testResponseCount}"/></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>User Email</th>
            <th>Question 1</th>
            <th>Question 2</th>
            <th>Question 3</th>
            <th>Question 4</th>
            <th>Question 5</th>
            <th>Question 6</th>
            <th>Question 7</th>
            <th>Question 8</th>
            <th>Question 9</th>
            <th>Question 10</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="testResponse" items="${testResponseList}">
            <tr>
                <td><c:out value="${testResponse.id}"/></td>
                <td><c:out value="${testResponse.userEmail}"/></td>
                <td><c:out value="${testResponse.q1}"/></td>
                <td><c:out value="${testResponse.q2}"/></td>
                <td><c:out value="${testResponse.q3}"/></td>
                <td><c:out value="${testResponse.q4}"/></td>
                <td><c:out value="${testResponse.q5}"/></td>
                <td><c:out value="${testResponse.q6}"/></td>
                <td><c:out value="${testResponse.q7}"/></td>
                <td><c:out value="${testResponse.q8}"/></td>
                <td><c:out value="${testResponse.q9}"/></td>
                <td><c:out value="${testResponse.q10}"/></td>
                <td>
                    <a href="viewTestResponseDetails?id=${testResponse.id}">View</a> |
                    <form action="confirmDeleteTestResponse" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${testResponse.id}"/>
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
