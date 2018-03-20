package com.tosit.ssm.controller;

import com.tosit.ssm.entity.Experience;
import com.tosit.ssm.service.ExperienceService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/experience")
public class ExperienceController {
    @Autowired
    private ExperienceService experienceService;

    /**
     * 根据用户id查询单个用户的详细经历,并通过request传入jsp
     *
     * @param userId 用户id
     * @return 返回到student_jingli页面
     */
    @RequestMapping("/userExperience")
    public String userExperience( String userId, HttpServletRequest request){
        System.out.println(userId);
        List<Experience> experiences = experienceService.allUserExperience(userId);
        request.setAttribute("allExperience",experiences);
        return "student_jingli";
    }
}
