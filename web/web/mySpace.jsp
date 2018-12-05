<%@ page import="org.apache.commons.lang3.tuple.Pair" %>
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" href="content/icon.ico">
    <title>mySpace</title>
    <link rel="stylesheet"href="src/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="src/css/Navbar.css">
    <link rel="stylesheet" href="src/css/mySpace.css">

</head>
<body background="content/bg-myspace.jpg">
<jsp:useBean id="user" class="model.User" scope="session"/>
<jsp:useBean id="server" class="util.Server" scope="session"/>
${server.alert}
<%
    int size=user.getRecords().size();
    out.println("<style>\n" +
            "    .section{\n" +
            "        text-align:center;\n" +
            "        width:3px;\n" +
            "        height:"+(size*200+50)+"px;\n" +
            "        background:#969797;\n" +
            "        margin-left:40%;\n" +
            "        margin-top: 100px;\n" +
            "        border-radius:3px;\n" +
            "        position:relative;\n" +
            "        -webkit-animation:slide "+(size+1)+"s linear;\n" +
            "    }\n" +
            "    @-webkit-keyframes slide{\n" +
            "        0%{\n" +
            "            height:0px;\n" +
            "        }\n" +
            "        100%{\n" +
            "            height:"+(size*200+50)+"px;\n" +
            "        }\n" +
            "    }\n" +
            "    @-webkit-keyframes showIn{\n" +
            "        0%{\n" +
            "            opacity:0;\n" +
            "        }\n" +
            "        100%{\n" +
            "            opacity:1;\n" +
            "        }\n" +
            "    }\n" +
            "    .section:after{\n" +
            "        content:\"待 续\";\n" +
            "        width:100px;\n" +
            "        color:#969797;\n" +
            "        position:absolute;\n" +
            "        margin-left: -50px;\n" +
            "        bottom: -30px;\n" +
            "        font-family:微软雅黑;\n" +
            "        -webkit-animation: showIn "+(size+1)+"s ease;\n" +
            "    }\n" +
            "</style>");
    for(int i=0;i<size;i++){
        out.println("<style>");
        out.println(".section .text"+i+" h2{\n" +
                "        position: absolute;\n" +
                "        margin-left: -90px;\n" +
                "        margin-top: 20px;\n" +
                "        width: 100px;\n" +
                "        height: 20px;\n" +
                "        color: #969797;\n" +
                "        font-size: 14px;\n" +
                "        font-family: 微软雅黑;\n" +
                "        -webkit-animation: showIn 3s ease;\n" +
                "        left: -6px;\n" +
                "        top: 10px;\n" +
                "    }");
        out.println(".section .text"+i+" h1{\n" +
                "        position: absolute;\n" +
                "        margin-left: -100px;\n" +
                "        margin-top:-15px;\n" +
                "        width:100px;\n" +
                "        color:#969797;\n" +
                "        font-size:30px;\n" +
                "        font-family:微软雅黑;\n" +
                "        -webkit-animation:showIn 3s ease;\n" +
                "    }\n" +
                "    .section .text"+i+"{\n" +
                "        position: absolute;\n" +
                "        margin-left: -7px;\n" +
                "        margin-top:-5px;\n" +
                "        width:10px;\n" +
                "        height:10px;\n" +
                "        border-radius: 50%;/*使变成圆*/\n" +
                "        border:4px solid #939090;\n" +
                "        background:#DCDBDB;\n" +
                "        -webkit-transition: all 0.5s;\n" +
                "        -webkit-animation: showIn ease forwards;\n" +
                "        opacity: 0;\n" +
                "    }\n" +
                "    .section .text"+i+":hover{\n" +
                "        border:4px solid lightblue;\n" +
                "        background: #D7D5D5;\n" +
                "        box-shadow: 0 0 1px 1px #DBF2F8;\n" +
                "    }\n" +
                "    .section .text"+i+" .words{\n" +
                "        position: absolute;\n" +
                "        top:50%;\n" +
                "        left:50px;\n" +
                "        width: 250px;\n" +
                "        overflow: hidden;\n" +
                "        font-family:微软雅黑;\n" +
                "        border:3px solid #999696;\n" +
                "        border-radius:5px;\n" +
                "        -webkit-animation: showIn 3s ease;\n" +
                "        -webkit-transition: all 0.5s;\n" +
                "    }\n");
        out.println(".section .text"+i+"{\n" +
                "        margin-left: -7px;\n" +
                "        margin-top:"+(i*200)+"px;\n" +
                "        -webkit-animation-duration: "+(size-1)+"s;\n" +
                "        -webkit-animation-delay: "+(i)+"s;\n" +
                "    }");
        out.println("</style>");
    }
%>
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
                <li><a href="Welcome.jsp"> 开始</a></li>
                <li><a href="/init">主界面</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">分类<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="index.jsp?type=science">科幻星空</a></li>
                        <li><a href="index.jsp?type=magic">魔幻史诗</a></li>
                        <li><a href="index.jsp?type=love">纯爱之家</a></li>
                        <li><a href="index.jsp?type=happy">欢乐剧场</a></li>
                        <li><a href="index.jsp?type=classic">文艺经典</a></li>
                        <li><a href="index.jsp?type=others">惊喜杂烩</a></li>
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
            <li class="ncurrent" onclick="Change(2)"><a>我的影史</a></li>
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
                <li>账号：<span id="userId">${user.userName}</span></li>
                <li>关注：<span id="guanzhu">99</span> 粉丝：<span id="Fans">999</span> 影评：<span id="yingping">88</span></li>
                <hr>
                <li>昵称：<span id="username">${user.nickName}</span> <a id="changeInfo"data-toggle="modal" data-target="#changeInfoModel">修改资料</a></li>
                <li>简介：<span id="brief">${user.description}</span></li>
                <li>偏好：<span id="preferType">${user.prefer}</span></li>
                <li>地区：<span id="contact">湖北省武汉市</span></li>
                <%--<li>性别：<span id="sex">男</span></li>--%>
                <li>生日：<span id="birth">${user.birth}</span></li>
                <li>工作：<span id="work">${user.work}</span></li>
                <li></li>
            </ul>

        </div>
        <%--<div class="information col-md-10">
            <ul>
                <li>账号：<p id="userId">${user.userName}</p></li>
                <li>昵称：<p id="username">${user.nickName}</p></li>
                <li>简介：<p id="brief">${user.description}</p></li>
                <li>偏好：<p id="preferType">${user.prefer}</p></li>
                <li>生日：<p id="birth">${user.birth}</p></li>
                <li>工作：<p id="work">${user.work}</p></li>
                <li></li>
            </ul>
            <button class="mybtn" id="changeInfo" data-toggle="modal" data-target="#changeInfoModel" style="height: 20px">修改资料</button>
        </div>--%>
    </div>
    <div class="col-md-10 con" id="myComment">
        <p class="title">我的影评<a data-toggle="modal" data-target="#AddComment">添加影评</a></p>
        <HR>
        <ul>
            ${user.comments}
        </ul>

    </div>
    <div class="col-md-10 con" id="myCollection">
        <p class="title"> 我的收藏</p>
        <div class="section">
            <%
                for (int i=0;i<user.getRecords().size();i++) {
                    out.println("<div class=\"text"+i+"\">\n" +
                            "                <h1>"+user.getRecords().get(i).getType()+"</h1>\n" +
                            "                <h2>"+user.getRecords().get(i).getDate()+"</h2>\n" +
                            "                <div class=\"words\"><br>\n" +
                            "                    <span style=\"font-size:24px;\">"+user.getRecords().get(i).getTitle()+"</span><br>\n" +
                            "                    <div class=\"description\">"+user.getRecords().get(i).getContent()+"</div>\n" +
                            "                </div>\n" +
                            "            </div>");
                }

            %>

        </div>
        <hr>
    </div>
</div>

    <!-- 修改资料 -->
    <div class="modal fade" id="changeInfoModel">
    <div class="modal-dialog">
    <div class="modal-content" id="changeBox">
    <div class="modal-body">
    <button type="button" class="close" data-dismiss="modal"> x</button>
    <h2>修改个人信息</h2>
    <hr>
    <form action="/changeInfo" method="post">
    <ul class="changeContent">
    <li>
    昵称：<input type="text" class="loginInput" name="nickname" value="${user.nickName}">
    </li>
    <li>
    简介：<input type="text" class="loginInput" name="description" value="${user.description}">
    </li>
    <li>
    喜好：<input type="text" class="loginInput" name="prefer" value="${user.prefer}">
    </li>
    <li>
    生日：<input type="text" class="loginInput" name="birth" value="${user.birth}">
    </li>
    <li>
    工作：<input type="text" class="loginInput" name="work" value="${user.work}">
    </li>
    <li>
    <input type="submit" value="提交" class="confirm">
    </li>
    </ul>
    </form>

    </div>
    </div>
    </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
    <!-- 添加影评 -->
    <div class="modal fade" id="AddComment">
        <div class="col-md-3"></div>
        <div class="col-md-6 Input_Box">
        <button type="button" class="close" data-dismiss="modal"> x</button>
            <h2>新建影评</h2>
            <hr>
            <form action="/addComment" method="post">
                <textarea type="text" class="Input_text1 col-md-12" name="title" placeholder="输入标题(不多于32个字)"></textarea>
                <hr>
                <textarea type="text" class="Input_text2 col-md-12" name="content" placeholder="输入新的影评(不多于10000个字)"></textarea>

                <br>
                <div class="Input_Foot col-md-12"> <div class="col-md-10"></div> <input type="submit" value="提交" class="postBtn col-md-2"></div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->

<!--
-->
<script src="src/js/easyJs.js"></script>
<script src="src/jquery/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
</body>
