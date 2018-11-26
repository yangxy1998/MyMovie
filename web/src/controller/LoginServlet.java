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

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName=request.getParameter("username");
        String password=request.getParameter("password");
        if(userName!=null){
            User user=Server.findUser(userName);
            if(!password.equals(user.getPassword()))
                Server.errorMessage(Server.STATUS_PASSWORD_ERROR);
            else{
                HttpSession session=request.getSession();
                session.setAttribute("user",user);
                response.sendRedirect("./index.jsp");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
