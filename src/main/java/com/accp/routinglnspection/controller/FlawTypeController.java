package com.accp.routinglnspection.controller;

import com.accp.routinglnspection.biz.CircuitBiz;
import com.accp.routinglnspection.biz.FlawTypeBiz;
import com.accp.routinglnspection.entity.FlawType;
import com.accp.routinglnspection.entity.Pager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("flawtype")
public class FlawTypeController {
    @Resource(name = "flawTypeBiz")
    private FlawTypeBiz flawTypeBiz;
    @Resource(name = "circuitBiz")
    private CircuitBiz circuitBiz;

    @RequestMapping("/queryFlaw")
    public String queryFlaw(Model model, String pageIndex, String queryTowerRows) {
        if (pageIndex == null) {
            pageIndex = "1";
        }
        if (queryTowerRows == null) {
            queryTowerRows = "0";
        }
        Pager<FlawType> FlawTypePager = flawTypeBiz.queryPager(Integer.parseInt(pageIndex),3);
        if (FlawTypePager != null) {
            model.addAttribute("FlawTypePager", FlawTypePager);
            model.addAttribute("queryTowerRows", queryTowerRows);
            return "defects_type";
        } else {
            return null;
        }
    }
    @RequestMapping("/add")
    public String add(Model m){
        m.addAttribute("flawt",flawTypeBiz.cha());
        return "defectsType_add";
    }
    @RequestMapping("/addType")
    public String addType(Model m,FlawType flawType){
        flawTypeBiz.addflaw(flawType);
        return queryFlaw(m,null,null);
    }

    @RequestMapping("Del")
    public String Del(String id,HttpServletResponse resp)throws IOException {
        PrintWriter out = resp.getWriter();
        int delete=flawTypeBiz.DelType(Integer.parseInt(id));
        if(delete>0){
            out.print(1);
        }else {
            out.print(0);
        }
        out.flush();
        out.close();
        return null;

    }
    @RequestMapping("Query") //修改前查找
    public String Query(Model m,int id){
        FlawType flawType=flawTypeBiz.QueryId(id);
        m.addAttribute("que",flawTypeBiz.QueryId(id));
        return "defectsType-modify";

    }
    @RequestMapping("Upda") //修改
    public String Upda(Model m,FlawType flawType){
        int update=flawTypeBiz.updateFlaw(flawType);
        if(update>0){
            return queryFlaw(m,null,null);
        }
        return null;
    }

}


