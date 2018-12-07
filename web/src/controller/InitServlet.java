package controller;

import model.User;
import util.Server;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
/**
 * 初始化servlet
 */
public class InitServlet extends HttpServlet {

    /**
     * 用于初始化服务器并加载数据库
     * @throws ServletException
     */
    @Override
    public void init() throws ServletException {
        super.init();
        if(!Server.isInitialized)Server.init();
    }

    /**
     * doPost方法
     * 会话当中应有user参数
     * @param request 请求
     *                该请求无参数
     * @param response 响应
     *                 回到初始页面，如果没有user对象就会生成一个游客user对象
     * @throws ServletException 异常
     * @throws IOException 异常
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        HttpSession session=request.getSession();
        if(session.getAttribute("user")==null)
            session.setAttribute("user", User.GUEST);
        session.setAttribute("server",Server.server);
        response.sendRedirect("./index.jsp");
    }

    /**
     * doGet方法
     * 会话当中应有user参数
     * @param request 请求
     *                该请求无参数
     * @param response 响应
     *                 回到初始页面，如果没有user对象就会生成一个游客user对象
     * @throws ServletException 异常
     * @throws IOException 异常
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        if(session.getAttribute("user")==null)
            session.setAttribute("user", User.GUEST);
        session.setAttribute("server",Server.server);
        response.sendRedirect("./index.jsp");
    }
}
