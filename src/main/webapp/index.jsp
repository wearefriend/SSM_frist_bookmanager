<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        *{margin: 0;padding: 0}
        html, body{height: 100%}
        #qq{float: left;
            width: 10%;
            height: 100%;
            background-color: aqua;

        }
        #as{float: right;
            width: 90%;
            height: 100%;
            background-color: brown}
    </style>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
        $(function () {

            $('#a1').click(function () {
                $('#as').load('addbook.html');
            });
            $('#a2').click(function () {
                $('#as').load('find.jsp');
            });
            $('#a3').click(function () {
                $('#as').load('deletebook.html');
            });
        });
    </script>
</head>
<body>
<ul id="qq">
    <li>
        <a href="#" id="a1"> 图书的添加</a>

    </li>
    <li><a href="#" id="a2">   图书的查询</a>

    </li>
    <li><a href="#" id="a3">  图书的删除</a>

    </li>

</ul>
<div id="as"></div>
</body>
</html>
