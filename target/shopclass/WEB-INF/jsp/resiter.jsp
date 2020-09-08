<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .dv {
            padding: 20px;
            background-color: lightgoldenrodyellow;
            border: 2px solid royalblue;
            border-radius: 40px;
            width: 400px;
            height: 250px;
            position: absolute;
            top: 150px;
            left: 430px;
            font-size: 18px;
        }
        body {
            background-color: lightblue;
        }
    </style>
</head>
<body>
<div class="dv">
    <form  action="/user/resiter" method="post">
        用户名：&nbsp;&nbsp;&nbsp;<input type="text" name="name" placeholder="用户名" required><br/>
        用户密码：<input type="password" name="password" placeholder="用户密码" required><br/>
        <input class="bon" type="submit" value="注册">
    </form>
</div>
</body>
</html>
