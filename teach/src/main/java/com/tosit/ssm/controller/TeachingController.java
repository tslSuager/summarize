package com.tosit.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.entity.Teaching;
import com.tosit.ssm.entity.TeachingOffice;
import com.tosit.ssm.entity.TeachingVO;
import com.tosit.ssm.service.TeachingOfficeService;
import com.tosit.ssm.service.TeachingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
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
        teaching.setCreateTime(new Date());
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
     * 修改某条计划的内容(可以修改计划名，开始时间，结束时间，备注内容)
     * @param jihuaId
     * @param planName
     * @param starttime
     * @param endtime
     * @param remarks
     * @return
     */
    @RequestMapping("/updateTeaching")
    public String UpdateTeaching(String jihuaId,String planName,String starttime,String endtime,String remarks){
        Teaching teaching = new Teaching();
        teaching.setId(jihuaId);
        teaching.setPlanname(planName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date startTime = (simpleDateFormat.parse(starttime));
            teaching.setStartTime(startTime);
            Date endTime = (simpleDateFormat.parse(endtime));
            teaching.setEndTime(endTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        teaching.setRemarks(remarks);
        teaching.setUpdateTime(new Date());
        teachingService.updateByPrimaryKey(teaching);
        /*TeachingOffice teachingOffice = new TeachingOffice();
        teachingOffice.setUpdateTime(new Date());
        teachingOfficeService.updateByTeachingId(jihuaId);*/
        return "/jiaoan/show_plan";
    }

    /**
     * 删除一条计划(逻辑删除)
     * @param jihuaId
     * @return
     */
    @RequestMapping("/deleteTeaching")
    public String deleteTeaching(String jihuaId){
        Teaching teaching = new Teaching();
        teaching.setId(jihuaId);
        teaching.setIsDel(0);
        teachingService.updateByPrimaryKey(teaching);

        /*TeachingOffice teachingOffice = new TeachingOffice();
        teachingOffice.setUpdateTime(new Date());
        teachingOffice.setIsDel(0);
        teachingOfficeService.updateByTeachingId(jihuaId);*/

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
    @ResponseBody
    @RequestMapping("/insertJieduan")
    public Object InsertJieduan(String jihuaId, String planname, String start, String end, String remarks){
        Teaching teaching = new Teaching();
        teaching.setParentId(jihuaId);
        String jieduanId = UUID.randomUUID().toString().replaceAll("-","");
        teaching.setId(jieduanId);
        teaching.setPlanname(planname);
        teaching.setCreateTime(new Date());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date startTime = simpleDateFormat.parse(start);
            teaching.setStartTime(startTime);
            Date endTime = simpleDateFormat.parse(end);
            teaching.setEndTime(endTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        teaching.setRemarks(remarks);
        teaching.setIsDel(1);
        teaching.setType(2);
        teachingService.insertTeaching(teaching);
        JSONModel.put("newjieduan",teaching);
        return JSONModel.put();
    }

    /**
     * 查看一条计划的所有阶段
     * @param jihuaId
     * @return
     */
    @RequestMapping("/viewJieduan")
    @ResponseBody
    public Object ViewJieduan(String jihuaId){
        List<Teaching> jieduans = teachingService.selectJieduanByTeaching(jihuaId);
        for (Teaching j:jieduans
             ) {
            System.out.println(j);
        }
        JSONModel.put("jieduans",jieduans);
        return JSONModel.put();
    }


    /**
     * 为某个阶段添加一条任务
     * @param jieduanId
     * @param renwuname
     * @param renwustart
     * @param renwuend
     * @param renwuremarks
     * @return
     */
    @ResponseBody
    @RequestMapping("/insertRenwu")
    public Object InsertRenwu(String jieduanId, String renwuname, String renwustart, String renwuend, String renwuremarks){
        Teaching teaching = new Teaching();
        teaching.setId(UUID.randomUUID().toString().replaceAll("-",""));
        teaching.setParentId(jieduanId);
        teaching.setType(3);
        teaching.setPlanname(renwuname);
        teaching.setCreateTime(new Date());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date startTime = simpleDateFormat.parse(renwustart);
            teaching.setStartTime(startTime);
            Date endTime = simpleDateFormat.parse(renwuend);
            teaching.setEndTime(endTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        teaching.setIsDel(1);
        teaching.setRemarks(renwuremarks);
        teachingService.insertTeaching(teaching);
        JSONModel.put("newrenwu",teaching);
        return JSONModel.put();
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

    /**
     * 为某个任务添加一个task任务详情
     * @param renwuId
     * @param renwuname
     * @param renwustart
     * @param renwuend
     * @param renwuremarks
     * @return
     */
    @ResponseBody
    @RequestMapping("/insertRenwuDetail")
    public Object InsertRenwuDetail(String renwuId, String renwuname, String renwustart, String renwuend, String renwuremarks){
        return null;
    }

}
