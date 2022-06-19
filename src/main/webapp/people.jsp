<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2021/12/1
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .td1{
            margin-left: 40px;
            font-size: 20px;

        }
        .style9{
            width: 800px;
            height: 100px;
            margin: 0px auto;
            margin-bottom:20px;
            border:1px solid #ADCD3C;
            background-color: #F2FDDB
        }
        .td2{
            font-size: 20px;
            margin-left: 10px;
        }

    </style>
</head>
<body>
<div class="style9" style="width: 336px;height: 400px;margin: auto">
<table>
   <tr> <td><img src="${pageContext.request.contextPath}/images/${sessionScope.xsb.zp}" style="width: 120px;height: 120px;margin-left: 101px;"></td></tr>
</table>
    <div style="margin-top:20px ">
   <div style="float: left;width: 152px;height: 300px">
        <label class="td1">学 号: </label></br>
        <label class="td1">姓 名: </label></br>
        <label class="td1">性 别: </label></br>
        <label class="td1">总学分: </label></br>
        <label class="td1">权限: </label></br>
        <label class="td1">专 业: </label></br>
    </div>
    <div style="float: left;width: 176px;height: 300px">
            <label class="td2">${sessionScope.xsb.xh}</label></br>
            <label class="td2">${sessionScope.xsb.xm}</label></br>
            <label class="td2" id="label_xb"></label></br>
            <label class="td2">${sessionScope.xsb.zxf}</label></br>
            <label class="td2">${sessionScope.xsb.bz}</label></br>
            <label class="td2" id="label_zy"></label></br>
    </div>
    </div>
</div>
</body>
<script>
 var t=${sessionScope.xsb.xb};
 var xx=function bb(t) {
        var x="";
        if (1==t){
            x='男';
        }else{
            x='女';
        }
        return x;
 }
 var cc=xx(t)
 document.getElementById("label_xb").innerText=cc;


 var p=${sessionScope.xsb.zyId};
 var mm=function ll(p) {
     var y="";
     if (1==p){
         y='软件工程';
     }else if (2==p){
         y='通信工程';
     }else if (3==p){
         y='计算机科学与技术';
     }else if (4==p){
         y='物联网工程';
     }else if (5==p){
         y='工商管理';
     }else if (6==p){
         y='网络安全';
     }
     return y;
 }
 var cc2=mm(p)
 document.getElementById("label_zy").innerText=cc2;

</script>
</html>
