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
                <ul class="nav navbar-nav">
                        <li><img src="content/City.jpg"id="userInfo"></li>
                        <li><a id="top" >${user.userName}的空间</a></li>
                </ul>
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

            <ul class="nav navbar-nav navbar-right">
                <li><a>退出</a></li>
            </ul>

        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container MS">
    <div class="col-md-2 " id="tabMenu">
        <ul class="nav nav-stacked" id="mytabs">
            <li class="current" onclick="Change(0)"><a>我的信息</a></li>
            <li class="ncurrent" onclick="Change(1)"><a>我的影评</a></li>
            <li class="ncurrent" onclick="Change(2)"><a>我的收藏</a></li>
            <li class="nav-divider"></li>
        </ul>
    </div>
    <div class="col-md-10 con" id="myInfo">
        <p class="title">个人信息</p>

        <HR>
            <div class="col-md-2 userimg">
                <ul>
                   <li><img src="content/City.jpg" id="touxiang"></li>
                    <li><a id="changeImg">[修改头像]</a></li>
                </ul>

            </div>
            <div class="information col-md-10">
                <ul>
                    <li>账号：<p id="userId">888888</p></li>
                    <li>关注：<p id="guanzhu">99</p> 粉丝：999<p id="Fans"></p> 影评：<p id="yingping">88</p></li>
                    <hr>
                    <li>昵称：<p id="username">XXX</p> <a id="changeInfo">修改资料</a></li>
                    <li>简介：<p id="brief">我来自计算机学院</p></li>
                    <li>偏好：<p id="preferType">科幻，魔幻</p></li>
                    <li>地区：<p id="contact">湖北省武汉市</p></li>
                    <li>性别：<p id="sex">男</p></li>
                    <li>生日：<p id="birth">2018-11-11</p></li>
                    <li>工作：<p id="work">学生</p></li>
                    <li></li>
                </ul>

            </div>



    </div>
    <div class="col-md-10 con" id="myComment">
        <p class="title">我的影评</p>
        <HR>
        <ul>
            <li class="comment">
                <h3>第一条影评</h3>
                <hr>
                <p>人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>
                <!--人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中都会出现这样一个人，纵使尘满面，鬓如霜，也想要和他相伴到岁末晚景。我深信此画面曾被无数人精心描摹过，因为它是人们心里憧憬的最美的爱相逢。这个浪漫的“版图”，也是温暖与真挚包裹的纯粹感情，所刻画的一幅朴素人生。-->
            </li>
            <li class="comment">
            <h3>第二条影评</h3>
            <hr>
            <p> ashdkjadsa</p>
        </li>

        </ul>

    </div>
    <div class="col-md-10 con" id="myCollection">
        <p class="title"> 我的收藏</p>
        <hr>
    </div>
</div>

<!--

<div data-v-0d738edb="" data-v-357a65ed="" class="cont view">
    <div data-v-0d738edb="" class="right_cont">
        <h3 data-v-0d738edb="" class="title">个人资料</h3>
        <div data-v-0d738edb="" class="user_info">
            <div data-v-0d738edb="" class="header">
                <img data-v-0d738edb="" src="https://avatar.csdn.net/7/0/A/1_chch1999.jpg?1542626658" alt="" class="head">
                <p data-v-0d738edb="" class="modify">修改头像</p>
            </div>  <div data-v-0d738edb="" class="right_c">
            <div data-v-0d738edb="" class="right_info">
                <div data-v-0d738edb="" class="id_card">
                    <span data-v-0d738edb="" class="id_name">ID：${user.userName}</span>  <a data-v-0d738edb="" href="//me.csdn.net/chch1999" target="_blank" class="user_home">个人主页</a></div></div> <div data-v-0d738edb="" class="csdn_info"><span data-v-0d738edb="" style="margin-right: 16px; color: rgb(77, 77, 77); font-size: 14px;">关注 0</span> <span data-v-0d738edb="" style="margin-right: 16px; color: rgb(77, 77, 77); font-size: 14px;">粉丝 0</span> <span data-v-0d738edb="" class="splits">|</span> <span data-v-0d738edb="" style="margin-right: 8px; color: rgb(77, 77, 77); font-size: 14px;">C币  0</span> <a data-v-0d738edb="" href="https://mall.csdn.net/vip_code" class="charge">充值</a></div> <div data-v-0d738edb="" class="line"></div> <div data-v-0d738edb="" class="nick"><span data-v-0d738edb="">昵称：尘风木雨</span> <span data-v-0d738edb="" class="mod">修改资料</span></div> <ul data-v-0d738edb="" class="self"><li data-v-0d738edb="" class="comon">实名：</li> <li data-v-0d738edb="" class="comon">性别：男
</li><li data-v-0d738edb="" class="comon">生日：1999-12-06</li> <li data-v-0d738edb="" class="comon">地区：</li> <li data-v-0d738edb="" class="comon">行业：</li> <li data-v-0d738edb="" class="comon last">职位：</li> <li data-v-0d738edb="" class="intro"><span data-v-0d738edb="" class="noWid">简介：</span><span data-v-0d738edb="" class="cont"></span></li></ul></div></div></div> </div>

-->


<script src="src/js/easyJs.js"></script>
<script src="src/jquery/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
