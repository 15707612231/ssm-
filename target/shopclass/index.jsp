<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style type="text/css">
        .dv {
            width: 400px;
            height: 250px;
            border: 1px solid royalblue;
            position: absolute;
            top: 200px;
            left: 470px;
            text-align: center;
            padding: 10px;
            background-color: lightgoldenrodyellow;
            border-radius: 40px;
        }
        body {
            background-color: antiquewhite;
        }
    </style>
</head>
<body>
<div class="dv">
<form action="/user/login" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">用户名
            <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
        </label>
        <input name="name" placeholder="he" required type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" aria-required="true">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">用户密码
            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
        </label>
        <input name="password" placeholder="123" required type="password" class="form-control" id="exampleInputPassword1" aria-required="true">
    </div>
    <button type="submit" class="btn btn-primary" >登录</button>
</form>
    <div class="dv2" align="center">
        <a href="/user/toResiter"><button type="submit" class="btn btn-primary" >注册</button></a>
    </div>
</div>
</body>
</html>
