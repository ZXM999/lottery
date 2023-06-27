package cn.dbw.luckwheel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @RequestMapping("manager")
    public String manager(){
        return "luckmanager.html";
    }

    @RequestMapping("login")
    public String login(){
        return "login.html";
    }
}
