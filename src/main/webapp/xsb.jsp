<%--
  Created by IntelliJ IDEA.
  User: paidastar
  Date: 2021/11/8
  Time: 22:05
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

<%--修改的弹框--%>
<form class="layui-form layui-form-pane1" id="form1" name="form1" style="display: none;" action="<%=request.getContextPath()%>/xsb/modiAdmin" method="post" lay-filter="first1">

    <div class="layui-form-item" style="display: none">
        <label class="layui-form-label">id</label>
        <div class="layui-input-inline">
            <input type="text" name="xh" id="xh" lay-verify="required|title" required placeholder="请输入账号" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">名字</label>
        <div class="layui-input-inline">
            <input type="text" name="xm" id="xm" lay-verify="required|title" required placeholder="请输入名字" readonly="readonly" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-inline">
            <input type="text" name="mm" id="mm" lay-verify="required|pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-inline">
            <select name="xb"  id="xb" lay-verify="required|" lay-filter="interest-search" lay-search>
                <option value="0">男</option>
                <option value="1" >女</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">专业</label>
        <div class="layui-input-inline">
            <select name="zyId"  id="zyId" lay-verify="required|" lay-filter="interest-search" lay-search>
                <option value="1">软件工程</option>
                <option value="2" >通信工程</option>
                <option value="3" >计算机科学与技术</option>
                <option value="4" >物联网工程</option>
                <option value="5" >工商管理</option>
                <option value="6" >网络安全</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">总学分</label>
        <div class="layui-input-inline">
            <input type="text" name="zxf" id="zxf" lay-verify="required|" placeholder="请输总学分" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-inline">
            <input type="text" name="bz" id="bz" lay-verify="required|" placeholder="请输备注" autocomplete="off" class="layui-input">
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
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
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
            ,url:'http://localhost:8001/xsb/xsbList'
            ,toolbar: '#toolbarDemo'
            ,title: '用户数据表'
            ,totalRow: true
            ,cols: [
                [
                    {type: 'checkbox', fixed: 'left'}
                    ,{field:'xh', title:'学号', width:150}
                    ,{field:'xm', title:'姓名', width:150}
                    ,{field:'mm', title:'密码', width:150}
                    ,{field:'xb', title:'性别', width:150,templet: function (data) { return data.xb == 0 ? '男':'女'; }}
                    ,{field:'cssj', title:'创建时间', width:150}
                    ,{field:'zyId', title:'专业', width:150,templet: function (data)
                    {if (data.zyId == '1') return '软件工程';else if (data.zyId == '2') return '通信工程';
                    else if (data.zyId == '3') return '计算机科学与技术'; else if (data.zyId == '4') return '物联网工程';
                    else if (data.zyId == '5') return '工商管理';else return '网络安全';}
                    }
                    ,{field:'zxf', title:'总学分', width:150}
                    ,{field:'bz', title:'备注', width:150}
                    ,{field:'zp', title:'照片',templet:function (res) {
                        return '<img src="${pageContext.request.contextPath}/images/'+res.zp+'"/>'
                    }}
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
                        {url:'/xsb/delUser',
                        type: 'post',
                        data:{'xh':data.xh},//向服务端发送删除的id
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
                //发送修改的Ajax请求
                EidtUv(data,obj);
            }
        });
        function  EidtUv(data,obj) {
            $("#xh").val(data.xh);
            $("#xm").val(data.xm);
            $("#mm").val(data.mm);
            $("#xb").val(data.xb);
            $("#zyId").val(data.zyId);
            $("#zxf").val(""+data.zxf);
            $("#bz").val(""+data.bz);
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
