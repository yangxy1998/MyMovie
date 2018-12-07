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
        if(!Server.isInitialized)Server.init();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
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
