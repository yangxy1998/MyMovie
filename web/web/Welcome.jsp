<%--
  Created by IntelliJ IDEA.
  User: Yeung
  Date: 2018/11/29
  Time: 0:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="content/icon.ico">
    <title>MyMovie</title>
    <link rel="stylesheet" href="src/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="src/css/Welcome.css">
    <link rel="stylesheet" href="src/css/Navbar.css">
</head>
<body>
<jsp:useBean id="server" class="util.Server" scope="session"/>
${server.alert}
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" id="top" >MyMovie</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse" >
            <ul class="nav navbar-nav">
                <li><A> </A>   </li>
                <li class="active"><a href="Welcome.html"> 开始</a></li>
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
                        <img src="content/City.jpg"id="userInfo"><span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" id="acountMenu">
                        <li><a href="mySpace.html"><img src="content/home.svg">  &nbsp;我的空间</a></li>
                        <li class="divider"></li>
                        <li><a><img src="content/exit.svg">  &nbsp;退出</a></li>
                    </ul>
                </li>
                <li><p>Welcome To MyMovie</p></li>

            </ul>
            <!--<ul class="nav navbar-nav navbar-right" id="logined">
                &lt;!&ndash;<li style="display:inline;"><a href="../navbar/"><img src="content/City.jpg"></a></li>&ndash;&gt;
                <li style="display:inline;"><a href="mySpace.html"><img src="content/try.jpg" id="userInfo"></a></li>
            </ul>-->
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="bg">
    <img id="WelcomeImage"  src="content/sea.jpg">
    <div>
        <p id="mTitle">My Movie</p><!--主标题-->
        <p id="info">感受光影魅力,记录美好时光</p>
    </div>
    <!--俩按钮-->
    <button class="mybtn" id="login" data-toggle="modal" data-target="#LoginModal">登录</button>
    <a href="#" id="sign"  data-toggle="modal" data-target="#SignModal">没有账号，赶紧注册</a>
    <button class="mybtn" id="tour" onclick={location.href='/init'}>游客访问</button>
</div>
<!--登录窗口-->
<div class="modal fade" id="LoginModal">
    <div class="modal-dialog">
        <div class="modal-content LoginBox">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal"> x</button>
                <form action="/login" method="post">
                    <ul class="loginContent">
                        <p class="loginTitle">登录MyMovie</p>
                        <hr>
                        <li>
                            <div>
                                <img class="userIcon" src="content/user.svg"><input type="text" class="loginInput" name="username" placeholder="UserName">
                            </div>
                        </li>
                        <li>
                            <div>
                                <img class="userIcon" src="content/password.svg"><input type="password" class="loginInput" name="password" placeholder="password">
                            </div>
                        </li>
                        <li class="remember centeroflogin">
                            <input type="checkbox" >Remember Me
                        </li>
                        <li>
                            <input type="submit" value="Login" class="centeroflogin loginbtn">
                        </li>
                        <li><p id="loginInfo" class="centeroflogin"></p></li>
                    </ul>
                </form>

            </div>
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--注册窗口-->
<div class="modal fade" id="SignModal">
    <div class="modal-dialog">
        <div class="modal-content LoginBox">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal"> x</button>
                <form action="/register" method="post">
                    <ul class="loginContent">
                        <p class="loginTitle">注册MyMovie</p>
                        <hr>
                        <li>
                            <div>
                                <img class="userIcon" src="content/user.svg"><input type="text" class="loginInput" name="username" placeholder="UserName">
                            </div>
                        </li>
                        <li>
                            <div>
                                <img class="userIcon" src="content/password.svg"><input type="password" class="loginInput" name="password" placeholder="your password">
                            </div>
                        </li>
                        <li>
                            <div>
                                <img class="userIcon" src="content/password.svg"><input type="password" class="loginInput" name="password_2" placeholder="check your password">
                            </div>
                        </li>

                        <li>
                            <input type="submit" value="Register" class="centeroflogin loginbtn">
                        </li>
                        <li><p id="signInfo" class="centeroflogin"></p></li>
                    </ul>
                </form>

            </div>
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script src="src/jquery/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
