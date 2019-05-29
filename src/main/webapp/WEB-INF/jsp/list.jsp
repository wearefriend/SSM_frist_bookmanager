<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/5/27
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ page isELIgnored="false" %>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>姓名</th>
        <th>学号</th>
    </tr>
    <c:forEach items="${list}" var="book">
        <tr>
            <th>${book.name}</th>
            <th>${book.num}</th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
