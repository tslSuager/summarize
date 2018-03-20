package com.tosit.ssm.controller;

import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.entity.KaoqindetailVO;
import com.tosit.ssm.service.CheckingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/checking")
public class CheckingController {
    @Autowired
    private CheckingService checkingService;

    /**
     * 添加考勤规则  当为方案三方案四的时候第一条记录不要
     * @return 返回成功或者失败（具体的返回值到时候常量类定义了再说）
     */
    @RequestMapping(value = "/addKaoQinRule")
    @ResponseBody
    public Object addKaoQinRule(KaoqinRule kaoqinRule,KaoqindetailVO kaoqindetailList){
                checkingService.addKaoQinRule(kaoqinRule,kaoqindetailList);
        return "success";
    }





}
