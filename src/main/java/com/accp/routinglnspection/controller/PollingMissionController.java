package com.accp.routinglnspection.controller;


import com.accp.routinglnspection.biz.PollingMissionBiz;
import com.accp.routinglnspection.entity.Circuit;
import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.PollingMission;
import com.accp.routinglnspection.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/PollingMission")
public class PollingMissionController {
    @Resource
    private PollingMissionBiz pollingMissionBiz;
    @RequestMapping("/showpollingMission")//列表
    public String showpollingMission(Model model, PollingMission pollingMission,Integer pageIndex){
        if(pageIndex==null){
            pageIndex=1;
        }
        pollingMission.setPageNo(pageIndex);
        pollingMission.setPageSize(2);
        if(null!=pollingMission.getCircuit()&&pollingMission.getCircuit().getcNumber().equals("")){
            pollingMission.setCircuit(null);
        }
        if(null!=pollingMission.getRelease()&&pollingMission.getRelease().getuName().equals("")){
            pollingMission.setRelease(null);
        }
        Pager<PollingMission> pollingMissionPager=pollingMissionBiz.queryPollingMission(pollingMission);
        model.addAttribute("pollingMissionPager",pollingMissionPager);
        model.addAttribute("pollingMission",pollingMission);
        return "inspectionTask_insAndDis";
    }
    @RequestMapping("/showpollingMissionId")//查看
    public String showpollingMissionId(PollingMission pollingMission,Model model){
        pollingMission.setPageNo(1);
        pollingMission.setPageSize(2);
        pollingMission=pollingMissionBiz.queryPollingMission(pollingMission).getDatas().get(0);
        model.addAttribute("pollingMissionView",pollingMission);
        return "inspectionTask_ins_view";
    }

    @RequestMapping("/addShowpollingMission")
    public String addShowpollingMission(Model model){
        List<Circuit> listCircuit=pollingMissionBiz.queryCircuit(0);
        List<User> listUser=pollingMissionBiz.queryUser();
        model.addAttribute("addlistCircuit",listCircuit);
        model.addAttribute("addlistUser",listUser);
        return "inspectionTask_add";
    }

    @RequestMapping("/assignShowpollingMission")
    public String assignShowpollingMission(Model model){
        List<User> listUser=pollingMissionBiz.queryUser();
        model.addAttribute("assignlistUser",listUser);
        return "inspectionTask_assign";
    }


    @RequestMapping("/addpollingMission")
    public String addpollingMission(Model model, PollingMission pollingMission, HttpSession session){
        User login =(User)session.getAttribute("Login");
        pollingMission.setReleaseUid(login.getId());
        pollingMission.setReleaseTime(new Date());
        if(pollingMission.getPollingUid()==0){
            pollingMission.setPmState(1);
        }else{
            pollingMission.setPmState(2);
        }
        pollingMission.setState(1);
        int num=pollingMissionBiz.addPollingMission(pollingMission);
        if(num>0){
           return showpollingMission(model,new PollingMission(),null);
        }else{
           return addShowpollingMission(model);
        }
    }
    @RequestMapping("/addShowpollingMissionid")
    @ResponseBody
    public Circuit addShowpollingMissionid(Model model,Integer id){
        Circuit circuit=null;
        if(pollingMissionBiz.queryCircuit(id).size()>0){
             circuit=pollingMissionBiz.queryCircuit(id).get(0);
        }
        return circuit;
    }
}
