<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style type="text/css">
        .dv {
            background-color: cornflowerblue;
            width: 100%;
            height: 50px;
            margin-bottom: 10px;
            text-align: center;
            line-height: 50px;
            font-size: 20px;
        }
        .dv2 {
            display: block;
            font-size: 12px;
            position: absolute;
            right: 50px;
            top: 5px;
        }
        a {
            text-decoration: none;
        }
        .pagination {
            align-content: center;
        }
    </style>
</head>
<body>
<div class="dv">课程购买管理系统
    <div class="dv2">欢迎回来! ${name}&nbsp;&nbsp;
        <a href="#" class="a">退出登录&nbsp;&nbsp;</a>
        <a href="#">我的</a>&nbsp;
        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
    </div>

</div>
<ul class="nav nav-tabs">
    <li role="presentation"><a target="right"  href="/course/findCourse">
        <span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;首页</a>
    </li>
    <li role="presentation"><a target="right"  href="/user/findAll">用户管理</a></li>
    <li role="presentation"><a target="right"  href="/course/findCourse">好课推荐&nbsp;<span class="label label-warning">New</span></a></li>
    <li role="presentation"><a href="#">购物车
        <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a></li>
    <li>
        <form class="navbar-form navbar-left" action="/course/findLikeName" method="get" target="right">
        <div class="form-group">
            <input type="text" class="form-control" name="courseName" placeholder="请输入课程关键字">
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
        </form>
    </li>
</ul>
<iframe src="/course/findCourse" name="right" scrolling="no" frameborder="1" width="100%" height="100%">

</iframe>
</body>
</html>
