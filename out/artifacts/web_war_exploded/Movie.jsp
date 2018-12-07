
<%--
  Created by IntelliJ IDEA.
  User: Yeung
  Date: 2018/11/29
  Time: 0:02
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
    <link rel="stylesheet" href="src/css/movie.css">
    <link rel="icon" href="content/icon.ico">
    <title>MyMovie</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #c0e5f8;">
<!-- Fixed navbar -->
<jsp:useBean id="user" class="model.User" scope="session"/>
<jsp:useBean id="movie" class="model.Movie" scope="session"/>
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

            <%
                if(user.isGuest()){//未登录
                    out.println("<ul class=\"nav navbar-nav navbar-right\"  id=\"unlogin\">\n" +
                            "                    &lt;!&ndash;<li style=\"display:inline;\"><a href=\"../navbar/\"><img src=\"content/City.jpg\"></a></li>&ndash;&gt;\n" +
                            "                    <li style=\"display:inline;\"><a data-toggle=\"modal\" data-target=\"#LoginModal\">登录</a></li>\n" +
                            "                    <li ><a data-toggle=\"modal\" data-target=\"#SignModal\">注册</a></li>\n" +
                            "                </ul>");
                }
                else{//登录
                    out.println("<ul class=\"nav navbar-nav navbar-right\"  id=\"logined\">\n" +
                            "                    <li class=\"dropdown\">\n" +
                            "                        <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">\n" +
                            "                            <img src=\"content/City.jpg\" id=\"userInfo\"><span class=\"caret\"></span>\n" +
                            "                        </a>\n" +
                            "                        <ul class=\"dropdown-menu\" id=\"acountMenu\">\n" +
                            "                            <li><a href=\"mySpace.jsp\"><img src=\"content/home.svg\">  &nbsp;我的空间</a></li>\n" +
                            "                            <li class=\"divider\"></li>\n" +
                            "                            <li><a><img src=\"content/exit.svg\">  &nbsp;退出</a></li>\n" +
                            "                        </ul>\n" +
                            "                    </li>\n" +
                            "                    <li><p>"+user.getNickName()+"</p></li>\n" +
                            "                    ");
                }
            %>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="container mainpage">
    <div id="mainpic coooooo">

    </div>
    <div class="header">
        <img src="content/wobushi.png" alt="我不是药神" class="mainpic">
    </div>
    <div id="info">

        <span><span class="pl">导演</span>: <span class="attrs">文牧野</span></span><br>
        <span><span class="pl">编剧</span>: <span class="attrs">韩家女/钟伟/文牧野</span></span><br>
        <span class="actor"><span class="pl">主演</span>: <span class="attrs">徐峥 / 王传君 / 周一围 / 谭卓 / 章宇 / 更多...</span></span>
        <span class="pl">类型:</span> <span property="v:genre">剧情</span> / <span property="v:genre">喜剧</span><br>

        <span class="pl">制片国家/地区:</span> 中国大陆<br>
        <span class="pl">语言:</span> 汉语普通话 / 英语 / 上海话 / 印地语<br>
        <span class="pl">上映日期:</span> <span content="2018-07-05(中国大陆)">2018-07-05(中国大陆)</span> / <span content="2018-06-30(大规模点映)">2018-06-30(大规模点映)</span><br>
        <span class="pl">片长:</span> <span property="v:runtime" content="117">117分钟</span><br>
        <span class="pl">又名:</span> 中国药神 / 印度药神 / 印度药商 / 生命之路 / Dying to Survive / Drug Dealer<br>
        <span class="pl">IMDb链接:</span> <a href="http://www.imdb.com/title/tt7362036" target="_blank" rel="nofollow">tt7362036</a><br>

    </div>
    <div class="col-md-1"></div>
    <div class="col-md-10" id="briefInfo">
        <span class="title">剧情简介</span>
        <br>
        <p id="introduce">程勇（徐峥 饰）是上海一间印度神油店的老板。某日在邻居的引荐下，白血病患者吕受益（王传君 饰）登门拜访，请他从印度带回一批治疗慢性粒细胞性白血病的特效药“格列宁”。程勇深知走私贩售药物是非法的，但此时的他已经陷入了经济困难，前妻曹玲（龚蓓苾 饰）正在争取儿子的全部抚养权，要带儿子移民国外，老父亲做手术急需钱。于是，程勇毅然决定踏上走私的道路......</p>

        <span class="title">演员表</span>
        <div id="role_box">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                    <th class="col-md-1">角色</th>
                    <th class="col-md-2">演员</th>
                    <th class="col-md-4">备注</th>
                </tr>
                <tr>
                    <td class="col-md-1">程勇</td>
                    <td class="col-md-2">徐峥</td>
                    <td class="col-md-4"><p>主角，饰演上海一间印度神油店的老板。</p></td>
                </tr>
                <tr>
                    <td class="col-md-1">曹斌</td>
                    <td class="col-md-2">周一围</td>
                    <td class="col-md-4"><p>警察，曹玲弟弟。查处仿制药格列宁案。</p></td>
                </tr>
                <tr>
                    <td class="col-md-1">吕受益</td>
                    <td class="col-md-2">王传君</td>
                    <td class="col-md-4"><p>患者，最先请求程勇走私印度特效药。</p></td>
                </tr>
                <tr>
                    <td class="col-md-1">刘思慧</td>
                    <td class="col-md-2">谭卓</td>
                    <td class="col-md-4"><p>钢管舞女，病友QQ群群主。女儿为小病患。</p></td>
                </tr>
                <tr>
                    <td class="col-md-1">彭浩</td>
                    <td class="col-md-2">章宇</td>
                    <td class="col-md-4"><p>病患，在上海的贵州凯里打工仔。</p></td>
                </tr>
                <tr>
                    <td class="col-md-1">刘牧师</td>
                    <td class="col-md-2">杨新鸣</td>
                    <td class="col-md-4"><p>牧师，程勇的英文翻译</p></td>
                </tr>
                <tr>
                    <td class="col-md-1">张长林</td>
                    <td class="col-md-2">王砚辉</td>
                    <td class="col-md-4"><p>假药贩子。</p></td>
                </tr>


                </tbody></table>
        </div>
        <form action="/addComment" method="post">
            <span class="title  col-md-12">评论</span>
            <div class="Input_Box col-md-10">
                <textarea class="Input_text1 col-md-12" name="title" placeholder="输入标题"></textarea>
                <textarea class="Input_text2 col-md-12" name="content" placeholder="输入新的短评"></textarea>
                <br>
                <div class="Input_Foot col-md-12"> <div class="col-md-11"></div><button type="submit" value="确定" style="width: 10% ;height: 24px">确定</button></div>
            </div>
        </form>
    </div>

    <div class="col-md-10 comments">
        <ul>
            ${movie.comments}
        </ul>
        <div class="bottom"><p></p></div>
    </div>

</div>




<div class="col-md-12 bottom"><hr></div>


<script src="src/jquery/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
