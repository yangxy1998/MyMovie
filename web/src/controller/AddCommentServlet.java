package controller;

import model.Movie;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//添加评论
public class AddCommentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
