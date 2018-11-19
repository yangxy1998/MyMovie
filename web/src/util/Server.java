package util;

import model.User;

import java.util.ArrayList;
import java.util.List;

public class Server {

    //用户名重复
    public static int STATUS_DUPLICATE_USER=1;
    //用户输入的密码错误
    public static int STATUS_PASSWORD_ERROR=2;
    //两次密码不一致
    public static int STATUS_PASSWORD_NOT_CONFIRMED=3;

    //服务器上的用户列表
    public static List<User> users=new ArrayList<>();

    /**
     * 查找指定用户
     * @param userName 用户名
     * @return 用户对象，找不到则返回null
     */
    public static User findUser(String userName){
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
    public static User createUser(String userName,String password){
        if(findUser(userName)!=null)errorMessage(STATUS_DUPLICATE_USER);
        else{
            User user=new User(userName,password);
            users.add(user);
            return user;
        }
        return null;
    }

    public static void errorMessage(int status){}

}
