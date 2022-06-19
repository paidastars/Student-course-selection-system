<%--
  Created by IntelliJ IDEA.
  User: paidastar
  Date: 2021/12/22
  Time: 8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加课程</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
<form action="/kcb/insert" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">课程名</label>
        <div class="layui-input-inline">
            <input type="text" name="kcm" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">课程学期</label>
        <div class="layui-input-inline">
            <input type="text" name="kxxq" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">课程人数</label>
        <div class="layui-input-inline">
            <input type="text" name="xs" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">课程学分</label>
        <div class="layui-input-inline">
            <input type="text" name="xf" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>
    <button type="submit" style="margin-left: 50px">确定</button>
</form>

</body>
</html>
