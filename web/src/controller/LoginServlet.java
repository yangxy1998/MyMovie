package controller;

import model.User;
import util.Server;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
/**
 * 登录servlet
 */
public class LoginServlet extends HttpServlet {
    /**
     * doPost方法
     * @param request 请求
     *                需要username和password参数
     * @param response 响应
     *                 登录出错跳转欢迎页面，正常登录则跳转到主页
     *                 同时会话当中添加属性user
     * @throws ServletException 异常
     * @throws IOException 异常
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String userName=request.getParameter("username");
        String password=request.getParameter("password");
        if(userName!=null){
            User user=Server.server.findUser(userName);
            if(user==null){
                Server.server.errorMessage(Server.STATUS_USER_NOT_FOUND);
                response.sendRedirect("./Welcome.jsp");
            }
            else if(!password.equals(user.getPassword())) {
                Server.server.errorMessage(Server.STATUS_PASSWORD_ERROR);
                response.sendRedirect("./Welcome.jsp");
            }
            else{
                user.addRecord("登录","您登陆了MyMovie");
                HttpSession session=request.getSession();
                session.setAttribute("user",user);
                session.setAttribute("server",Server.server);
                response.sendRedirect("./index.jsp");
            }
        }
    }
    /**
     * doGet方法
     * 以get方法访问这个servlet，认为未登录
     * @param request 请求
     * @param response 响应
     *                 跳转到欢迎页面
     *                 在会话中添加user和server属性
     * @throws ServletException 异常
     * @throws IOException 异常
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        session.setAttribute("user",User.GUEST);
        session.setAttribute("server",Server.server);
        response.sendRedirect("./Welcome.jsp");
    }
}
