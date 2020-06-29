package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ViewController {

    @RequestMapping("/toIndex")
    public String toIndex(){
        return "index";
    }

    @RequestMapping("/testTable")
    public String toTestTable(Model model){
        model.addAttribute("name","zhangxudong");
        return "table";
    }

    @RequestMapping("/queryTable1")
    public String queryTable1(Model model){
        List list = new ArrayList();
        list.add(1);
        list.add(2);
        list.add(3);
        model.addAttribute("dataList",list);
        return "tableData";
    }

    @PostMapping("/submitData")
    public String submitData(){
        return "formS";
    }
}
