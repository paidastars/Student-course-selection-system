<%--
  Created by IntelliJ IDEA.
  User: paidastar
  Date: 2021/12/5
  Time: 19:25
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

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    </div>
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">退选</a>
</script>

<script>
    layui.use('table', function(){
        var table = layui.table;
        table.render({
            elem: '#test'
            ,url:'http://localhost:8001/xskcb/list'
            ,toolbar: '#toolbarDemo'
            ,title: '用户数据表'
            ,totalRow: true
            ,cols: [
                [
                    {type: 'checkbox', fixed: 'left'}
                    ,{field:'xh', title:'学号', width:150}
                    ,{field:'xm', title:'姓名', width:150}
                    ,{field:'kch', title:'课程号', width:150}
                    ,{field:'kcm', title:'课程名', width:150}
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
                layer.confirm('确定退选吗', function(index){
                    $.ajax(
                        {url:'/xskcb/del',
                            type: 'post',
                            data:{'xh':data.xh,"kch":data.kch},//向服务端发送删除的id
                            success:function(suc){
                                if(suc==0){
                                    obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                                    layer.close(index);
                                    console.log(index);
                                    layer.msg("退选成功",{icon:1});
                                }
                                else{
                                    layer.msg("退选失败",{icon:5});
                                }
                            }
                        });
                    layer.close(index);
                });
            }
        });

    });
</script>
</body>
</html>
