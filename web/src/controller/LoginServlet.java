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
//登陆servlet
public class LoginServlet extends HttpServlet {

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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        session.setAttribute("user",User.GUEST);
        session.setAttribute("server",Server.server);
        response.sendRedirect("./Welcome.jsp");
    }
}
