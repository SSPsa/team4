package com.accp.routinglnspection.controller;

import com.accp.routinglnspection.biz.FlawBiz;
import com.accp.routinglnspection.biz.FlawMissionBiz;
import com.accp.routinglnspection.biz.UserBiz;
import com.accp.routinglnspection.entity.Flaw;
import com.accp.routinglnspection.entity.FlawMission;
import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Controller
public class FlawMissionController {
    @Resource
    private FlawMissionBiz flawMissionBiz;
    @Resource
    private UserBiz userBiz;
    @Resource
    private FlawBiz flawBiz;

    //缺陷任务制定与分配的分页包括按条件筛选
    @RequestMapping("/flawMission/flawMissionForPager")
    public String flawMissionForPager(Model m,String pageIndex, String fmNumber, String fmName, String fmState, String principalUid, Date startTime, Date endTime) {
//初始化首页
        if (pageIndex == null || pageIndex.equals("")) {
            pageIndex = "1";
        }
//    初始化任务状态
        if (fmState == null || fmState.equals("")) {
            fmState = "0";
        }
//   初始化任务负责人
        if (principalUid == null || principalUid.equals("")) {
            principalUid = "0";
        }

        Pager<FlawMission> flawMissionPager = flawMissionBiz.queryFlawMisPager(Integer.parseInt(pageIndex), 2, fmNumber, fmName, Integer.parseInt(fmState), 0, Integer.parseInt(principalUid), startTime, endTime,1,2);

        //       对分页的集合进行判断
    if(flawMissionPager!=null){
               m.addAttribute("flawMissionPager",flawMissionPager);
               m.addAttribute("fmNumber",fmNumber);
               m.addAttribute("fmName",fmName);
               m.addAttribute("fmState",fmState);
               m.addAttribute("startTime",startTime);
               m.addAttribute("endTime",endTime);
               return "solveTask_formAndDist";
       }else{
           return null;
       }

    }
   //缺陷任务执行与回执的分页包括条件筛选
    @RequestMapping("/flawMission/flawMissionExcePager")
    public String flawMissionExcePager(Model m,String pageIndex, String fmNumber,String fmState,String receipts, Date startTime, Date endTime){
        //初始化首页
        if (pageIndex==null|| pageIndex.equals("")){
            pageIndex="1";
        }
//    初始化任务状态
        if (fmState==null||fmState.equals("")){
            fmState="0";
        }
        //初始化工作单据
        if (receipts==null||receipts.equals("")){
            receipts="0";
        }

        Pager<FlawMission> flawMissionPager = flawMissionBiz.queryFlawMisPager(Integer.parseInt(pageIndex), 2, fmNumber, null, Integer.parseInt(fmState),Integer.parseInt(receipts),0,startTime, endTime,3,5);

        if(flawMissionPager!=null){
            m.addAttribute("flawMissionPager",flawMissionPager);
             m.addAttribute("fmNumber",fmNumber);
            m.addAttribute("receipts",receipts);
            m.addAttribute("fmState",fmState);
             m.addAttribute("startTime",startTime);
            m.addAttribute("endTime",endTime);
        return "solveTask_executAndReceipt";
    }else {
        return null;
    }
    }


    //缺陷任务制定与分配的查看
    @RequestMapping("/flawMission/flawMissionView")
    public String flawMissionView(Model m,String fwId){
        FlawMission flawMission = flawMissionBiz.queryFlawMissionOne(Integer.parseInt(fwId));
        List<Flaw> flaws = flawBiz.queryFlawList();
        if(flawMission!=null && flaws!=null){
            m.addAttribute("flawMission",flawMission);
            m.addAttribute("flaws",flaws);
            return "solveTask_form_view";
        }else{
            return null;
        }
    }

    // 缺陷任务制定与分配的制定缺陷任务
    @RequestMapping("/flawMission/flawMissionAdd")
    public String flawMissionAdd(Model m,FlawMission flawMission){
        flawMission.setfId(5);
        flawMission.setFmState(1);
        flawMissionBiz.addFlawMission(flawMission);
        return flawMissionForPager(m,null,null,null,null,null,null,null);
    }

    //到制定与分配的修改缺陷任务的页面
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
    //    制定与分配的修改成功
    @RequestMapping("/flawMission/flawMissionModifySave")
    public String flawMissionModifySave(Model m, FlawMission flawMission, String id){
        flawMission.setId(Integer.parseInt(id));
        flawMissionBiz.updateFlawMission(flawMission);
        return flawMissionForPager(m,null,null,null,null,null,null,null);
    }

//    消缺查询的分页
    @RequestMapping("/flawMission/flawMissionPager")
    public String flawMissionPager(Model m,String pageIndex,String fmNumber,String fmState,String fId,String grade,Date startTime,Date endTime){
        //初始化首页
        if (pageIndex==null|| pageIndex.equals("")){
            pageIndex="1";
        }
//    初始化任务状态
        if (fmState==null||fmState.equals("")){
            fmState="0";
        }
        if (fId==null||fId.equals("")){
            fId="0";
        }
        if (grade==null||grade.equals("")){
            grade="0";
        }
        Pager<FlawMission> flawMissionPager= flawMissionBiz.queryFlawMisPager2(Integer.parseInt(pageIndex), 2, fmNumber, Integer.parseInt(fmState), Integer.parseInt(fId), Integer.parseInt(grade), startTime, endTime);
            if(flawMissionPager!=null){
                m.addAttribute("flawMissionPager",flawMissionPager);
                m.addAttribute("fmNumber",fmNumber);
                m.addAttribute("fmState",fmState);
                m.addAttribute("fId",fId);
                m.addAttribute("grade",grade);
                m.addAttribute("startTime",startTime);
                m.addAttribute("endTime",endTime);
                return "solve_Query";
            }else{
                return null;
            }

    }

//    制定与分配的分配消缺员
    @RequestMapping("/flawMission/flawMissionAssign")
    public String flawMissionAssign(Model m){
//        待选消缺员
        List<User> toBeSelectedDefect = userBiz.queryToBeSelectedDefect();
//        已选消缺员
        List<User> selectedDefect = userBiz.querySelectedDefect();
//        分别进行判断
        if(toBeSelectedDefect!=null && selectedDefect!=null){
            m.addAttribute("toBeSelectedDefect",toBeSelectedDefect);
            m.addAttribute("selectedDefect",selectedDefect);
            return "solveTask_assign";
        }else{
            return null;
        }
    }

    @RequestMapping("/flawMission/flawMissionExecView")
    public String flawMissionExecView(Model m,String fwId){
        FlawMission flawMission = flawMissionBiz.queryFlawMissionOne(Integer.parseInt(fwId));
        if(flawMission!=null){
            m.addAttribute("flawMission",flawMission);
            return "solveTask_execute_view";
        }else{
            return null;
        }

    }
}
