<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="updateCouncillorStatus" method="post">
    <input type="hidden" name="id" value="${councillor.id}" />
    <label for="status">Update Status:</label>
    <select name="status" id="status">
        <option value="accepted">Accepted</option>
        <option value="rejected">Rejected</option>
    </select>
    <button type="submit">Update</button>
</form>


</body>
</html>