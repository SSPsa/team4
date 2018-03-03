package com.accp.routinglnspection.controller;

import com.accp.routinglnspection.biz.CircuitBiz;
import com.accp.routinglnspection.entity.Circuit;
import com.accp.routinglnspection.entity.Pager;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.jws.WebParam;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
public class CircuitController {
    @Resource
    private CircuitBiz circuitBiz;

    //查询全部
    @RequestMapping("/circuit/selCircuit")
    public String selCircuit(Model model,String pageIndex,String queryCircuitRows,String cNumber,String cState){
        if (pageIndex == null) {
            pageIndex = "1";
        }
        if (queryCircuitRows == null) {
            queryCircuitRows = "0";
        }
        if (cState == null || cState.equals("")) {
            cState = "0";
        }
        Pager<Circuit> circuitPager = circuitBiz.queryPager(Integer.parseInt(pageIndex), 3, cNumber, Integer.parseInt(cState));
        if (circuitPager!=null){
            model.addAttribute("circuitPager",circuitPager);
            model.addAttribute("cState",cState);
            model.addAttribute("cNumber",cNumber);
            model.addAttribute("queryCircuitRows",queryCircuitRows);
            return "line";
        }else {
            return null;
        }
    }
   //新增
    @RequestMapping("/circuit/addCircuit")
    public String addCircuit(Model model,Circuit circuit){
        circuit.setyState(0);
        int addCircuit = circuitBiz.addCircuit(circuit);
        if (addCircuit>0){
            return selCircuit(model,null,null,null,null);
        }else {
            return null;
        }
    }

    //根据ID查询
    @RequestMapping("/circuit/selId")
    public String selId(int id,Model model){
        Circuit circuit = circuitBiz.selId(id);
        if (circuit!=null && !circuit.equals("")){
            model.addAttribute("circuit",circuit);
            return "line-update";
        }else {
            return null;
        }

    }

    //修改
    @RequestMapping("/circuit/updateCircuit")
     public String updateCircuit(Circuit circuit,int id,Model model,String yState){

        int updateCircuit = circuitBiz.updateCircuit(circuit);
        if (updateCircuit>0){
            return selCircuit(model,null,null,null,null);
        }else {
            return null;
        }
     }

     //根据ID删除
    @RequestMapping("/circuit/del")
     public String del(int id,HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        int result = circuitBiz.delCircuit(id);
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
