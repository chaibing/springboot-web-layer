package com.yr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author: chaiyingibng
 * @create: 2019-09-02 14:38
 **/
@Controller
public class IndexController {


   @RequestMapping("/index")
   public String index() {

       return "/index";
   }

    @RequestMapping("/userEdit")
    public String userEdit() {
        return "/userEdit";
    }

    @RequestMapping("/pwd")
    public String pwd() {

        return "/pwd";
    }

    @RequestMapping("/users")
    public String users() {

        return "/proxy/proxyTeacher";
    }

    @RequestMapping("/userFaceEdit")
    public String userFaceEdit() {

        return "/userFaceEdit";
    }

    @RequestMapping("/studentAdd")
    public String studentAdd() {
        return "/studentAdd";
    }

    @RequestMapping("/studentEdit")
    public String studentEdit() {

        return "/studentEdit";
    }

    @RequestMapping("/studentInfo")
    public String studentInfo() {
        return "/studentInfo";
    }

    @RequestMapping("/login")
    public String login() {
        return "/login";
    }

    @RequestMapping("/register")
    public String register() {
        return "/register";
    }

    @RequestMapping("/proxyTeacher")
    public String proxyTeacher() {
        return "/proxy/proxyTeacher";
    }


}
