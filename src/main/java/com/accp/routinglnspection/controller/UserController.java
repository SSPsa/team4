package com.accp.routinglnspection.controller;

import com.accp.routinglnspection.biz.RoleBiz;
import com.accp.routinglnspection.biz.UserBiz;
import com.accp.routinglnspection.entity.Role;
import com.accp.routinglnspection.entity.User;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.sun.xml.internal.ws.resources.HttpserverMessages;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource(name="userBiz")
    private UserBiz userBiz;
    @Resource(name = "roleBiz")
    private RoleBiz roleBiz;
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
    @RequestMapping("/userpage")                  //查询
    public String userpage(Model m){
        m.addAttribute("use",userBiz.Query());
        return "userManage";

    }
    @RequestMapping("/add")              //跳转到查询
    public String add(Model m){
        m.addAttribute("role",roleBiz.cha());
        return "user_add";
    }
    @RequestMapping("/useradd")      //新增
    public String useradd(Model m,User u){
        userBiz.adduser(u);
        return queryUser(1,-1,null, m,1);
    }
    @RequestMapping("/updateId")//修改之前查找id
    public String updateId(Model model,int id){
        User user = userBiz.QueryId(id);
        model.addAttribute("Userid",userBiz.QueryId(id));
        model.addAttribute("role",roleBiz.cha());
        return "user_modify";
    }
    @RequestMapping("/update")//修改
    public String update(Model model,User user){

        int update=userBiz.updateuser(user);
        if(update>0){
            return queryUser(1,-1,null,model,1);
        }else {
            return null;
        }
    }


    @RequestMapping("/Del") //删除
    public String Del(String id,HttpServletResponse resp)throws IOException{
        PrintWriter out = resp.getWriter();
        int delete=userBiz.DelUser(Integer.parseInt(id));
        if(delete>0){
            out.print(1);
        }else {
            out.print(0);
        }
        out.flush();
        out.close();
        return null;
    }
    @RequestMapping("/queryUser")
    public String queryUser(@RequestParam(required = false,defaultValue = "1")int pageNo,
                            @RequestParam(required = false,defaultValue = "-1")int ustate,String uName,Model m,Integer pageIndex){
        if(pageIndex==null){
            pageIndex=1;
        }
        m.addAttribute("pag",userBiz.queryPager(pageIndex,4,uName,ustate));
        return "userManage";
    }

}
