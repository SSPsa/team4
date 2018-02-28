package com.accp.routinglnspection.controller;

import com.accp.routinglnspection.biz.CircuitBiz;
import com.accp.routinglnspection.entity.Circuit;
import com.accp.routinglnspection.entity.Pager;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class CircuitController {
    @Resource
    private CircuitBiz circuitBiz;
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
}
