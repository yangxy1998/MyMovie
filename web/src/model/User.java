package model;

import org.apache.commons.lang3.tuple.Pair;

import java.util.ArrayList;
import java.util.List;

public class User {
    //游客
    public static User GUEST=new User("游客","");

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
        this.records=new ArrayList<>();
    }

    public User(){}
    //用户名
    private String userName;
    //密码
    private String password;
    //昵称
    private String nickName;
    //简介
    private String description;
    //爱好
    private String prefer;
    //生日
    private String birth;
    //工作
    private String work;
    //影评
    private List<Pair<String,String>> comments;

    private List<Record> records;

    //添加影评
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
        if(content.length()>40)
            this.addRecord("评论","添加了影评："+title,content.substring(0,40)+"...");
        else
            this.addRecord("评论","添加了影评："+title,content);
        this.comments.add(comment);
    }

    public void addRecord(String type,String title,String content){
        Record record=new Record(type,title,content);
        this.records.add(record);
    }

    public void addRecord(String type,String title){
        Record record=new Record(type,title);
        this.records.add(record);
    }

    //获取所有影评
    public String getComments(){
        String commentString="";
        for (Pair<String,String> comment:comments) {
            commentString+="<li class=\"comment\"><h3>"+comment.getLeft()+"</h3><p>"+comment.getRight()+"</p></li>";
        }
        return commentString;
    }

    public List<Record> getRecords(){
        return records;
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
