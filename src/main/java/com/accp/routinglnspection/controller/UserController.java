package com.accp.routinglnspection.controller;

import com.accp.routinglnspection.biz.UserBiz;
import com.accp.routinglnspection.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @Resource
    private UserBiz userBiz;
    @RequestMapping("/log")
    public String Login(Model m, String account, String password, HttpSession session){
        User login=userBiz.Login(account,password);
        if(login!=null){
            session.setAttribute("Login",login);
            return "index";
        }else {
            return "login";
        }
    }

}
