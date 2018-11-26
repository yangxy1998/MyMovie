package model;

import org.apache.commons.lang3.tuple.Pair;

import java.util.ArrayList;
import java.util.List;

public class User {
    //游客
    public static User GUEST=new User("Guest","");

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public User(String userName,String password){
        this.userName=userName;
        this.password=password;
        this.comments=new ArrayList<>();
    }

    public User(){}
    private String userName;
    private String password;
    private String nickName;
    private String description;
    private String prefer;
    private String birth;
    private String work;
    private List<Pair<String,String>> comments;

    public void addComment(String title,String content){
        Pair<String,String> comment=new Pair<String, String>() {
            private final String t=title;
            private final String c=content;
            @Override
            public String getLeft() {
                return t;
            }

            @Override
            public String getRight() {
                return c;
            }

            @Override
            public String setValue(String value) {
                return null;
            }
        };
        this.comments.add(comment);
    }

    public String getComments(){
        String commentString="";
        for (Pair<String,String> comment:comments) {
            commentString+="<li class=\"comment\"><h3>"+comment.getLeft()+"</h3><p>"+comment.getRight()+"</p></li>";
        }
        return commentString;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrefer() {
        return prefer;
    }

    public void setPrefer(String prefer) {
        this.prefer = prefer;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }
}
