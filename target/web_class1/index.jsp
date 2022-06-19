<%--
  Created by IntelliJ IDEA.
  User: paidastar
  Date: 2021/10/23
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
    </script>

    <title>登陆页面</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--图标-->
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

    <!--布局框架-->
    <link rel="stylesheet" type="text/css" href="css/util.css">

    <!--主要样式-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>

<div class="login">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
                <img src="img/img-01.png" alt="IMG">
            </div>

            <form class="login100-form validate-form">
				<span class="login100-form-title">
					登陆
				</span>

                <div class="wrap-input100 validate-input">
                    <input class="input100" type="text" name="email" placeholder="">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
						<i  aria-hidden="true">账号</i>
					</span>
                </div>

                <div class="wrap-input100 validate-input">
                    <input class="input100" type="password" name="pass" placeholder="">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
						<i aria-hidden="true">密码</i>
					</span>
                </div>

                <div class="wrap-input100 validate-input">
                    <input class="input100" type="text" style="width: 200px">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
						<i aria-hidden="true">验证</i>
					</span>
                    <a  href="javascript:void(0);" onclick="getCode();">
                        <img style="margin-left: 200px;margin-top: -46px" src="CheckCode" alt="图片没了" id="checkcode">
                    </a>
                </div>
                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        登陆
                    </button>
                </div>

                <div class="text-center p-t-12">
                    <a class="txt2" href="javascript:">
                        忘记密码？
                    </a>
                </div>

                <div class="text-center p-t-136">
                    <a class="txt2" href="#">
                        还没有账号？立即注册
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    function getCode() {
        $("#checkcode").attr("src","CheckCode?time="+new Date().getTime());
    }
</script>
</body>
</html>
