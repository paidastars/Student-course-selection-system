<%--
  Created by IntelliJ IDEA.
  User: paidastar
  Date: 2021/11/7
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>

<table class="layui-hide" id="test" lay-filter="test"></table>

<form class="layui-form layui-form-pane1" id="form1" name="form1" style="display: none;" action="<%=request.getContextPath()%>/zyb/update" method="post" lay-filter="first1">

    <div class="layui-form-item" style="display: none">
        <label class="layui-form-label">id</label>
        <div class="layui-input-inline">
            <input type="text" name="id" id="id" lay-verify="required|title" required placeholder="请输入账号" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">专业名称</label>
        <div class="layui-input-inline">
            <input type="text" name="zym" id="zym" lay-verify="required|title" required placeholder="请输入名字" readonly="readonly" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">专业人数</label>
        <div class="layui-input-inline">
            <input type="text" name="rs" id="rs" lay-verify="required|pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">辅导员</label>
        <div class="layui-input-inline">
            <input type="text" name="fdy" id="fdy" lay-verify="required|" placeholder="请输总学分" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="*">修改</button>
        </div>
    </div>
</form>


<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    </div>
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit" style="display: ${sessionScope.xsb.bz}">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del" style="display: ${sessionScope.xsb.bz}">删除</a>
</script>

<script>
    layui.use(['layer', 'util', 'jquery','table'], function(){
        var table = layui.table,
            element = layui.element
            , layer = layui.layer
            , util = layui.util
            , $ = layui.jquery;
        table.render({
            elem: '#test'
            ,url:'http://localhost:8001/zyb/list'
            ,toolbar: '#toolbarDemo'
            ,title: '用户数据表'
            ,totalRow: true
            ,cols: [
                [
                    {type: 'checkbox', fixed: 'left'}
                    ,{field:'id', title:'专业ID', width:150}
                    ,{field:'zym', title:'专业名称', width:150}
                    ,{field:'rs', title:'专业人数', width:150}
                    ,{field:'fdy', title:'辅导员', width:150}
                    ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
                ]
            ]
            ,page: true
        });

        //工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选')
                    break;
            };
        });

        //监听工具条
        table.on('tool(test)', function(obj){
            var data = obj.data;
            if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    $.ajax(
                        {url:'/zyb/delzyb',
                            type: 'post',
                            data:{'id':data.id},//向服务端发送删除的id
                            success:function(suc){
                                if(suc==0){
                                    obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                                    layer.close(index);
                                    console.log(index);
                                    layer.msg("删除成功",{icon:1});
                                }
                                else{
                                    layer.msg("删除失败",{icon:5});
                                }
                            }
                        });
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                EidtUv(data,obj);
            }
        });
        function  EidtUv(data,obj) {
            $("#id").val(data.id);
            $("#zym").val(data.zym);
            $("#rs").val(data.rs);
            $("#fdy").val(data.fdy);
            $("#status").find("option[value = '"+data.status+"']").attr("selected","selected");

            layer.open({
                title:'修改管理员',
                type:1,
                area:['400px','400px'],
                content:$("#form1")
            });
        }
    });
</script>
</body>
</html>
