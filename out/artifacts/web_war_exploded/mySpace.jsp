
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
<body background="content/bg-myspace.jpg">
<jsp:useBean id="user" class="model.User" scope="session"/>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div >
            <ul class="nav navbar-nav">
                <li><img src="content/City.jpg" id="userInfo"></li>
                <li><a id="top" >${user.userName}的空间</a></li>
            </ul>

        </div>
        <div id="navbar" class="navbar-collapse collapse" >
            <ul class="nav navbar-nav">
                <li><A> </A>   </li>
                <li><a href="Welcome.html"> 开始</a></li>
                <li><a href="./index.html">主界面</a></li>
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
                <li>账号：<p id="userId">${user.userName}</p></li>
                <li>关注：<p id="guanzhu">99</p> 粉丝：999<p id="Fans"></p> 影评：<p id="yingping">88</p></li>
                <hr>
                <li>昵称：<p id="username">${user.nickName}</p> <a id="changeInfo" data-toggle="modal" data-target="#changeInfoModel">修改资料</a></li>
                <li>简介：<p id="brief">${user.description}</p></li>
                <li>偏好：<p id="preferType">${user.prefer}</p></li>
                <li>地区：<p id="contact">湖北省武汉市</p></li>
                <li>性别：<p id="sex">男</p></li>
                <li>生日：<p id="birth">${user.birth}</p></li>
                <li>工作：<p id="work">${user.work}</p></li>

                <hr>
                <li></li>
            </ul>

        </div>

        <!-- 修改资料 -->
        <div class="modal fade" id="changeInfoModel">
            <div class="modal-dialog">
                <div class="modal-content LoginBox">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal"> x</button>
                        <form action="/changeInfo" method="post">
                            <ul class="loginContent">
                                <hr>
                                <li>
                                    <input type="text" class="loginInput" name="nickname" value="${user.nickName}">
                                </li>
                                <li>
                                    <input type="text" class="loginInput" name="description" value="${user.description}">
                                </li>
                                <li>
                                    <input type="text" class="loginInput" name="prefer" value="${user.prefer}">
                                </li>
                                <li>
                                    <input type="text" class="loginInput" name="birth" value="${user.birth}">

                                </li>
                                <li>
                                    <img class="userIcon" src="content/user.svg"><input type="text" class="loginInput" name="work" value="${user.work}">

                                </li>
                                <li>
                                    <input type="submit" value="提交" class="centeroflogin loginbtn">
                                </li>
                            </ul>
                        </form>

                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>


    </div>
    <div class="col-md-10 con" id="myComment">
        <p class="title">我的影评<a id="newComment" data-toggle="modal" data-target="#AddComment">添加影评</a></p>
        <HR>
        <ul>
            <%--<li class="comment">--%>
                <%--<h3>第一条影评</h3>--%>
                <%--<hr>--%>
                <%--<p>人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>--%>
                <%--<!--人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中都会出现这样一个人，纵使尘满面，鬓如霜，也想要和他相伴到岁末晚景。我深信此画面曾被无数人精心描摹过，因为它是人们心里憧憬的最美的爱相逢。这个浪漫的“版图”，也是温暖与真挚包裹的纯粹感情，所刻画的一幅朴素人生。-->--%>
            <%--</li>--%>
            <%--<li class="comment">--%>
                <%--<h3>第二条影评</h3>--%>
                <%--<hr>--%>
                <%--<p> ashdkjadsa</p>--%>
            <%--</li>--%>
            ${user.comments}
        </ul>

        <!-- 添加影评 -->
    <div class="modal fade" id="AddComment">
        <div class="modal-dialog">
            <div class="modal-content LoginBox">
                <div class="Input_Box col-md-10">
                    <h1>新建影评</h1>
                    <textarea class="Input_text1 col-md-12" placeholder="输入标题,不超过32字"></textarea>
                    <textarea class="Input_text2 col-md-12" placeholder="输入新的短评，不超过10000字"></textarea>
                    <br>
                    <div class="Input_Foot col-md-12"> <div class="col-md-10"></div><a class="col-md-2">确定</a> </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-10 con" id="myCollection">
        <p class="title"> 我的收藏</p>
        <hr>
    </div>
</div>

<!--
-->
<script src="src/js/easyJs.js"></script>
<script src="src/jquery/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
</body>
