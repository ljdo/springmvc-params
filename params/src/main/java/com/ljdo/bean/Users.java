package com.ljdo.bean;

import com.google.common.collect.Lists;

import java.util.List;

/**
 * 对象
 * @author fly
 * @create 2016-01-03 22:44
 */
public class Users {
    private String id;
    private List<User> users = Lists.newArrayList();

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id='" + id + '\'' +
                ", users=" + users +
                '}';
    }
}