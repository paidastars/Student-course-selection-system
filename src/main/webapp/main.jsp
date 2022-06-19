<%--
  Created by IntelliJ IDEA.
  User: paidastar
  Date: 2021/11/20
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>选课系统</title>
    <link rel="stylesheet" href="text/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
<div>

    <!--  5月12号-->
    <div class="layui-layout layui-layout-admin">
        <!--   <div class="layui-header" style="background-color: #009688">-->
        <div class="layui-header" style="background-color: #2F4056">
            <div class="layui-logo layui-hide-xs layui-bg-black" style="font-sive:22px">五邑大学选课系统</div>
            <!-- 头部区域（可配合layui 已有的水平导航） -->
            <div class="layui-body">
                <div class="layui-tab layui-tab-brief" lay-allowclose="ture" lay-filter="demo">
                    <ul class="layui-tab-title">
                        <li class="layui-this">欢迎</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show" style="margin-top: -15px">

                            <!-- 内容在这里&lt;!&ndash;&ndash;&gt;-->
                            <%--   <iframe src="datatable.html" width="1800px" height="460px"></iframe>--%>
                            <%--   这里是主题内容啊 --%>      <iframe src="char.jsp" width="1500px" height="500px"></iframe>

                            <%--
                            <iframe src="datatable.html" width="1800px" height="460px"></iframe>--%>
                        </div>
                    </div>
                </div>
                <!-- 上面-->
            </div>
            <ul class="layui-nav layui-layout-right">
                <li class="layui-nav-item layui-hide-xs"><a href=""><i class="layui-icon layui-icon-time"
                                                                       style="font-size: 15px; color: #FFFFFF;"></i><span
                        id="timeText"></span></a></li>

                <li class="layui-nav-item layui-hide-xs"><a style="font-size:10px" href="javascript:" data-url="people.jsp"
                                                                                              data-id="selectUserInfo10086" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>个人信息" data-type="tabAdd" class="site-demo-active">
                    <i class="layui-icon layui-icon-friends" style="font-size: 20px; color: #FFFFFF;"></i>
                    个人信息</a></li>
                <li class="layui-nav-item layui-hide-xs"><a href="" style="font-size:10px">
                    <i class="layui-icon layui-icon-close" style="font-size: 16px; color: #FFFFFF;"></i>
                    退出登录</a></li>


            </ul>
        </div>

        <div class="layui-side layui-bg-black">
            <div class="layui-side-scroll">
                <center>
                    <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                        <a href="javascript:;">
                            <br> <img src="${pageContext.request.contextPath}/images/${sessionScope.xsb.zp}" class="layui-nav-img " style="width: 80px;height:80px ">
                            <br>

                            <br>
                            <p style="color:#ffffff">欢迎：<span style="color: #8D8D8D">${sessionScope.xsb.xm}</span> 登录！</p>
                        </a>


                    </li>
                </center>

                <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                <ul class="layui-nav layui-nav-tree" lay-filter="test" style="margin-top: 5px">

                    <li class="layui-nav-item ">

                        <a class="" href="javascript:;">
                            <i class="layui-icon layui-icon-component" style="font-size: 16px; color: #FFFFFF;"></i>学生管理</a><dl class="layui-nav-child">

                        <dd style="padding-left: 45px; display: ${sessionScope.xsb.bz}">
                            <a class="site-demo-active" href="javascript:" data-url="xsb.jsp" data-id="selectUserInfo" data-title="<i style='font-size: 18px; color: #009688;'>
                             </i>学生查询" data-type="tabAdd" class="site-demo-active"><i class="layui-icon layui-icon-user" style="font-size: 18px; color: #FFFFFF;"></i>学生查询</a></dd>


                        <dd style="padding-left: 45px"><a href="javascript:" data-url="upload.jsp"
                                                          data-id="selectUserInfo1" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>照片上传" data-type="tabAdd" class="site-demo-active">
                            <i class="layui-icon layui-icon-add-circle"
                               style="font-size: 18px; color: #FFFFFF;"></i>
                            <i class="layui-icon " style="font-size: 16px; color: #FFFFFF;"></i>
                            照片上传</a>
                        </dd>

                        <dd style="padding-left: 45px"><a href="javascript:" data-url="repassword.jsp"
                                                          data-id="selectUserInfo50" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>修改密码" data-type="tabAdd" class="site-demo-active">
                            <i class="layui-icon layui-icon-add-circle"
                               style="font-size: 18px; color: #FFFFFF;"></i>
                            <i class="layui-icon " style="font-size: 16px; color: #FFFFFF;"></i>
                            修改密码</a>
                        </dd>

                    </dl>

                    </li>
                    <li class="layui-nav-item ">

                        <a class="" href="javascript:;">

                            <i class="layui-icon layui-icon-set-fill" style="font-size: 16px; color: #FFFFFF;"></i>课程管理</a>
                        <dl class="layui-nav-child">
                            <dd style="padding-left: 45px">
                                <a href="javascript:" data-url="kcb.jsp"
                                   data-id="selectUserInfo11" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>课程查询" data-type="tabAdd"
                                   class="site-demo-active">
                                    <i class="layui-icon layui-icon-add-circle"
                                       style="font-size: 18px; color: #FFFFFF;"></i>
                                    <i class="layui-icon " style="font-size: 16px; color: #FFFFFF;"></i>
                                    课程查询</a>
                            </dd>

                            <dd style="padding-left: 45px">
                                <a href="javascript:" data-url="Xskcb.jsp"
                                   data-id="selectUserInfo12" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>我的选课" data-type="tabAdd"
                                   class="site-demo-active">
                                    <i class="layui-icon layui-icon-add-circle"
                                       style="font-size: 18px; color: #FFFFFF;"></i>
                                    <i class="layui-icon " style="font-size: 16px; color: #FFFFFF;"></i>
                                    我的选课</a></dd>

                            <dd style="padding-left: 45px; display: ${sessionScope.xsb.bz}">
                                <a href="javascript:" data-url="tjkcb.jsp"
                                   data-id="selectUserInfo100" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>添加课程" data-type="tabAdd"
                                   class="site-demo-active">
                                    <i class="layui-icon layui-icon-add-circle"
                                       style="font-size: 18px; color: #FFFFFF;"></i>
                                    <i class="layui-icon " style="font-size: 16px; color: #FFFFFF;"></i>
                                    添加课程</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item ">

                        <a class="" href="javascript:;">

                            <i class="layui-icon layui-icon-diamond" style="font-size: 16px; color: #FFFFFF; "></i>
                            专业表</a>
                        <dl class="layui-nav-child" style=""><a href="javascript:" data-url="table.jsp"
                                                                data-id="selectUserInfo21" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>专业表" data-type="tabAdd"
                                                                class="site-demo-active">
                            <i class="layui-icon "
                               style="font-size: 18px; color: #FFFFFF;"></i>
                            <i class="layui-icon layui-icon-add-circle"
                               style="font-size: 16px; color: #FFFFFF; margin-left: 45px"></i>
                            专业表</a>
                            <dd style="padding-left: 45px"></dd>

                            <dd style="padding-left: 45px; display: ${sessionScope.xsb.bz}">
                                <a href="javascript:" data-url="tjzy.jsp"
                                   data-id="selectUserInfo22" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>添加专业" data-type="tabAdd"
                                   class="site-demo-active">
                                    <i class="layui-icon layui-icon-add-circle"
                                       style="font-size: 18px; color: #FFFFFF;"></i>
                                    <i class="layui-icon " style="font-size: 16px; color: #FFFFFF;"></i>
                                    添加专业</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item ">

                        <a class="" href="javascript:;">
                            <i class="layui-icon layui-icon-console" style="font-size: 16px; color: #FFFFFF;"></i>
                            成绩管理</a>
                        <dl class="layui-nav-child">
                            <dd style="padding-left: 45px"><a href="javascript:" data-url="cjb.jsp"
                                                              data-id="selectUserInfo31" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>成绩查询" data-type="tabAdd"
                                                              class="site-demo-active">
                                <i class="layui-icon layui-icon-add-circle"
                                   style="font-size: 18px; color: #FFFFFF;"></i>

                                <i class="layui-icon " style="font-size: 16px; color: #FFFFFF;"></i>
                                成绩查询</a></dd>
                            <dd style="padding-left: 45px; display: ${sessionScope.xsb.bz}">
                                <a href="javascript:" data-url="tjcj.jsp" data-id="tjcj" data-title="<i class='layui-icon layui-icon-user'
                            style='font-size: 18px; color: #009688;'></i>添加成绩" data-type="tabAdd"
                                                              class="site-demo-active">
                                <i class="layui-icon layui-icon-add-circle"
                                   style="font-size: 18px; color: #FFFFFF;"></i>

                                <i class="layui-icon " style="font-size: 16px; color: #FFFFFF;"></i>
                                添加成绩</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>



        <div class="layui-footer" style="text-align: center ">
            <!-- 底部固定区域 -->
            五邑大学计算机通信网络
        </div>
    </div>
    <!--自己写个div   下面-->
</div>

</body>
<script>
    //JS
    layui.use(['element', 'layer', 'util', 'jquery'], function () {
        var element = layui.element
            , layer = layui.layer
            , util = layui.util
            , $ = layui.jquery;

        $(function () {
//定义一个定时器
            var mytime = setInterval(function () {
                getTime();
            }, 1000);

//定义一个函数用来获取时间
            function getTime() {
                console.log("1111")
                var data = new Date();//获得当前时间
                var y = data.getFullYear();
                var M = (data.getMonth() + 1) < 10 ? ('0' + (data.getMonth() + 1)) : (data.getMonth() + 1);
                var D = data.getDay() < 10 ? ('0' + data.getDay()) : data.getDay();
                var H = data.getHours() < 10 ? ('0' + data.getHours()) : data.getHours();
                var m = data.getMinutes() < 10 ? ('0' + data.getMinutes()) : data.getMinutes();
                var s = data.getSeconds() < 10 ? ('0' + data.getSeconds()) : data.getSeconds();
                var dataString = y + "年" + M + "月" + D + "日&nbsp;&nbsp;&nbsp;" + H + ":" + m + ":" + s + "秒&nbsp;&nbsp;&nbsp;星期" + "日一二三四五六".charAt(data.getDay())
                $("#timeText").html(dataString);
            }
        })

        /*  zhege
          */

        var mytime = setInterval(function () {
            getTime();
        }, 1000);

//定义一个函数用来获取时间
        function getTime() {
            var data = new Date();//获得当前时间
            var y = data.getFullYear();
            var M = (data.getMonth() + 1) < 10 ? ('0' + (data.getMonth() + 1)) : (data.getMonth() + 1);
            var D = data.getDay() < 10 ? ('0' + data.getDay()) : data.getDay();
            var H = data.getHours() < 10 ? ('0' + data.getHours()) : data.getHours();
            var m = data.getMinutes() < 10 ? ('0' + data.getMinutes()) : data.getMinutes();
            var s = data.getSeconds() < 10 ? ('0' + data.getSeconds()) : data.getSeconds();
            var dataString = y + "年" + M + "月" + D + "日&nbsp;&nbsp;&nbsp;" + H + ":" + m + ":" + s + "秒&nbsp;&nbsp;&nbsp;星期" + "日一二三四五六".charAt(data.getDay())
            $("#timeText").html(dataString);
        }

        /*上面*/
        //头部事件
        util.event('lay-header-event', {
            //左侧菜单事件
            menuLeft: function (othis) {
                layer.msg('展开左侧菜单的操作', {icon: 0});
            }
            , menuRight: function () {
                layer.open({
                    type: 1
                    , content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
                    , area: ['260px', '100%']
                    , offset: 'rt' //右上角
                    , anim: 5
                    , shadeClose: true
                });
            }


        });


        /*  5yue12*/
        //触发事件


        //触发事件
        var active = {
            //在这里给active绑定几项事件，后面可通过active调用这些事件
            tabAdd: function (url, id, title) {
                //新增一个Tab项 传入三个参数，分别对应其标题，tab页面的地址，还有一个规定的id，是标签中data-id的属性值
                //关于tabAdd的方法所传入的参数可看layui的开发文档中基础方法部分
                element.tabAdd('demo', {
                    title: title,
                    content: '<iframe data-frameid="' + id
                        + '" scrolling="auto" frameborder="0" src="'
                        + url + '" style="width:100%;height: 730px"></iframe>',
                    id: id
                    //规定好的id
                })
                element.render('tab');

            },
            tabChange: function (id) {
                //切换到指定Tab项
                element.tabChange('demo', id); //根据传入的id传入到指定的tab项
            },
            tabDelete: function (id) {
                element.tabDelete("demo", id);//删除
            },
            tabDeleteAll: function (ids) {//删除所有
                $.each(ids, function (i, item) {
                    element.tabDelete("demo", item); //ids是一个数组，里面存放了多个id，调用tabDelete方法分别删除
                })
            }

        };

        //当点击有site-demo-active属性的标签时，即左侧菜单栏中内容 ，触发点击事件
        $('.site-demo-active').on(
            'click',
            function () {
                var dataid = $(this);

                //这时会判断右侧.layui-tab-title属性下的有lay-id属性的li的数目，即已经打开的tab项数目
                if ($(".layui-tab-title li[lay-id]").length <= 0) {
                    //如果比零小，则直接打开新的tab项
                    active
                        .tabAdd(dataid.attr("data-url"), dataid
                            .attr("data-id"), dataid
                            .attr("data-title"));
                } else {
                    //否则判断该tab项是否以及存在

                    var isData = false; //初始化一个标志，为false说明未打开该tab项 为true则说明已有
                    $.each($(".layui-tab-title li[lay-id]"),
                        function () {
                            //如果点击左侧菜单栏所传入的id 在右侧tab项中的lay-id属性可以找到，则说明该tab项已经打开
                            if ($(this).attr("lay-id") == dataid
                                .attr("data-id")) {
                                isData = true;
                            }
                        })
                    if (isData == false) {
                        //标志为false 新增一个tab项
                        active.tabAdd(dataid.attr("data-url"), dataid
                            .attr("data-id"), dataid
                            .attr("data-title"));
                    }
                }
                //最后不管是否新增tab，最后都转到要打开的选项页面上
                active.tabChange(dataid.attr("data-id"));
            });

    });
</script>


</html>
