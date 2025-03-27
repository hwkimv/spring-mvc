<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: hwkimv
  Date: 25. 3. 28.
  Time: 오전 3:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberRepository memberRepository = MemberRepository.getInstance();
    List<Member> members = memberRepository.findAll();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/index.html"> 메인 </a>
<table>
  <tread>
    <tr>
        <th>id</th>
        <th>username</th>
        <th>age</th>
    </tr>
  </tread>

<tbody>
  <%
    for (Member member : members) {
      out.write("            <tr>");
      out.write("                <td>" + member.getId() + "</td>");
      out.write("                <td>" + member.getUsername() + "</td>");
      out.write("                <td>" + member.getAge() + "</td>");
      out.write("            </tr>");
    }
  %>
    </tbody>
</table>

</body>
</html>
