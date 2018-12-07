package controller;

import model.Movie;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
/**
 * 添加影评servlet
 */
public class AddCommentServlet extends HttpServlet {
    /**
     * doPost方法
     * 会话需要user、movie参数
     * @param request 请求
     *                需要参数title和content
     * @param response 响应
     *                 如果movie参数为null，表明是个人中心页面
     *                 否则，跳转到电影页面，movie.jsp会自动根据movie参数调整编码
     * @throws ServletException 异常
     * @throws IOException 异常
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        HttpSession session=request.getSession();
        User user= (User) session.getAttribute("user");
        Movie movie=(Movie) session.getAttribute("movie");
        String title=request.getParameter("title");
        String content=request.getParameter("content");
        user.addComment(title,content);
        if(movie!=null){//如果在电影页面
            movie.addComment(title,content);
            response.sendRedirect("./Movie.jsp");
        }
        else{//在个人中心页面
            response.sendRedirect("./mySpace.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
