<%--
  Created by IntelliJ IDEA.
  User: hwkimv
  Date: 25. 3. 28.
  Time: 오전 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="/jsp/members/save.jsp" method="post">
    <label for="username">username:</label>
    <input type="text" id="username" name="username" />

    <label for="age">age:</label>
    <input type="text" id="age" name="age" />

    <button type="submit">전송</button>
</form>
</body>
</html>
