package com.accp.routinglnspection.controller;


import com.accp.routinglnspection.biz.PollingMissionBiz;
import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.PollingMission;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

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
       return "";
    }
}
