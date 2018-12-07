package util;

import model.Movie;
import model.User;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 模拟服务器
 */
public class Server implements Serializable {

    /**
     * 是否已被初始化
     */
    public static boolean isInitialized=false;

    /**
     * 初始化服务器，装入模拟数据库的数据
     */
    public static void init(){
        isInitialized=true;
        User.GUEST.setGuest(true);
        Server.server.createUser("username","password");
        Server.server.createUser("admin","admin");
        Server.server.findUser("username").addComment("我的第一条影评",
                "人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中都会出现这样一个人，纵使尘满面，鬓如霜，也想要和他相伴到岁末晚景。我深信此画面曾被无数人精心描摹过，因为它是人们心里憧憬的最美的爱相逢。这个浪漫的“版图”，也是温暖与真挚包裹的纯粹感情，所刻画的一幅朴素人生。");
        Server.server.shelfMovie("我不是药神","");
        Server.server.findMovie("我不是药神").setHeat(2915);
        Server.server.shelfMovie("饥饿游戏","");
        Server.server.findMovie("饥饿游戏").setHeat(368);
        Server.server.shelfMovie("驯龙高手","");
        Server.server.findMovie("驯龙高手").setHeat(256);
        Server.server.shelfMovie("指环王","");
        Server.server.findMovie("指环王").setHeat(512);
        Server.server.shelfMovie("一出好戏","");
        Server.server.findMovie("一出好戏").setHeat(2048);
        Server.server.shelfMovie("碟中谍","");
        Server.server.findMovie("碟中谍").setHeat(1024);
        Server.server.shelfMovie("头号玩家","");
        Server.server.findMovie("头号玩家").setHeat(2819);
        Server.server.shelfMovie("黑客帝国","");
        Server.server.findMovie("黑客帝国").setHeat(128);
        Server.server.shelfMovie("我是传奇","");
        Server.server.findMovie("我是传奇").setHeat(79);
        Server.server.shelfMovie("大象席地而坐","");
        Server.server.findMovie("大象席地而坐").setHeat(2133);
    }

    /**
     * 模拟服务器
     */
    public static Server server=new Server();

    public static Server getServer() {
        return server;
    }

    /**
     * 用户名重复
     */
    public final static int STATUS_DUPLICATE_USER=1;
    /**
     * 用户输入的密码错误
     */
    public final static int STATUS_PASSWORD_ERROR=2;
    /**
     * 两次密码不一致
     */
    public final static int STATUS_PASSWORD_NOT_CONFIRMED=3;
    /**
     * 重复上架的电影
     */
    public final static int STATUS_DUPLICATE_MOVIE=4;

    /**
     * 未找到用户
     */
    public final static int STATUS_USER_NOT_FOUND=5;

    /**
     * 未登录状态
     */
    public final static int STATUS_NOT_LOGIN=6;

    /**
     * 数据库上的用户列表
     */

    public List<User> users=new ArrayList<>();

    /**
     * 数据库上的电影列表
     */
    public List<Movie> movies=new ArrayList<>();

    /**
     * 查找指定用户
     * @param userName 用户名
     * @return 用户对象，找不到则返回null
     */
    public User findUser(String userName){
        for (User user:users) {
            if(user.getUserName().equals(userName))return user;
        }
        return null;
    }

    /**
     * 创建一个用户
     * @param userName 用户名
     * @param password 密码
     * @return 创建的新用户，若用户名重复返回null
     */
    public User createUser(String userName,String password){
        if(findUser(userName)!=null)errorMessage(STATUS_DUPLICATE_USER);
        else{
            User user=new User(userName,password);
            user.addRecord("启航","注册成为会员","感受光影魅力，记录美好生活。美好的电影生活从这里开始~");
            users.add(user);
            return user;
        }
        return null;
    }

    /**
     * 用电影名查找电影
     * @param name 电影名
     * @return 电影对象
     */
    public Movie findMovie(String name){
        for (Movie movie:movies) {
            if(movie.getName().equals(name))return movie;
        }
        return null;
    }

    /**
     * 上架一个新电影
     * @param name 电影名
     * @param description 描述
     * @return 电影对象
     */
    public Movie shelfMovie(String name,String description){
        if(findMovie(name)!=null)errorMessage(STATUS_DUPLICATE_MOVIE);
        else{
            Movie movie=new Movie(name,description);
            movies.add(movie);
            return movie;
        }
        return null;
    }

    /**
     * 通过类型type查找电影
     * @param type 类型
     * @return 电影列表
     */
    public List<Movie> getMoviesByType(String type){
        if(type==null)return this.movies;
        else{
            List<Movie> movies=new ArrayList<>();
            for (Movie movie:this.movies) {
                if(type.equals(movie.getType()))movies.add(movie);
            }
            return movies;
        }
    }

    /**
     * 通过标签tag查找电影
     * @param tag 标签
     * @return 电影列表
     */
    public List<Movie> getMoviesByTag(String tag){
        if(tag==null)return this.movies;
        else{
            List<Movie> movies=new ArrayList<>();
            for (Movie movie:this.movies) {
                if(tag.equals(movie.getTag()))movies.add(movie);
            }
            return movies;
        }
    }

    /**
     * 获取电影列表HTML字符串
     * @return HTML字符串
     * {@link #getHtmlFromList(List)}
     */
    public String getMoviesHtml(){
        List<Movie> movieList=new ArrayList<>();
        long most=2147483647;
        while(movieList.size()<movies.size()){
            long more=0;
            Movie getMovie=null;
            for (Movie movie:movies) {
                if(movie.getHeat()>more&&movie.getHeat()<most){
                    more=movie.getHeat();
                    getMovie=movie;
                }
            }
            movieList.add(getMovie);
            most=more;
        }
        return getHtmlFromList(movieList);
    }

    /**
     * 获取电影列表HTML字符串
     * @param movies 电影列表
     * @return HTML字符串
     */
    private String getHtmlFromList(List<Movie> movies){
        String html="";
        html+="<li class=\"top3\" onclick={location.href='/movie?name="+
                movies.get(0).getName()+"'}><img class=\"award\" src=\"content/jin.png\"><p class=\"movieName\">"+
                movies.get(0).getName()+"</p><img src=\"content/fireicon.png\" class=\"hotText\"><p class=\"hot\">"+
                movies.get(0).getHeat()+"</p></li>";
        html+="<li class=\"top3\" onclick={location.href='/movie?name="+
                movies.get(1).getName()+"'}><img class=\"award\" src=\"content/yin.png\"><p class=\"movieName\">"+
                movies.get(1).getName()+"</p><img src=\"content/fireicon.png\" class=\"hotText\"><p class=\"hot\">"+
                movies.get(1).getHeat()+"</p></li>";
        html+="<li class=\"top3\" onclick={location.href='/movie?name="+
                movies.get(2).getName()+"'}><img class=\"award\" src=\"content/tong.png\"><p class=\"movieName\">"+
                movies.get(2).getName()+"</p><img src=\"content/fireicon.png\" class=\"hotText\"><p class=\"hot\">"+
                movies.get(2).getHeat()+"</p></li>";
        for(int i=3;i<10;i++){
            html+="<li class=\"top10\" onclick={location.href='/movie?name="+
                    movies.get(i).getName()+"'}><p>"+(i+1)+".</p><p class=\"movieName\">"+
                    movies.get(i).getName()+"</p></span><img src=\"content/fireicon.png\" class=\"hotText\"><p class=\"hot\">"+
                    movies.get(i).getHeat()+"</p></li>";
        }
        return html;
    }

    /**
     * 向网页提示错误信息
     * @param status 服务器状态
     */
    public void errorMessage(int status){
        switch (status){
            case STATUS_PASSWORD_ERROR:
                server.alert="密码错误！";
                break;
            case STATUS_PASSWORD_NOT_CONFIRMED:
                server.alert="两次密码不一致！";
                break;
            case STATUS_DUPLICATE_USER:
                server.alert="已经存在用户名一致的用户，请重新输入用户名！";
                break;
            case STATUS_USER_NOT_FOUND:
                server.alert="未找到用户！";
                break;
            case STATUS_NOT_LOGIN:
                server.alert="您还没有登录，请登录！";
                break;
            default:
                server.alert="系统错误，请重试！";
        }
    }

    /**
     * 将错误信息转为响应里面的JavaScript alert函数
     * @return 目标JavaScript字符串
     * {@link #errorMessage(int)}
     */
    public String getAlert() {
        if(server.alert==null)return "";
        String alert=server.alert;
        server.alert=null;
        return "<script>alert(\""+alert+"\")</script>";
    }

    //错误提示
    private String alert=null;


}
