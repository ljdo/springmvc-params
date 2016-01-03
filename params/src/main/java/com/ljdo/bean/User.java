package com.ljdo.bean;

import com.ljdo.core.enums.Likes;

/**
 * 用户实体 （简单对象）
 * @author fly
 * @create 2016-01-03 21:01
 */
public class User {

    private String name;
    private Integer age;
    private Float height;
    private boolean hasGirl;
    private Likes likes;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Float getHeight() {
        return height;
    }

    public void setHeight(Float height) {
        this.height = height;
    }

    public boolean isHasGirl() {
        return hasGirl;
    }

    public void setHasGirl(boolean hasGirl) {
        this.hasGirl = hasGirl;
    }

    public Likes getLikes() {
        return likes;
    }

    public void setLikes(Likes likes) {
        this.likes = likes;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", height=" + height +
                ", hasGirl=" + hasGirl +
                ", likes=" + likes +
                '}';
    }
}