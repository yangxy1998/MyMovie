package model;

import util.Util;

public class Record {

    private String type;
    private String date;
    private String title;
    private String content;

    public Record(){}

    public Record(String type, String title, String content) {
        this.type = type;
        this.date = Util.getDate();
        this.title = title;
        this.content = content;
    }
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
