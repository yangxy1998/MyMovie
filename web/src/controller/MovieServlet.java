package controller;

import model.Movie;
import model.User;
import util.Server;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//电影页面
public class MovieServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name=request.getParameter("name");
        if(name!=null&&!("").equals(name)){
            HttpSession session=request.getSession();
            User user=(User) session.getAttribute("user");
            Movie movie= Server.server.findMovie(name);
            if(!User.GUEST.equals(user)&&user!=null)
                user.addRecord("浏览","浏览了电影："+name);
            Server.server.findMovie(name).click();
            request.setAttribute("movie",movie);
            response.sendRedirect("./Movie.jsp");
        }
    }
}
