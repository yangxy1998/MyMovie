package model;

import org.apache.commons.lang3.tuple.Pair;

import java.util.ArrayList;
import java.util.List;
//电影类
public class Movie {
    //电影名
    private String name;
    //电影职员 左职位 右名字
    private List<Pair<String,String>> members;
    //电影简介
    private String description;
    //类型
    private String type;
    //特性
    private String tag;
    //电影热度
    private int heat;
    //影评
    private List<Pair<String,String>> comments;

    public Movie(String name,String description){
        this.name=name;
        this.description=description;
        this.comments=new ArrayList<>();
    }

    public Movie(){
        this.comments=new ArrayList<>();
    }

    //添加一个职员
    public void addMember(String position,String name){
        Pair<String,String> member=new Pair<String, String>() {
            @Override
            public String getLeft() {
                return position;
            }

            @Override
            public String getRight() {
                return name;
            }

            @Override
            public String setValue(String value) {
                return null;
            }
        };
        this.members.add(member);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getHeat() {
        return heat;
    }

    public void setHeat(int heat) {
        this.heat = heat;
    }

    public List<Pair<String, String>> getMembers() {
        return members;
    }

    public void setMembers(List<Pair<String, String>> members) {
        this.members = members;
    }

    public void click(){
        this.heat+=1;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    //添加一条影评
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

    //获取所有影评
    public String getComments(){
        String commentString="";
        if(comments!=null)
            for (Pair<String,String> comment:comments) {
                commentString+="<li class=\"comment\"><h3>"+comment.getLeft()+"</h3><p>"+comment.getRight()+"</p></li>";
            }
        return commentString;
    }

}
