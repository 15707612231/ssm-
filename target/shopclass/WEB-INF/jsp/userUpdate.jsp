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
    <form  action="/user/updateUser" method="post">
        编号：<input type="text" name="id" value="${user.id}" readonly><br/>
        姓名：<input type="text" name="name" value="${user.name}"><br/>
        年龄：&nbsp;&nbsp;&nbsp;<input type="text" name="age" value="${user.age}"><br/>
        手机号：&nbsp;&nbsp;&nbsp;<input type="text" name="mobile" value="${user.mobile}"><br/>
        邮箱：&nbsp;&nbsp;&nbsp;<input type="text" name="email" value="${user.email}"><br/>
        <input id="bon" type="submit" value="提交">
    </form>
</div>
</body>
</html>
