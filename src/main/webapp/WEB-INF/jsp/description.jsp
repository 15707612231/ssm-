<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>详情页</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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
<a href="/details/return" class="btn btn-primary" role="button">返回</a>
<div class="dv">
    <div>课程名称：${des.courseName}</div>
    <div>课程详情：${des.description}</div>
</div>
</body>
</html>
