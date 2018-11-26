package controller;

import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ChangeInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        User user= (User) session.getAttribute("user");
        String nickname=request.getParameter("nickname");
        String description=request.getParameter("description");
        String prefer=request.getParameter("prefer");
        String birth=request.getParameter("birth");
        String work=request.getParameter("work");
        user.setNickName(nickname);
        user.setDescription(description);
        user.setPrefer(prefer);
        user.setBirth(birth);
        user.setWork(work);
        response.sendRedirect("./mySpace.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
