<%--
  Created by IntelliJ IDEA.
  User: Yeung
  Date: 2018/11/26
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="src/css/IndexStyle.css">
    <link rel="stylesheet" href="src/css/Navbar.css">
    <link rel="icon" href="content/icon.ico">
    <title>MyMovie</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>

<body >
<jsp:useBean id="user" class="model.User" scope="session"/>
<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" id="top" >MyMovie</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse" >
            <ul class="nav navbar-nav">
                <li><A> </A>   </li>
                <li><a href="Welcome.html"> 开始</a></li>
                <li><a href="./index.jsp">主界面</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">分类<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="science.html">科幻星空</a></li>
                        <li><a href="magic.html">魔幻史诗</a></li>
                        <li><a href="love.html">纯爱之家</a></li>
                        <li><a href="happy.html">欢乐剧场</a></li>
                        <li><a href="classic.html">文艺经典</a></li>
                        <li><a href="Welcome.html"> 开始</a></li>
                    </ul>
                </li>

                <li><a href="#about">About</a></li>

            </ul>

            <!--未登录（登录注册按钮）-->
            <!--<ul class="nav navbar-nav navbar-right"  id="unlogin">
                &lt;!&ndash;<li style="display:inline;"><a href="../navbar/"><img src="content/City.jpg"></a></li>&ndash;&gt;
                <li style="display:inline;"><a data-toggle="modal" data-target="#LoginModal">登录</a></li>
                <li ><a data-toggle="modal" data-target="#SignModal">注册</a></li>
            </ul>-->

            <!--登录后（相关菜单）-->
            <ul class="nav navbar-nav navbar-right"  id="logined">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <img src="content/City.jpg" id="userInfo"><span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" id="acountMenu">
                        <li><a href="mySpace.jsp"><img src="content/home.svg">  &nbsp;我的空间</a></li>
                        <li class="divider"></li>
                        <li><a><img src="content/exit.svg">  &nbsp;退出</a></li>
                    </ul>
                </li>
                <li><p>${user.userName}</p></li>

            </ul>
            <!--<ul class="nav navbar-nav navbar-right" id="logined">
                &lt;!&ndash;<li style="display:inline;"><a href="../navbar/"><img src="content/City.jpg"></a></li>&ndash;&gt;
                <li style="display:inline;"><a href="mySpace.html"><img src="content/try.jpg" id="userInfo"></a></li>
            </ul>-->
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container" id=" mainContent">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">
            <div class="item active">
                <img src="./content/try.jpg" alt="Los Angeles" style="width:100%;">
            </div>

            <div class="item">
                <img src="./content/try.jpg" alt="Chicago" style="width:100%;">
            </div>

            <div class="item">
                <img src="./content/try.jpg" alt="New york" style="width:100%;">
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>

    </div>

</div>

<div class="container mainContent" style="background: white; height: 1600px">

</div>

<!--<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>-->
<script src="src/jquery/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
