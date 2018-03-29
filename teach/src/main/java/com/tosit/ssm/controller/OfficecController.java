package com.tosit.ssm.controller;

import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.common.util.json.JSONUtil;
import com.tosit.ssm.entity.Office;
import com.tosit.ssm.entity.UserOffice;
import com.tosit.ssm.service.OfficeService;
import com.tosit.ssm.service.OfficeServiceImpl;
import com.tosit.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/office")
public class OfficecController {
    @Autowired
    OfficeService officeService;
    @Autowired
    UserService userService;

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
        office.setMaster("u016");
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
        office.setMaster("u016");
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
        office.setMaster("u016");
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
    @ResponseBody
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
        Collections.sort(groups,new Comparator<Office>(){
            public int compare(Office o1, Office o2) {
                String n1 = o1.getName().substring(0,o1.getName().lastIndexOf("组"));
                int i1 = Integer.parseInt(n1);
                String n2 = o2.getName().substring(0,o2.getName().lastIndexOf("组"));
                int i2 = Integer.parseInt(n2);
                if (i1>i2){
                    return 1;
                }
                else if (i1==i2){
                    return 0;
                }
                return -1;
            }
        });
        JSONModel.put("groups",groups);
        return JSONModel.put();
    }


    /**
     * 添加分组
     * @param office
     * @param request
     */
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

    /**
     * 删除班级
     * @param office
     * @param userOffice
     * @param request
     */
    @RequestMapping("/deleteClass")
    @ResponseBody
    public void deleteClass(Office office,UserOffice userOffice,HttpServletRequest request){

        String classId = request.getParameter("classId");
        office.setId(classId);
        //删除该班的所有关联表
        List<UserOffice> userOfficeId1 = userService.findIdByOid(office);
        if (userOffice!=null){
            for (UserOffice o:
                 userOfficeId1) {
                System.out.println(o.getId());
                userOffice.setId(o.getId());
                userOffice.setIsDel(0);
                userService.deleteUserOfficeByGroup(userOffice);
            }
        }

        //删除该班的小组的所有关联表
        UserOffice userOffice1 = new UserOffice();
        List<Office> officeId = officeService.findIdByParent(office);
        for (Office o:
             officeId) {
            System.out.println(o.getId());
            List<UserOffice> userOfficeId2 = userService.findIdByOid(o);
            for (UserOffice uo:
                 userOfficeId2) {
                System.out.println(uo.getId());
                userOffice1.setId(uo.getId());
                userOffice1.setIsDel(0);
                userService.deleteUserOfficeByGroup(userOffice1);
            }

            //删除该班所有组
            o.setIsDel(0);
            officeService.deleteOffice(o);
        }

        office.setIsDel(0);
        officeService.deleteOffice(office);
    }

    /**
     * 删除小组
     * @param request
     */
    @RequestMapping("/deleteGroup")
    @ResponseBody
    public void deleteGroup(HttpServletRequest request){
        String gid = request.getParameter("gid");
        System.out.println(gid);
        Office office = new Office();
        office.setId(gid);
        List<UserOffice> userOffices = userService.findIdByOid(office);
        for (UserOffice uo:
             userOffices) {
            uo.setIsDel(0);
            userService.deleteUserOfficeByGroup(uo);
        }
        office.setIsDel(0);
        officeService.deleteOffice(office);
    }


    @RequestMapping("/reviseClassName")
    @ResponseBody
    public void reviseClassName(Office office,HttpServletRequest request){
        String name = request.getParameter("name");
        String cid = request.getParameter("cid");
        office.setId(cid);
        office.setName(name);
        officeService.deleteOffice(office);
    }
}
