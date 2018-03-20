package com.tosit.ssm.controller;

import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.entity.KaoqinRuleDetail;
import com.tosit.ssm.service.CheckingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.text.SimpleDateFormat;

@Controller
@RequestMapping("/checking")
public class CheckingController {
    @Autowired
    private CheckingService checkingService;

    /**
     * 添加考勤规则  当为方案三方案四的时候第一条记录不要
     * @return 返回成功或者失败（具体的返回值到时候常量类定义了再说）
     */
    @RequestMapping("/addKaoQinRule")
    @ResponseBody
    public Object addKaoQinRule(){
        //        checkingService.addKaoQinRule(kaoqinRule);
        return "success";
    }





}
