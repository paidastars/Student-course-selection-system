<%--
  Created by IntelliJ IDEA.
  User: paidastar
  Date: 2021/11/1
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <title>注册页面</title>
    <style>
        .pg_header{
            position: fixed;
            height: 48px;
            top: 0;
            left: 0;
            right: 0;
            background-color: #2459a2;
            line-height: 48px;
        }
        .pg_header .logo{
            margin: 0 auto;
            float: left;
            width: 200px;
            text-align: center;
            line-height: 48px;
            font-size: 28px;
            color: white;
        }
        .pg_dl{
            left: 400px;
            display: inline-block;
            padding: 0 40px;
            color: white;
        }
        .pg_header .pg_dl:hover{
            background-color: #2459fb;
            cursor: pointer;
        }
        .left{
            margin-top: 20px;
            width: 400px;
            display: inline-block;
            float: left;
        }
        .pg_body{
            margin-top: 50px;
            font-size: 18px;
            display: inline-block;
            width: 200px;
        }
        .pg_body .menu{
            width: 800px;
            padding: 15px;
            float: left;
            font-weight: bold;
        }
        input[type="text"]{
            width: 200px;
            height: 25px;
            border-radius: 6px;
        }
        input[type="password"]{
            width: 200px;
            height: 25px;
            border-radius: 6px;
        }
        input[type="button"]{
            background-color: #555555;
            border: none;
            color: white;
            padding: 12px 29px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
        input[type="submit"]{
            background-color: #555555;
            border: none;
            color: white;
            padding: 12px 29px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 17px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
        .kong{
            margin-top: -54px;
            margin-left: 200px;
            float:left;
            padding: 15px;
        }
        .img{
            width: 50px;
            height: 40px;
        }
        .can{
            width: 1220px;
            height: 40px;
            line-height: 40px;
            margin: 0 auto;
            text-align: center;
            display: inline-block;
        }
        .tian{
            color: red;
            float: right;
            font-size: 12px;
            margin-right: -120px;
            margin-top: -25px;
        }
    </style>
</head>
<body id="i88" style="margin: 0">
<div class = "pg_header">
    <a class = "logo">LOGO</a>
    <a class="pg_dl" id="i77">注册</a>
</div>
<form name="register" method="post" action="/xsb/register">
    <div class="left"></div>
    <div class="pg_body">

        <div class="menu">账号:</div>
        <div class="kong">
            <input id="xh" type="text" name="xh" oninput="validateFeeling(this)" required >
        </div>

        <tr>
            <td align="right">
            </td>
            <td>
                <span style="color: red;text-align: center">${error}</span>
            </td>
        </tr>

        <div class="menu">姓名:</div>
        <div class="kong">
            <input id="xm" type="text" name="xm" oninput="validateFeeling(this)" required >
        </div>

        <div class="menu">密码:</div>
        <div class="kong">
            <input id="mm" type="password" name="mm" oninput="validateFeeling(this)" required >
        </div>

        <div class="menu">性别:</div>
        <div class="kong" style="width:200px;">
            男<input type="radio" name="xb" value="0">
            女 <input type="radio" name="xb" value="1">
        </div>

        <div class="menu">专业:</div>
        <div class="kong" style="width:200px;">
            软件工程<input type="radio" name="zyId" value="1">
            通信工程<input type="radio" name="zyId" value="2">
            计算机科学与技术<input type="radio" name="zyId" value="3">
            &nbsp;&nbsp;&nbsp;物联网工程<input type="radio" name="zyId" value="4">
            工商管理<input type="radio" name="zyId" value="5">
            网络安全<input type="radio" name="zyId" value="6">
        </div>
        <div class="can">
            <input id="i111" type="submit" name="002" value="注  册">
            <p style="width: 200px;display: inline-block;"></p>
            <input id="i222" type="button" name="004" value="取  消">
        </div>
    </div>

    <script>
        function validateFeeling(input) {
            if (input.value == " ") {
                input.setCustomValidity('此项为必填');
                return false;
            }
        }
    </script>
</form>
</body>
</html>
