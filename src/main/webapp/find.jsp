<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/5/29
  Time: 0:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
head>
<meta charset="UTF-8">
<title>Title</title>
<style>
    #a{
        height: 300px;width: 100%;
    }
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
    $(function () {
        $('#qw').click(function () {
            var a=window.document.location.href;
            var pathname=window.document.location.pathname;
            var pos=a.indexOf(pathname);
            var local=a.substring(0,pos);
            var projectname=pathname.substring(0,pathname.substr(1).indexOf('/')+1);
            var aaa=local+projectname
            var asa=a+"---"+pathname+"---"+pos+"---"+local+"---"+projectname+"---"+aaa;
            /* http://localhost:8080/SSM_frist_bookmanager_war_exploded/bookmain.html#---
                 // /SSM_frist_bookmanager_war_exploded/bookmain.html---21---http://localhost:8080---
                 // /SSM_frist_bookmanager_war_exploded---http://localhost:8080/SSM_frist_bookmanager_war_exploded*/

            alert(asa);
        });
    });
</script>
</head>
<body>
<% String path=request.getContextPath();
String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String listpath=basepath+"book/list?n=";

%>
<%! int n=1;%>
<form action="book/list" method="get" target="a">
    查找:<input type="text" id="n" name="n">
    <input type="submit" value="查找">
</form>
<h1 id="qw">sfsdfattttqqs</h1>
<h2>qw<%=basepath%></h2>
<iframe id="a" name="a"></iframe>
<nav>
    <ul>
        <li><a href="<%=listpath%><%=1%>" target="a">首页</a></li>

    </ul>
</nav>
</body>
</html>
