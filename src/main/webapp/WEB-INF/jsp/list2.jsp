<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/5/29
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ page isELIgnored="false" %>
    <title>Title</title>
    <% String path=request.getContextPath();
        String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
        String listpath=basepath+"book/list?n=";

    %>
    <%! int n=1;%>
</head>
<body>
<table>
    <tr>
        <th>姓名</th>
        <th>学号</th>
    </tr>
    <c:forEach items="${pagebeans.b}" var="book">
        <tr>
            <th>${book.name}</th>
            <th>${book.num}</th>
        </tr>
    </c:forEach>
</table>
<center>
    第${pagebeans.current_page}/${pagebeans.all_pagenumber}

            <c:if  test="${pagebeans.current_page>1}">
           <a href="<%=listpath%>${pagebeans.current_page-1}" target="a">上一页</a>
            </c:if>

     <c:choose>
         <c:when test="${pagebeans.all_pagenumber<=6}">
             <c:set var="begain" value="1"/>
             <c:set var="end" value="${pagebeans.all_pagenumber}" />
         </c:when>
         <c:otherwise>
             <c:set var="begain" value="${pagebeans.current_page-2}"/>
             <c:set var="end" value="${pagebeans.current_page+3}"/>
             <c:choose>
                 <c:when test="${begain<1}">
                     <c:set var="begain" value="1"/>
                     <c:set var="end" value="6" />
                 </c:when>
                 <c:when test="${end>pagebeans.all_pagenumber}">
                     <c:set var="begain" value="${pagebeans.all_pagenumber-5}"/>
                     <c:set var="end" value="${pagebeans.all_pagenumber}"/>
                 </c:when>

             </c:choose>
         </c:otherwise>
     </c:choose>
    <c:forEach begin="${begain}" end="${end}" var="i">
        <c:choose>
            <c:when test="${i==pagebeans.current_page}">${i}</c:when>
            <c:otherwise>
                <a href="<%=listpath%>${i}">${i}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:if  test="${pagebeans.current_page<pagebeans.all_pagenumber}">
        <a href="<%=listpath%>${pagebeans.current_page+1}" target="a">下一页</a>
    </c:if>
</center>
</body>
</html>
