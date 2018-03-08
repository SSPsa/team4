package com.accp.routinglnspection.controller;

import com.accp.routinglnspection.biz.TowerBiz;
import com.accp.routinglnspection.entity.Circuit;
import com.accp.routinglnspection.entity.Pager;
import com.accp.routinglnspection.entity.Tower;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
public class TowerController {
    @Resource
    private TowerBiz towerBiz;

    //查询全部
    @RequestMapping("/tower/selTower")
    public String selTower(Model model, String pageIndex, String queryTowerRows, String tNumber, String tState){
        if (pageIndex == null) {
            pageIndex = "1";
        }
        if (queryTowerRows == null) {
            queryTowerRows = "0";
        }
        if (tState == null || tState.equals("")) {
            tState = "0";
        }
        Pager<Tower> towerPager = towerBiz.queryPager(Integer.parseInt(pageIndex), 3, tNumber, Integer.parseInt(tState));
        if (towerPager!=null){
            model.addAttribute("towerPager",towerPager);
            model.addAttribute("tState",tState);
            model.addAttribute("tNumber",tNumber);
            model.addAttribute("queryTowerRows",queryTowerRows);
            return "tower";
        }else {
            return null;
        }
    }

    //根据ID查询
    @RequestMapping("/tower/towerSelId")
    public String towerSelId(int id,Tower tower,Model model){
        Tower towerSelId = towerBiz.towerSelId(tower);
        if (towerSelId!=null || !towerSelId.equals("")){
              model.addAttribute("towerSelId",towerSelId);
              return "tower-update";
        }else {
            return null;
        }
    }

      //修改
    @RequestMapping("/tower/updateTower")
     public String updateTower(Tower tower,Model model,int id,int tState,String tNumber,HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        tower.setId(id);
        if (tState==1){
            tower.settState(2);
        }
        if (tState==2){
            tower.settState(1);
        }
        int result = towerBiz.updateTower(tower);
        if (result>0){
            out.print("{\"delResult\":\"true\"}");
        }else {
            out.print("{\"delResult\":\"false\"}");
        }
        out.flush();
        out.close();
        return null;
    }
    //新增杆塔
    @RequestMapping("/tower/addTower")
     public String addTower(Tower tower,Model model){
        int addTower = towerBiz.addTower(tower);
        if (addTower>0){
            return selTower(model,null,null,null,null);
        }else {
            return null;
        }


     }


    //根据ID删除
    @RequestMapping("/tower/delTower")
    public String delTower(int id,HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        int result = towerBiz.delTower(id);
        if (result>0){
            out.print("{\"delResult\":\"true\"}");
        }
        else {
            out.print("{\"delResult\":\"false\"}");
        }
        out.flush();
        out.close();
        return null;
    }
}
