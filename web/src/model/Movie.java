package model;

import org.apache.commons.lang3.tuple.Pair;

import java.util.List;

public class Movie {

    private String name;

    private List<Pair<String,String>> members;

    private String description;

    public Movie(String name,String description){
        this.name=name;
        this.description=description;
    }

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
}
