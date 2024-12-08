<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unread Messages</title>
</head>
<body>
    <h2>Unread Messages</h2>

    <div>
        <c:forEach var="chat" items="${unreadMessages}">
            <div>
                <strong>User: </strong>${chat.user.name} <br/>
                <strong>Message: </strong>${chat.message} <br/>
                <small><i>Sent on: ${chat.timestamp}</i></small><br/>
                <form action="markAsRead" method="post">
                    <input type="hidden" name="chatId" value="${chat.id}">
                    <button type="submit">Mark as Read</button>
                </form>
                <hr/>
            </div>
        </c:forEach>
    </div>

    <!-- Link to go back to the councillor's home page -->
    <br/>
    <a href="councillorhome">Back to Home</a>
</body>
</html>
