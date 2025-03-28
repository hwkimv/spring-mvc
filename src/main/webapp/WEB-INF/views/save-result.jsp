<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="member" scope="request" type="hello.servlet.domain.member.Member"/>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>
성공
<ul>
    <li>id=${member.id}</li>
    <li>username=${member.username}</li>
    <li>age=${member.age}</li>
</ul>
<a href="/index.html">메인</a>
</body>
</html>
