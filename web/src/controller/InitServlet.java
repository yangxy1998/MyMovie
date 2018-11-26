package controller;

import model.User;
import util.Server;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class InitServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
        Server.createUser("username","password");
        Server.createUser("admin","admin");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        if(session.getAttribute("user")==null)
            session.setAttribute("user", User.GUEST);
        response.sendRedirect("./index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        if(session.getAttribute("user")==null)
            session.setAttribute("user", User.GUEST);
        response.sendRedirect("./index.jsp");
    }
}
