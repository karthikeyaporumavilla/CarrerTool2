<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Councillor</title>
</head>
<body>
    <h2>Select a Councillor to Chat</h2>
    
    <!-- Check if there are any councillors -->
    <c:if test="${not empty councillors}">
        <form action="${pageContext.request.contextPath}/startchat" method="post">
            <label for="councillor">Choose a Councillor:</label>
            <select id="councillor" name="councillorId">
                <c:forEach var="councillor" items="${councillors}">
                    <option value="${councillor.id}">${councillor.name}</option>
                </c:forEach>
            </select>
            <br><br>
            <input type="submit" value="Start Chat">
        </form>
    </c:if>
    
    <c:if test="${empty councillors}">
        <p>No councillors available at the moment. Please try again later.</p>
    </c:if>
    
    <a href="${pageContext.request.contextPath}/userhome">Back to Home</a>
</body>
</html>
