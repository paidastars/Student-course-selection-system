<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2021/12/5
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>改密码</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
<form action="/xsb/update" method="post">
<div class="layui-form-item">
    <label class="layui-form-label">旧密码</label>
    <div class="layui-input-inline">
        <input type="text" name="name" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
    </div>
    ${sessionScope.a}
</div>
<div class="layui-form-item">
    <label class="layui-form-label">新密码</label>
    <div class="layui-input-inline">
        <input type="text" name="rename" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
    </div>

</div>
    <button type="submit" style="margin-left: 50px">确定</button>
</form>

</body>
</html>
