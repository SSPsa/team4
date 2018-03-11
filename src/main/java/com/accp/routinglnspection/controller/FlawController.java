package com.accp.routinglnspection.controller;

import com.accp.routinglnspection.biz.FlawBiz;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/flaw")
public class FlawController {
    @Resource
    private FlawBiz flawBiz;

    @RequestMapping("/queryFlaw")
    public String queryFlaw(Model model){
        model.addAttribute("Fl",flawBiz.queryFlaw());
        return "defects_level";
    }
}
