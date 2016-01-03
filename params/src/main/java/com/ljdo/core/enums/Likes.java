package com.ljdo.core.enums;

/**
 * 爱好枚举
 * @author fly
 * @create 2016-01-03 20:45
 */
public enum Likes {
    MOVIE("看电影"),
    SING("唱歌"),
    DANCE("跳舞");

    private String name;

    private Likes(String name){
        this.name = name;
    }

    public String getName(){
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
}
