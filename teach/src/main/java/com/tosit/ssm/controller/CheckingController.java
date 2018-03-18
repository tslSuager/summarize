package com.tosit.ssm.controller;

import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.entity.User;
import com.tosit.ssm.service.CheckingService;
import com.tosit.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/checking")
public class CheckingController {
    @Autowired
    private CheckingService checkingService;

    /**
     * 添加考勤规则
     * @param kaoqinRule 从前端传入的考勤规则
     * @return 返回成功或者失败（具体的返回值到时候常量类定义了再说）
     */
    @RequestMapping("/addKaoQinRule")
    @ResponseBody
    public Object addKaoQinRule(KaoqinRule kaoqinRule){
        checkingService.addKaoQinRule(kaoqinRule);
        return "success";
    }



}
