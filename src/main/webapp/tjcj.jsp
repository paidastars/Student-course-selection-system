<%--
  Created by IntelliJ IDEA.
  User: paidastar
  Date: 2021/12/22
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加成绩</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
<form action="/cjb/insert" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">学号</label>
        <div class="layui-input-inline">
            <input type="text" name="xh" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">课程号</label>
        <div class="layui-input-inline">
            <input type="text" name="kch" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">成绩</label>
        <div class="layui-input-inline">
            <input type="text" name="cj" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>
    <button type="submit" style="margin-left: 50px">确定</button>
</form>

</body>
</html>
