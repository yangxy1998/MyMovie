package controller;

import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
/**
 * 修改个人信息servlet
 */
public class ChangeInfoServlet extends HttpServlet {
    /**
     * doPost方法
     * 会话当中应有user参数
     * @param request 请求
     *                请求当中需要参数nickname、description、prefer、birth、work
     * @param response 响应
     *                 返回个人主页页面
     * @throws ServletException 异常
     * @throws IOException 异常
     */
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
