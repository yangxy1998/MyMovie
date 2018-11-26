<%--
  Created by IntelliJ IDEA.
  User: Yeung
  Date: 2018/11/26
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="content/icon.ico">
    <title>mySpace</title>
    <link rel="stylesheet"href="src/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="src/css/Navbar.css">
    <link rel="stylesheet" href="src/css/mySpace.css">
</head>
<body>
<jsp:useBean id="user" class="model.User" scope="session"/>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <img src="content/City.jpg" id="userInfo">
            <a id="top" >${user.userName}的空间</a>
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
            <ul class="nav navbar-nav navbar-right">
                <li><a>退出</a></li>
                <li><p>username</p></li>

            </ul>
            <!--<ul class="nav navbar-nav navbar-right" id="logined">
                &lt;!&ndash;<li style="display:inline;"><a href="../navbar/"><img src="content/City.jpg"></a></li>&ndash;&gt;
                <li style="display:inline;"><a href="mySpace.html"><img src="content/try.jpg" id="userInfo"></a></li>
            </ul>-->
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div data-v-0d738edb="" data-v-357a65ed="" class="cont view">
    <div data-v-0d738edb="" class="right_cont">
        <h3 data-v-0d738edb="" class="title">个人资料</h3>
        <div data-v-0d738edb="" class="user_info">
            <div data-v-0d738edb="" class="header">
                <img data-v-0d738edb="" src="https://avatar.csdn.net/7/0/A/1_chch1999.jpg?1542626658" alt="" class="head">
                <p data-v-0d738edb="" class="modify">修改头像</p>
            </div> <!----> <div data-v-0d738edb="" class="right_c">
            <div data-v-0d738edb="" class="right_info">
                <div data-v-0d738edb="" class="id_card">
                    <span data-v-0d738edb="" class="id_name">ID：${user.userName}</span> <!----> <!----> <a data-v-0d738edb="" href="//me.csdn.net/chch1999" target="_blank" class="user_home">个人主页</a></div></div> <div data-v-0d738edb="" class="csdn_info"><span data-v-0d738edb="" style="margin-right: 16px; color: rgb(77, 77, 77); font-size: 14px;">关注 0</span> <span data-v-0d738edb="" style="margin-right: 16px; color: rgb(77, 77, 77); font-size: 14px;">粉丝 0</span> <span data-v-0d738edb="" class="splits">|</span> <span data-v-0d738edb="" style="margin-right: 8px; color: rgb(77, 77, 77); font-size: 14px;">C币  0</span> <a data-v-0d738edb="" href="https://mall.csdn.net/vip_code" class="charge">充值</a></div> <div data-v-0d738edb="" class="line"></div> <div data-v-0d738edb="" class="nick"><span data-v-0d738edb="">昵称：尘风木雨</span> <span data-v-0d738edb="" class="mod">修改资料</span></div> <ul data-v-0d738edb="" class="self"><li data-v-0d738edb="" class="comon">实名：</li> <li data-v-0d738edb="" class="comon">性别：男
</li><li data-v-0d738edb="" class="comon">生日：1999-12-06</li> <li data-v-0d738edb="" class="comon">地区：</li> <li data-v-0d738edb="" class="comon">行业：</li> <li data-v-0d738edb="" class="comon last">职位：</li> <li data-v-0d738edb="" class="intro"><span data-v-0d738edb="" class="noWid">简介：</span><span data-v-0d738edb="" class="cont"></span></li></ul></div></div></div> <!----> <!----></div>
<script src="src/jquery/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
