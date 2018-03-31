package com.tosit.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.entity.Teaching;
import com.tosit.ssm.entity.TeachingOffice;
import com.tosit.ssm.entity.TeachingVO;
import com.tosit.ssm.service.TeachingOfficeService;
import com.tosit.ssm.service.TeachingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/teaching")
public class TeachingController {
    @Autowired
    private TeachingService teachingService;
    @Autowired
    private TeachingOfficeService teachingOfficeService;

    /**
     * 某个老师插入一条新的教学计划
     * @param planName
     * @param start
     * @param banji
     * @param end
     * @param remarks
     * @return
     */
    @RequestMapping("/insertTeaching")
    public String insertTeaching(String planName, String start,String banji,String end,String remarks){
        Teaching teaching = new Teaching();
        //新增TeachingOffice的记录，让班级属性添加进去
        TeachingOffice teachingOffice = new TeachingOffice();
        teachingOffice.setId(UUID.randomUUID().toString().replaceAll("-",""));
        teachingOffice.setIsDel(1);
        String id = UUID.randomUUID().toString().replaceAll("-","");
        teachingOffice.setTeachingId(id);
        teachingOffice.setOfficeId(banji);
        teachingOfficeService.insertTeachingOffice(teachingOffice);
        //添加一条计划Teaching
        teaching.setId(id);
        teaching.setType(1);
        teaching.setIsDel(1);
        teaching.setPlanname(planName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date startTime = (simpleDateFormat.parse(start));
            teaching.setStartTime(startTime);
            Date endTime = (simpleDateFormat.parse(end));
            teaching.setEndTime(endTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        teaching.setRemarks(remarks);
        teachingService.insertTeaching(teaching);
        return "/jiaoan/show_plan";
    }

    /**
     * 某个老师查看所有教学计划
     * @param request
     * @return
     */
    @RequestMapping("/viewTeaching")
    public String ViewTeaching(HttpServletRequest request){
//        String userId = request.getParameter("userId");
        //获取用户id
        List<TeachingVO> teachings = teachingService.selectTeachingByUserId("u013");
        for (Teaching t:teachings
             ) {
            System.out.println(t);
        }
        request.setAttribute("teachings", JSON.toJSON(teachings));
        return "/jiaoan/show_plan";
    }


    /**
     * 为一条计划添加一个阶段
     * @param jihuaId
     * @param planname
     * @param start
     * @param end
     * @param remarks
     * @return
     */
    @RequestMapping("/insertJieduan")
    public String InsertJieduan(String jihuaId, String planname, String start, String end, String remarks){
        Teaching teaching = new Teaching();
        teaching.setParentId(jihuaId);
        String jieduanId = UUID.randomUUID().toString().replaceAll("-","");
        teaching.setId(jieduanId);
        teaching.setPlanname(planname);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date startTime = simpleDateFormat.parse(start);
            teaching.setStartTime(startTime);
            Date endTime = simpleDateFormat.parse(end);
            teaching.setEndTime(endTime);
            Date createTime = new Date();
            simpleDateFormat.parse(String.valueOf(createTime));
            teaching.setCreateTime(createTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        teaching.setRemarks(remarks);
        teaching.setIsDel(1);
        teaching.setType(2);
        teachingService.insertTeaching(teaching);
        return "/jiaoan/jiaoxueplan_addjieduan";
    }

    /**
     * 查看一条计划的所有阶段
     * @param request
     * @param jihuaId
     * @return
     */
    @ResponseBody
    @RequestMapping("/viewJieduan")
    public Object ViewJieduan(HttpServletRequest request,String jihuaId){
        List<Teaching> jieduans = teachingService.selectJieduanByTeaching(jihuaId);
        for (Teaching j:jieduans
             ) {
            System.out.println(j);
        }
        request.setAttribute("jieduans",JSON.toJSON(jieduans));
        request.setAttribute("jihuaId",jihuaId);
        return jieduans;
    }


    @RequestMapping("/insertRenwu")
    public String InsertRenwu(String jieduanId, String renwuname, String renwustart, String renwuend, String renwuremarks){
        Teaching teaching = new Teaching();
        teaching.setId("zzz");
        teaching.setParentId(jieduanId);
        teaching.setType(3);
        teaching.setPlanname(renwuname);
        teaching.setIsDel(1);
        

        return null;
    }

    /**
     * 查看某个阶段的所有任务
     * @param request
     * @param jieduanId
     * @return
     */
    @ResponseBody
    @RequestMapping("/viewRenwu")
    public Object ViewRenwu(HttpServletRequest request,String jieduanId){
        List<Teaching> renwus = teachingService.selectRenwuByJieduan(jieduanId);
        for (Teaching r:renwus
                ) {
            System.out.println(r);
        }
        request.setAttribute("renwus",JSON.toJSON(renwus));
        return renwus;
    }

}
