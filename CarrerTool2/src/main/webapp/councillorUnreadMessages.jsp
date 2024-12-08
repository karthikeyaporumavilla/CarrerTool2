<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Unread Messages</title>
</head>
<body>
<h2>Unread Messages</h2>
<p>Messages for: ${councillor.name}</p>

<form action="markMessageAsRead" method="post">
    <c:forEach var="message" items="${unreadMessages}">
        <p>
            <strong>${message.user.name}</strong>: ${message.message} <i>(${message.timestamp})</i><br>
            <input type="hidden" name="messageId" value="${message.id}">
            <input type="submit" value="Mark as Read">
        </p>
    </c:forEach>
</form>

</body>
</html>
