package controller;

import model.User;
import util.Server;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//注册
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String password_2=request.getParameter("password_2");
        if(Server.server.findUser(username)!=null){
            Server.server.errorMessage(Server.STATUS_DUPLICATE_USER);
            response.sendRedirect("./Welcome.jsp");
        }
        else if(password!=null&&password.equals(password_2)){
            Server.server.createUser(username,password);
            User newUser=Server.server.findUser(username);
            //请求重定向到首页
            HttpSession session=request.getSession();
            session.setAttribute("user",newUser);
            session.setAttribute("server",Server.server);
            response.sendRedirect("./index.jsp");
        }
        else{
            Server.server.errorMessage(Server.STATUS_PASSWORD_NOT_CONFIRMED);
            response.sendRedirect("./Welcome.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
