<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Select a Councillor</title>
</head>
<body>
    <h2>Select a Councillor</h2>

    <!-- Form to assign a councillor -->
    <form action="/assignCouncillorToUser" method="post">
        <label for="userId">Select Your User ID:</label>
        <input type="number" id="userId" name="userId" required/>

        <br/><br/>

        <label for="councillorId">Select a Councillor:</label>
        <select id="councillorId" name="councillorId" required>
            <!-- Loop through the councillorList passed from the controller -->
            <c:forEach var="councillor" items="${councillorList}">
                <option value="${councillor.id}">${councillor.name}</option>
            </c:forEach>
        </select>

        <br/><br/>

        <button type="submit">Assign Councillor</button>
    </form>
</body>
</html>
