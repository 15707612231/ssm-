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
    <form  action="/user/insertUser" method="post">
        姓名：<input type="text" name="name" placeholder="姓名"><br/>
        密码：&nbsp;&nbsp;&nbsp;<input type="password" name="password" placeholder="密码"><br/>
        年龄：&nbsp;&nbsp;&nbsp;<input type="text" name="age" placeholder="年龄"><br/>
        手机号：&nbsp;&nbsp;&nbsp;<input type="text" name="mobile" placeholder="手机号"><br/>
        邮箱：&nbsp;&nbsp;&nbsp;<input type="text" name="email" placeholder="邮箱"><br/>
        <input id="bon" type="submit" value="提交">
    </form>
</div>
</body>
</html>
