package controller;

import model.User;
import util.Server;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//初始化服务器的servlet
public class InitServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
        Server.server.createUser("username","password");
        Server.server.createUser("admin","admin");
        Server.server.findUser("username").addComment("我的第一条影评",
                "人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中都会出现这样一个人，纵使尘满面，鬓如霜，也想要和他相伴到岁末晚景。我深信此画面曾被无数人精心描摹过，因为它是人们心里憧憬的最美的爱相逢。这个浪漫的“版图”，也是温暖与真挚包裹的纯粹感情，所刻画的一幅朴素人生。");
        Server.server.shelfMovie("我不是药神","");
        Server.server.findMovie("我不是药神").setHeat(2915);
        Server.server.shelfMovie("饥饿游戏","");
        Server.server.findMovie("饥饿游戏").setHeat(368);
        Server.server.shelfMovie("驯龙高手","");
        Server.server.findMovie("驯龙高手").setHeat(256);
        Server.server.shelfMovie("指环王","");
        Server.server.findMovie("指环王").setHeat(512);
        Server.server.shelfMovie("一出好戏","");
        Server.server.findMovie("一出好戏").setHeat(2048);
        Server.server.shelfMovie("碟中谍","");
        Server.server.findMovie("碟中谍").setHeat(1024);
        Server.server.shelfMovie("头号玩家","");
        Server.server.findMovie("头号玩家").setHeat(2819);
        Server.server.shelfMovie("黑客帝国","");
        Server.server.findMovie("黑客帝国").setHeat(128);
        Server.server.shelfMovie("我是传奇","");
        Server.server.findMovie("我是传奇").setHeat(79);
        Server.server.shelfMovie("大象席地而坐","");
        Server.server.findMovie("大象席地而坐").setHeat(2133);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        if(session.getAttribute("user")==null)
            session.setAttribute("user", User.GUEST);
        session.setAttribute("server",Server.server);
        response.sendRedirect("./index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        if(session.getAttribute("user")==null)
            session.setAttribute("user", User.GUEST);
        session.setAttribute("server",Server.server);
        response.sendRedirect("./index.jsp");
    }
}
