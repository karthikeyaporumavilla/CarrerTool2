<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Chat</title>
</head>
<body>
<h2>Chat with Councillor</h2>
<p>Chat with: ${councillor.name}</p>

<form action="senduserMessage" method="post">
    <textarea name="message" rows="4" cols="50" placeholder="Type your message"></textarea><br>
    <input type="submit" value="Send">
</form>

<h3>Chat Messages:</h3>
<div>
    <ul>
        <c:forEach var="chat" items="${chatMessages}">
            <li><strong>${chat.user.name}</strong>: ${chat.message} <i>(${chat.timestamp})</i></li>
        </c:forEach>
    </ul>
</div>

</body>
</html>
