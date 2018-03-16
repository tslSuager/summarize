package com.tosit.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class PageController {

    @RequestMapping("/{path}")
    public String toCommonpath(@PathVariable String path){

        return path;
    }


    @RequestMapping("/video/{path}")
    public String toChengjipath(@PathVariable String path){
        return "video/"+path;

    }
    @RequestMapping("/erzu/{path}")
    public String toErzupath(@PathVariable String path){
        return "erzu/"+path;

    }
    @RequestMapping("/jiaoan/{path}")
    public String toChengipath(@PathVariable String path){
        return "jiaoan/"+path;

    }
}
