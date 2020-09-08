<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>图书列表</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style type="text/css">

    </style>
</head>
<body>
<table class="table table-bordered">
    <tr align="center">
        <td>编号</td>
        <td>课程</td>
        <td>名额</td>
        <td>价格</td>
        <td>操作</td>
    </tr>

    <c:forEach items="${list}" var="course">
        <tr align="center">
            <td>${course.id}</td>
            <td>${course.courseName}</td>
            <td>${course.courseNum}</td>
            <td>${course.price}</td>
            <td>
                <a href="/details/findDescription?id=${course.id}" class="btn btn-primary" role="button">详情</a>
                <a href="#" class="btn btn-success" role="button">购买</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
