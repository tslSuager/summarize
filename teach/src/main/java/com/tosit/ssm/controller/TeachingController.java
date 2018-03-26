package com.tosit.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.common.util.json.JSONUtil;
import com.tosit.ssm.entity.Teaching;
import com.tosit.ssm.service.TeachingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/teaching")
public class TeachingController {
    @Autowired
    private TeachingService teachingService;

    @RequestMapping("/insertTeaching")
    public String insertTeaching(String planName, Timestamp StartTime, Timestamp EndTime,String remarks){
        Teaching teaching = new Teaching();
        String id = String.valueOf((int)(Math.random()*100+1));
        teaching.setId(id);
        teaching.setPlanname(planName);
        teaching.setType(1);
        teaching.setStartTime(StartTime);
        teaching.setEndTime(EndTime);
        teaching.setRemarks(remarks);
        teaching.setIsDel(1);
        teachingService.insertTeaching(teaching);
        return null;
    }

    @RequestMapping("/viewTeaching")
    public String ViewTeaching(HttpServletRequest request){
//        String userId = request.getParameter("userId");
        //获取用户id
        List<Teaching> teachings = teachingService.selectTeachingByUserId("u013");
        for (Teaching t:teachings
             ) {
            System.out.println(t);
        }
        request.setAttribute("teachings", JSON.toJSON(teachings));
        return "/jiaoan/show_plan";
    }

}
