package com.accp.routinglnspection.controller;

import com.accp.routinglnspection.biz.RoleBiz;
import com.accp.routinglnspection.entity.Role;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;


@Controller
@RequestMapping("/role")
public class RoleController {
    @Resource(name = "roleBiz")
    private RoleBiz roleBiz;



    //查询所有
    @RequestMapping("/queryRole")
        public String queryRole(@RequestParam(required = false,defaultValue = "1") int pageNo,
                                 @RequestParam(required = false,defaultValue = "-1") int rState,String rName,Model m,Integer pageIndex){
        if(pageIndex==null){
            pageIndex =1;
        }

        m.addAttribute("pag",roleBiz.queryRole(pageIndex,4,rName,rState));

        return "roleManage";
    }

    //需改前查询单个
    @RequestMapping("/queryRoleId")
    public String queryRoleId(Model model,int id){
           model.addAttribute("RoleId",roleBiz.queryRoleId(id)) ;
            return "role_modify";
    }

    //修改
    @RequestMapping("/update")
    public String updateRole(Model model, Role role){
            roleBiz.updateRole(role);
            return queryRole(1,-1,null,model,1);
    }

    //用户添加
    @RequestMapping("/addRole")
    public  String addRole(Model model,Role role){
        role.setEstablishDate(new Date());
        roleBiz.addrole(role);
        return queryRole(1,-1,null,model,1);
}
    //用户删除
    @RequestMapping("/deleteRole")
    public String deleteRole(HttpServletResponse resp, int id, Model m){
        int result=roleBiz.deleteRole(id);
        PrintWriter out=null;
        try {
            out = resp.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if(result>0){
            out.print("{\"delResult\":\"true\"}");
            out.flush();
            out.close();
        }else{
            out.print("{\"delResult\":\"false\"}");
            out.flush();
            out.close();
        }

        return null;

    }
}
