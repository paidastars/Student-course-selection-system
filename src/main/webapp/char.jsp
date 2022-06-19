<%--
  Created by IntelliJ IDEA.
  User: paidastar
  Date: 2021/12/17
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/echarts.js"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
<!-- 为 ECharts 准备一个定义了宽高的 DOM -->
<div id="main" style="width: 35%;height:450px;float: left;" ></div>
<div id="main_left" style="width: 45%;height:450px;float: left"></div>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart_left = echarts.init(document.getElementById('main'));
    var myChart = echarts.init(document.getElementById('main_left'));

    // 指定图表的配置项和数据
    option_left = {
        title: {
            text: '班分数统计',
            subtext: '成绩分布',
            left: 'center'
        },
        tooltip: {
            trigger: 'item'
        },
        legend: {
            orient: 'vertical',
            left: 'left'
        },
        series: [
            {
                name: '成绩',
                type: 'pie',
                radius: '50%',
                data: [
                    { value: 2, name: '优秀'+${sessionScope.cj.yxrs}},
                    { value: 3, name: '及格'+${sessionScope.cj.jgrs}},
                    { value: 1, name: '不及格'+${sessionScope.cj.bjgrs}}

                ],
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };


    option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        title: {
            text: '剩余课程统计',
            subtext: '课程分布',
            left: 'center'
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                axisLabel: {
                    interval:0,
                    rotate:40
                },
                data: [],
                axisTick: {
                    alignWithLabel: true
                }
            }
        ],
        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                name: '剩余课程数',
                type: 'bar',
                barWidth: '60%',
                data: []
            }
        ]
    };


    $.ajax({
            type: 'get',
            url: 'kcb/kcm', //请求数据的地址
            dataType: "json", //返回数据形式为json
            success: function (data) {
                myChart.setOption({
                    xAxis: {
                        data: data
                    }
                });
            }
    });

    $.ajax({
        type: 'get',
        url: 'kcb/xs', //请求数据的地址
        dataType: "json", //返回数据形式为json
        success: function (data) {
            myChart.setOption({
                series: {
                    data: data
                }
            });
        }
    });

    // 使用刚指定的配置项和数据显示图表。
    myChart_left.setOption(option_left);
    myChart.setOption(option);
</script>
</body>
</html>
