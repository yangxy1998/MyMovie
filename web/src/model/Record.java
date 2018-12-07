package model;

import util.Util;

/**
 * 使用记录条目类
 */
public class Record {

    /**
     * 条目类型
     */
    private String type;
    /**
     * 记录时间
     */
    private String date;
    /**
     * 标题
     */
    private String title;
    /**
     * 内容
     */
    private String content;

    public Record(){}

    /**
     * 记录的构造函数
     * @param type 类型
     * @param title 标题
     * @param content 内容
     */
    public Record(String type, String title, String content) {
        this.type = type;
        this.date = Util.getDate();
        this.title = title;
        this.content = content;
    }

    /**
     * 创建一个无内容记录
     * @param type 类型
     * @param title 标题
     */
    public Record(String type,String title){
        this.type=type;
        this.date= Util.getDate();
        this.content="";
        this.title=title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
