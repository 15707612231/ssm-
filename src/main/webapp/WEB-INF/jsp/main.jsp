<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<a href="/user/insert" class="btn btn-warning">新增</a>
<table class="table table-bordered">
    <tr align="center">
        <td>编号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>手机号</td>
        <td>邮箱</td>
        <td>操作</td>
    </tr>

    <c:forEach items="${list}" var="user">
        <tr align="center">
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.age}</td>
            <td>${user.mobile}</td>
            <td>${user.email}</td>
            <td>
                <a href="/user/update?id=${user.id}" class="btn btn-primary" role="button">编辑</a>
                <a href="/user/deleteUser?id=${user.id}" class="btn btn-danger" role="button">删除</a>
                <a href="#" class="btn btn-success" role="button">订单</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
