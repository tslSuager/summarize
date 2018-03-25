package com.tosit.ssm.controller;

import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.entity.Office;
import com.tosit.ssm.service.OfficeService;
import com.tosit.ssm.service.OfficeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/office")
public class OfficecController {
    @Autowired
    OfficeServiceImpl officeService;
    @GetMapping("/createOffice")
    @ResponseBody
    public void createOffice(Office office, HttpServletRequest servletRequest) {
        if (office.getName().contains(",")){
            office.setName(office.getName().replace(",",""));
        }
        if (office.getOfficeType() == null) {
            if (office.getParentId()==null) {
                office.setOfficeType(1);
            }else {
                office.setOfficeType(2);
            }
        }
        office.setId(UUID.randomUUID().toString().replaceAll("-",""));
        officeService.createOffice(office);
    }

    /**
     *  获取所有区域
     * @return
     */
    @GetMapping("/getAllArea")
    @ResponseBody
    public Object getAllArea() {
        System.out.println("我执行了");
        List<Office> area = officeService.getAllArea();
        for (int i = 0; i < area.size(); i++) {
            System.out.println(area.get(i));
        }
        JSONModel.put("allArea",area);
        return JSONModel.put();
    }

    /**
     *  获取所有班级
     * @return
     */
    @GetMapping("/getClass")
    @ResponseBody
    public Object getOfficeClass() {
        List<Office> allClass = officeService.getAllClass();
        JSONModel.put("allClass",allClass);
        return JSONModel.put();
    }
    /**
     * 查找老师当月创建的所有班级
     * @return 返回JSON格式的班级数据
     */
    @RequestMapping("/getAllClassByTeacherAndDate")
    @ResponseBody
    public Object getClassByTeacherAndDate(Office office){
        Calendar cale1 = null;
        Calendar cale2 = null;
        Date date1 = null;
        Date date2 = null;
        // 获取当月第一天和最后一天
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String firstday, lastday;
        // 获取前月的第一天
        cale1 = Calendar.getInstance();
        cale1.add(Calendar.MONTH, 0);
        cale1.set(Calendar.DAY_OF_MONTH, 1);
        cale1.set(Calendar.HOUR_OF_DAY,0);
        cale1.set(Calendar.MINUTE,0);
        cale1.set(Calendar.SECOND,0);
        firstday = format.format(cale1.getTime());
        // 获取前月的最后一天
        cale2 = Calendar.getInstance();
        cale2.add(Calendar.MONTH, 1);
        cale2.set(Calendar.DAY_OF_MONTH, 0);
        cale2.set(Calendar.HOUR_OF_DAY,23);
        cale2.set(Calendar.MINUTE,59);
        cale2.set(Calendar.SECOND,59);
        lastday = format.format(cale2.getTime());
        try {
            date1 = format.parse(firstday);
            date2 = format.parse(lastday);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //System.out.println("本月第一天和最后一天分别是 ： " + date1 + " and " + date2);
        office.setMaster("aa");
        office.setCreateTime(date1);
        office.setUpdateTime(date2);
        List<Office> classes = officeService.findClassByTeacherAndDate(office);
        JSONModel.put("classes",classes);
        return JSONModel.put();
    }

    /**
     * 查询某个教员某个时间段内的所有班级
     * @param office
     * @param request
     * @return
     */
    @RequestMapping("/getAllClassByTeacherByDate")
    @ResponseBody
    public Object getClassByTeacherByDate(Office office,HttpServletRequest request){
        Date startDate = null;
        Date endDate = null;
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String date1 = request.getParameter("date1");
        String date2 = request.getParameter("date2");
        try {
            startDate = format.parse(date1);
            endDate = format.parse(date2);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        office.setMaster("何团");
        office.setCreateTime(startDate);
        office.setUpdateTime(endDate);
        List<Office> classes = officeService.findClassByTeacherAndDate(office);
        JSONModel.put("classes",classes);
        return JSONModel.put();
    }

    /**
     * 通过区域和老师查找班级
     * @param office 其中建议只有master 和 学校id （提醒：这两个属性没有直接的关联，这里使用Office类只是暂存数据【id和master】）
     * @param request 获得学校id
     * @return
     */
    @RequestMapping("/getClassByTeacherByArea")
    @ResponseBody
    public Object getClassByTeacherByArea(Office office,HttpServletRequest request){
        String pId = request.getParameter("pId");
        System.out.println(pId);
        office.setId(pId);
        office.setMaster("何团");
        List<Office> classes = officeService.findClassByTeacherAndSchool(office);
        JSONModel.put("classes",classes);
        return JSONModel.put();
    }

    /**
     * 从前端传来班级名称以及班级的父级id和Master，添加班级
     * @param office
     * @param request
     */
    @RequestMapping("/addClass")
    public void addClass(Office office,HttpServletRequest request){
        office.setId(UUID.randomUUID().toString().replaceAll("-",""));
        office.setMaster("何团");
        String name = request.getParameter("name");
        String school = request.getParameter("school");
        office.setParentId(school);
        office.setName(name);
        office.setIsDel(1);
        office.setOfficeType(3);
        officeService.addOffice(office);
        System.out.println("OK");
    }

    /**
     * 查询某个班的所有组
     * @param id
     * @return
     */
    @RequestMapping("/getGroupByClass")
    @ResponseBody
    public Object getGroupByClass(String id,HttpServletRequest request){
        id = request.getParameter("s");
        List<Office> groups = officeService.findGroupByClassId(id);
        JSONModel.put("groups",groups);
        return JSONModel.put();
    }


    @RequestMapping("/addGroup")
    public void addGroup(Office office,HttpServletRequest request){
        String n = request.getParameter("num");
        String s = request.getParameter("s");
        int num = Integer.parseInt(n);
        String l = request.getParameter("ll");
        int ll = Integer.parseInt(l);
        office.setParentId(s);
        for (int i = 1;i<=num;i++){
            office.setName(""+(ll+i)+"组");
            office.setId(UUID.randomUUID().toString().replaceAll("-",""));
            office.setOfficeType(4);
            office.setIsDel(1);
            officeService.addOffice(office);
        }
    }
}
