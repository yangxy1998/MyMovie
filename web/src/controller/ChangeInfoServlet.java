package controller;

import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//修改个人信息的servlet
public class ChangeInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        HttpSession session=request.getSession();
        User user= (User) session.getAttribute("user");
        String nickname=request.getParameter("nickname");
        String description=request.getParameter("description");
        String prefer=request.getParameter("prefer");
        String birth=request.getParameter("birth");
        String work=request.getParameter("work");
        String content="原昵称 "+user.getNickName()+" 修改为 "+nickname+
                " 原简介 "+user.getDescription()+" 修改为 "+description+
                " 原爱好 "+user.getPrefer()+" 修改为 "+prefer+
                " 原生日 "+user.getBirth()+" 修改为 "+birth+
                " 原工作 "+user.getWork()+" 修改为 "+work;
        user.addRecord("修改","修改个人信息",content);
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
