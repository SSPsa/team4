package com.accp.routinglnspection.controller;

import com.accp.routinglnspection.biz.FlawMissionBiz;
import com.accp.routinglnspection.entity.FlawMission;
import com.accp.routinglnspection.entity.Pager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Date;

@Controller
public class FlawMissionController {
    @Resource
    private FlawMissionBiz flawMissionBiz;

    //缺陷任务制定与分配的分页包括按条件筛选
    @RequestMapping("/flawMission/flawMissionPager")
    public String flawMissionPager(Model m,String pageIndex, String fmNumber, String fmName, String fmState, String principalUid, Date startTime, Date endTime){
//初始化首页
       if (pageIndex==null|| pageIndex.equals("")){
        pageIndex="1";
    }
//    初始化任务状态
    if (fmState==null||fmState.equals("")){
        fmState="0";
    }
//   初始化任务负责人
    if(principalUid==null||principalUid.equals("")){
        principalUid="0";
    }
        Pager<FlawMission> flawMissionPager = flawMissionBiz.queryFlawMisPager(Integer.parseInt(pageIndex), 1, fmNumber, fmName, Integer.parseInt(fmState), Integer.parseInt(principalUid),startTime, endTime);
//       对分页的集合进行判断
    if(flawMissionPager!=null){
           m.addAttribute("flawMissionPager",flawMissionPager);
           return "solveTask_formAndDist";
       }else{
           return null;
       }
    }

    //缺陷任务制定与分配的查看
    @RequestMapping("/flawMission/flawMissionView")
    public String flawMissionView(Model m,String fwId){
        FlawMission flawMission = flawMissionBiz.queryFlawMissionOne(Integer.parseInt(fwId));
        if(flawMission!=null){
            m.addAttribute("flawMission",flawMission);
            return "solveTask_form_view";
        }else{
            return null;
        }
    }

    // 制定缺陷任务
    @RequestMapping("/flawMission/flawMissionAdd")
    public String flawMissionAdd(Model m,FlawMission flawMission){
        flawMission.setfId(5);
        flawMission.setFmState(1);
        flawMissionBiz.addFlawMission(flawMission);
        return flawMissionPager(m,null,null,null,null,null,null,null);
    }

    //到修改缺陷任务的页面
    @RequestMapping("/flawMission/toFlawMissionModify")
    public String toFlawMissionModify(Model m,String fwId){
        FlawMission flawMission = flawMissionBiz.queryFlawMissionOne(Integer.parseInt(fwId));
        if(flawMission!=null){
            m.addAttribute("flawMission",flawMission);
            return "solveTask_modify";
        }else{
            return null;
        }
    }
    //    修改成功
    @RequestMapping("/flawMission/flawMissionModifySave")
    public String flawMissionModifySave(Model m, FlawMission flawMission, String id){
        flawMission.setId(Integer.parseInt(id));
        flawMissionBiz.updateFlawMission(flawMission);
        return flawMissionPager(m,null,null,null,null,null,null,null);
    }
}
