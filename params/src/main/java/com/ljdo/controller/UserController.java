package com.ljdo.controller;

import com.google.common.base.Joiner;
import com.ljdo.bean.User;
import com.ljdo.bean.Users;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * Created by fly on 2016/1/3.
 */
@Controller
public class UserController {

    @RequestMapping("index")
    public ModelAndView index(){
        ModelAndView model = new ModelAndView("index");
        model.addObject("index","fly , i am coming!");
        return model;
    }

    /**
     * 参数
     * @param name
     * @param age
     * @return
     */
    @RequestMapping("test01")
    @ResponseBody
    public String test01(String name,Integer age){
        return "name:"+name+"    age:"+age;
    }

    /**
     * 参数
     * @param name
     * @param age
     * @return
     */
    @RequestMapping("test02/{name}/{age}")
    @ResponseBody
    public String test02(@PathVariable("name") String name,@PathVariable("age") Integer age){
        return "name:"+name+"    age:"+age;
    }

    /**
     * 对象
     * @param user
     * @return
     */
    @RequestMapping("test03")
    @ResponseBody
    public String test03(User user){
        return user.toString();
    }

    /**
     * 对象
     * @param user
     * @return
     */
    @RequestMapping("test04")
    @ResponseBody
    public String test04(@RequestBody User user){
        return user.toString();
    }

    /**
     * 字符串集合
     * @param list
     * @return
     */
    @RequestMapping("test05")
    @ResponseBody
    public String test05(@RequestParam("list[]") List<String> list){
        return list.toString();
    }

    /**
     * 对象集合
     * @param users
     * @return
     */
    @RequestMapping("test06")
    @ResponseBody
    public String test06(@RequestBody List<User> users){
        return users.toString();
    }

    /**
     * 对象数组
     * @param users
     * @return
     */
    @RequestMapping("test07")
    @ResponseBody
    public String test07(@RequestBody User[] users){
        return users.toString();
    }

    /**
     * map集合
     * @param list
     * @return
     */
    @RequestMapping("test08")
    @ResponseBody
    public String test08(@RequestBody List<Map<String,Object>> list){
        return list.toString();
    }

    /**
     * 对象中有对象集合
     * @param list
     * @return
     */
    @RequestMapping("test09")
    @ResponseBody
    public String test09(@RequestBody Users list){
        return list.toString();
    }

    /**
     * 字符串数组
     * @param str
     * @return
     */
    @RequestMapping("test10")
    @ResponseBody
    public String test10(@RequestBody String[] str){
        return str.toString();
    }

    /**
     * PathVariable 奇葩的Integer数组传递方式（慎用）
     * @param ids
     * @return
     */
    @RequestMapping("test11/{ids}")
    @ResponseBody
    public String test10(@PathVariable Integer[] ids){
        return Joiner.on(",").join(ids);
    }
}