<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        body{
            margin: 0;
            background: url("images/d76b2b1a-2f38-4c43-9c35-88a74825cd4e.jpg") ;

        }
        .background0{
            position: relative;
            margin-top: 198px;
            height: 500px;
            background: url("images/bg2.png") 500px;
            animation: bg 200s steps(5000) infinite;
        }
        .background{
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 336px;
            background: url("images/bg1.png") ;
            animation: bg 60s steps(500) infinite;
        }
        .div2{
            position: absolute;
            bottom: 0;
            width: 200px;
            height: 100px;
            background: url("images/bear.png") no-repeat;
            animation: bear 1s steps(8) infinite,move 5s forwards;
        }
        @keyframes bear {
            0% {
                background-position: 0 0;
            }
            100% {
                background-position: -1600px 0;
            }
        }
        @keyframes move {
            0%{
                left: 0;
            }
            100%{
                left: 50%;
                transform: translateX(-50%);
            }
        }
        @keyframes bg {
            0%{
                background-position: 0 0;
            }
            100%{
                background-position: -3840px 0;
            }
        }

    </style>
</head>
<body>
<iframe src="char.jsp" style="width: 500px;height: 1000px"></iframe>
    <div class="background0">
        <div class="background">
            <div class="div1"><div class="div2"></div></div>
        </div>
    </div>
</body>
</html>
