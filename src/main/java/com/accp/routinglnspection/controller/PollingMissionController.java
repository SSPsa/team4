package com.accp.routinglnspection.controller;


import com.accp.routinglnspection.biz.PollingMissionBiz;
import com.accp.routinglnspection.entity.*;
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
    public String showpollingMission(Model model, PollingMission pollingMission, Integer pageIndex){
        if(pageIndex==null){
            pageIndex=1;
        }
        pollingMission.setPageNo(pageIndex);
        pollingMission.setPageSize(3);
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
    public String showpollingMissionId(PollingMission pollingMission, Model model){
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
    public String assignShowpollingMission(Model model,int id){
        List<User> listUser=pollingMissionBiz.queryUser();
        model.addAttribute("asslistUser",listUser);
        model.addAttribute("pmid",id);
        return "inspectionTask_assign";
    }
    @RequestMapping("/updatepollingMissionpmState")//分配巡检员
    public String updatepollingMissionpmState(Model model,PollingMission pollingMission){
        pollingMission.setPmState(2);
        pollingMission.setState(-1);
      int num=pollingMissionBiz.updatePollingMission(pollingMission);
        if(num>0){
            return showpollingMission(model,new PollingMission(),null);
        }else{
            return addShowpollingMission(model);
        }
    }

    @RequestMapping("/shwoModifyPollingMission")//修改查看
    public String modifypollingMission(Model model,PollingMission pollingMission){

        List<Circuit> listCircuit=pollingMissionBiz.queryCircuit(0);
        List<User> listUser=pollingMissionBiz.queryUser();


        pollingMission.setPageNo(1);
        pollingMission.setPageSize(2);
        pollingMission=pollingMissionBiz.queryPollingMission(pollingMission).getDatas().get(0);
        model.addAttribute("modifyMissionView",pollingMission);
        model.addAttribute("modifyCircuit",listCircuit);
        model.addAttribute("modifyUser",listUser);
        return "inspectionTask_modify";
    }


    @RequestMapping("/updatepollingMission")//修改
    public String updatepollingMission(Model model,PollingMission pollingMission){
        if(pollingMission.getPollingUid()==0){
            pollingMission.setPmState(1);
        }else{
            pollingMission.setPmState(2);
        }
        pollingMission.setState(-1);
        int num=pollingMissionBiz.updatePollingMission(pollingMission);
        if(num>0){
            return showpollingMission(model,new PollingMission(),null);
        }else{
            return addShowpollingMission(model);
        }
    }

    @RequestMapping("/addpollingMission")//添加
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
    public Circuit addShowpollingMissionid(Model model, Integer id){
        Circuit circuit=null;
        if(pollingMissionBiz.queryCircuit(id).size()>0){
             circuit=pollingMissionBiz.queryCircuit(id).get(0);
        }
        return circuit;
    }

  @RequestMapping("/deletePollinMission")
  @ResponseBody
  public Integer deletePollinMission(int id){
        int num=pollingMissionBiz.deletePollingMission(id);
        return num;
  }



    @RequestMapping("/showpollingMissionReceipt")//列表
    public String showpollingMissionReceipt(Model model, PollingMission pollingMission, Integer pageIndex){
        if(pageIndex==null){
            pageIndex=1;
        }
        pollingMission.setState(5);
        pollingMission.setPageNo(pageIndex);
        pollingMission.setPageSize(3);
        if(null!=pollingMission.getCircuit()&&pollingMission.getCircuit().getcNumber().equals("")){
            pollingMission.setCircuit(null);
        }
        if(null!=pollingMission.getRelease()&&pollingMission.getRelease().getuName().equals("")){
            pollingMission.setRelease(null);
        }
        Pager<PollingMission> pollingMissionPager=pollingMissionBiz.queryPollingMission(pollingMission);
        model.addAttribute("pollingMissionPager",pollingMissionPager);
        model.addAttribute("pollingMission",pollingMission);
        return "inspectionTask_executAndReceipt";
    }

    @RequestMapping("/updatepollingMissionpmState2")//分配执行
    @ResponseBody
    public Integer updatepollingMissionpmState2(Model model,PollingMission pollingMission){
        pollingMission.setPmState(3);
        pollingMission.setState(-1);
        int num=pollingMissionBiz.updatePollingMission(pollingMission);
        return num;
    }


    @RequestMapping("/flawShow")//回执录入查看
    public String flawShow(Model model,PollingMission pollingMission){
        pollingMission.setPageNo(1);
        pollingMission.setPageSize(2);
        pollingMission=pollingMissionBiz.queryPollingMission(pollingMission).getDatas().get(0);
        List<FlawType> typeList=pollingMissionBiz.queryFlawType();
        model.addAttribute("execuadd",pollingMission);
        model.addAttribute("typeList",typeList);
        return "inspectionTask_execut_add";
    }

    @RequestMapping("/addfalw")
    public String addfalw(Model model,Flaw flaw){
        PollingMission pollingMission=new PollingMission();
        pollingMission.setPmState(4);
        pollingMission.setId(flaw.getPmid());
        pollingMission.setState(-1);
        flaw.setDiscoverTime(new Date());
        flaw.settId(1);
        pollingMission.setAccomplishTime(new Date());
        int num=pollingMissionBiz.addFlaw(flaw);
        int num1=pollingMissionBiz.updatePollingMission(pollingMission);

        if(num>0){
            return showpollingMission(model,new PollingMission(),null);
        }else{
            return flawShow(model,pollingMission);
        }
    }

    @RequestMapping("/showFlaw")
    public String showFlaw(Model model,String pmNumber, String cNumber, Date beginDate, Date finishDate, Integer pageIndex,Integer typeid, Integer grade){
        if(pageIndex==null){
            pageIndex=1;
        }
        if(typeid==null){
            typeid=0;
        }
        if(grade==null){
            pageIndex=0;
        }
        List<FlawType> typeList=pollingMissionBiz.queryFlawType();
        Pager<Flaw> flawList=pollingMissionBiz.queryFlaw(pmNumber,cNumber,beginDate,finishDate,pageIndex,3,typeid,grade);
        model.addAttribute("typeList",typeList);
        model.addAttribute("flawList",flawList);
        model.addAttribute("pmNumber",pmNumber);
        model.addAttribute("cNumber",cNumber);
        model.addAttribute("beginDate",beginDate);
        model.addAttribute("finishDate",finishDate);
        model.addAttribute("typeid",typeid);
        model.addAttribute("grade",grade);
        return "solve_Query";
    }

}
