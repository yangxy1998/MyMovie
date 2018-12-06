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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="src/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="src/css/Navbar.css">
    <link rel="stylesheet" type="text/css" href="src/css/IndexStyle.css">

    <link rel="icon" href="content/icon.ico">
    <title>MyMovie</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background-color: #ffffff">
<jsp:useBean id="user" class="model.User" scope="session"/>
<jsp:useBean id="server" class="util.Server" scope="session"/>
${server.alert}
<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" id="top" >MyMovie</a>
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
            </ul>
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
<div class="container myCarousel">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">
            <div class="item active">
                <img src="./content/c0.jpg" alt="img1">
            </div>

            <div class="item">
                <img src="./content/c2.jpg" alt="img2">
            </div>

            <div class="item">
                <img src="./content/c1.jpg" alt="img3">
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

<div class="col-md-12 ">
    <div class="col-md-1"></div>
    <div class="col-md-10 choices">
        <div class="col-md-5 choice1 choice"><p>感受光影魅力</p></div>
        <div class="col-md-2 trangle"></div>
        <div class="col-md-5 choice2 choice"><p>记录美好生活</p></div>
    </div>

</div>
<div class="moviePage">

    <div class="col-md-1"></div>
    <div class="mid-header col-md-7">
        <span class="txt">新片速递</span>
    </div>
    <div class="mid-header col-md-3">
        <span class="txt">热度排行</span>
    </div>
    <div class="col-md-1"></div>
    <div class="col-md-7 newMovie">
        <div class="video"><video  style="height: 100% ; width: 100%" controls><source src="content/waterdrop.mp4" type="video/mp4"></video></div>
        <div class="movie0 Box" onclick="window.open('Movie.html')">
            <img src="content/wobushi.png">
            <div class="mask"><p class="movieName">我不是药神</p><p class="moviePointText">评分:</p><p class="moviePoint">9.9</p></div>
        </div>
        <div class="movie Box">
            <img src="content/movie3.jpg" >
            <div class="mask"><p class="movieName">饥饿游戏</p><p class="moviePointText">评分:</p><p class="moviePoint">9.9</p></div>
        </div>
        <div class="movie Box" >
            <img src="content/movie4.jpg" >
            <div class="mask"><p class="movieName">驯龙高手</p><p class="moviePointText">评分:</p><p class="moviePoint">9.9</p></div>
        </div>
        <div class="movie Box">
            <img src="content/movie5.jpg" >
            <div class="mask"><p class="movieName">指环王</p><p class="moviePointText">评分:</p><p class="moviePoint">9.9</p></div>
        </div>
        <div class="movie Box">
            <img src="content/movie6.webp" >
            <div class="mask"><p class="movieName">一出好戏</p><p class="moviePointText">评分:</p><p class="moviePoint">9.9</p></div>
        </div>
        <div class="movie Box" >
            <img src="content/movie7.webp" >
            <div class="mask"><p class="movieName">碟中谍</p><p class="moviePointText">评分:</p><p class="moviePoint">9.9</p></div>
        </div>
        <div class="movie Box">
            <img src="content/movie8.webp" >
            <div class="mask"><p class="movieName">头号玩家</p><p class="moviePointText">评分:</p><p class="moviePoint">9.9</p></div>
        </div>
        <div class="movie Box">
            <img src="content/movie9.webp" >
            <div class="mask"><p class="movieName">黑客帝国</p><p class="moviePointText">评分:</p><p class="moviePoint">9.9</p></div>
        </div>
        <div class="movie Box">
            <img src="content/movie10.webp" >
            <div class="mask"><p class="movieName">我是传奇</p><p class="moviePointText">评分:</p><p class="moviePoint">9.9</p></div>
        </div>

    </div>



    <div class="col-md-4 ranksd">

        <ul class="ranks">
            <li>综合榜</li>
            ${server.moviesHtml}
        </ul>
        <ul class="ranks">
            <li>新片榜</li>
            ${server.moviesHtml}
            </ul>

    </div><!--排行榜-->
</div><!--电影界面-->


<div class="commetPage">
    <div class="col-md-1"></div>
    <div class="mid-header col-md-3">
        <span class="txt">热门评论</span>
    </div>
    <div class="mid-header col-md-7">
        <span class="txt">最新评论</span>
    </div>
    <div class="col-md-1"></div>
    <div class="col-md-3 ranksd">

        <ul class="ranks">
            <li>收藏榜</li>
            <li class="top3"><img class="award" src="content/jin.png"><p class="movieName">评论标题</p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li  class="top3"><img class="award" src="content/yin.png"><p class="movieName">XXX</p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">6932</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li  class="top3"><img class="award" src="content/tong.png"><p class="movieName">XXX</p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">6533</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>4.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>5.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>6.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>7.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>8.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>9.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            <li class="top10"><p>10.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
        </ul>
        <ul class="ranks">
            <li>浏览榜</li>
            <li class="top3"><img class="award" src="content/jin.png"><p class="movieName">评论标题</p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li  class="top3"><img class="award" src="content/yin.png"><p class="movieName">XXX</p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">6932</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li  class="top3"><img class="award" src="content/tong.png"><p class="movieName">XXX</p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">6533</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>4.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>5.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>6.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>7.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>8.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
            <li class="top10"><p>9.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            <li class="top10"><p>10.</p><p class="movieName">XXX </p><span class="rankcenter"></span><img src="content/fireicon.png" class="hotText"><p class="hot">9527</p>
                <br> <p class="briefContent">简要内容...</p><span class="rankcenter"></span><p class="writer">作者</p>
            </li>
        </ul>
    </div><!--排行榜-->
    <div class="col-md-7" clase="comment">
        <ul>
            <li class="comment">
                <h3 class="title">第一条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第二条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第三条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第四条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第五条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第六条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第七条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第八条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第九条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第十条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>

        </ul>
    </div>
    <div class="mid-header col-md-7">
        <span class="txt">随便看看</span>
    </div>
    <div class="col-md-7" clase="comment">
        <ul>
            <li class="comment">
                <h3 class="title">第一条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第二条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第三条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第四条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第五条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第六条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第七条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第八条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第九条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>
            <li class="comment">
                <h3 class="title">第十条影评</h3>

                <p class="writer">——<span class="authorName">影评作者</span></p>
                <p class="dianzan">点赞数:<span class="good">99</span></p>
                <br>
                <hr class="commentHR">
                <p class="briefContent">人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中...</p>

            </li>

        </ul>
    </div>
</div><!--评论界面-->

<div class="col-md-12 bottom"><hr></div>


<!--<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>-->
<script src="src/jquery/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
//        影片图片
        $(".Box").hover(function(){
            $(this).find("img").css("transform","scale(1.1)");
            $(this).find(".mask").css("opacity","1");
        },function(){
            $(this).find(".mask").css("opacity","0.5");
            $(this).find("img").css("transform","scale(1)");
        });
//        排行效果
        $(".ranks li").hover(
            function () {
                $(this).css("background-color", "#adadad");
                $(this).css("background-color", "#adadad");
            },function () {
                $(this).css("background-color", "transparent");
            }
        )
        $(".choice").hover(
            function () {
                $(this).find("p").css("font-size", "42px");
                $(this).find("p").css("color", "white");
            },
            function () {
                $(this).find("p").css("font-size", "40px");
                $(this).find("p").css("color", "#f5f5f5");
            }
        )
        $(".choice1").click(
            function () {
                $(".moviePage").css("display","block");
                $(".commetPage").css("display","none");
            }
        )
        $(".choice2").click(
            function () {
                $(".moviePage").css("display","none");
                $(".commetPage").css("display","block");
            }
        )
    });

</script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
