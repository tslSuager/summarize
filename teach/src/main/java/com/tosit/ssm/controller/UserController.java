package com.tosit.ssm.controller;

import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.entity.Office;
import com.tosit.ssm.entity.User;
import com.tosit.ssm.service.OfficeService;
import com.tosit.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private OfficeService officeService;
    @ResponseBody
    @RequestMapping("/getAllUser")
    public Object getUsers(){
//        List<User> users= userService.getUsers();
        return  null;
    }

    /**
     * 得到指定用户
     * @param id 用户id
     * @return
     */
    @ResponseBody
    @RequestMapping("/getUserById")
    public Object getUserById(String id){
        User user= userService.getUserById(id);
        return  user;
    }

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    @RequestMapping(value = "/modifyUser",method = RequestMethod.POST)
    @ResponseBody
    public Object modifyUser(User user){
        userService.modifyUser(user);
        return user ;
    }

    /**
     * 通过班级id查询一个班的学生,通过request传值到jsp页面
     *
     * @param request 用于传递参数
     * @return 返回jspyemian
     */
    @RequestMapping("/getClassUser")
    public String getClassUser(HttpServletRequest request){
        //获取班级id  -----未实现
        String officeId;
        officeId="001001001";//-------模拟一个班级数据
        List<User> classUser = userService.findClassUser(officeId);
        System.out.println(classUser.size());
        request.setAttribute("users",classUser);
        return "student_find_jingli";
    }

    @RequestMapping(value = "/getUserByClassIdNoKaoqinNum",method = RequestMethod.POST)
    @ResponseBody
    public Object getUserByClassIdNoKaoqinNum(String id){
        List<User> users= userService.findUserByClassIdNoKaoqinNum(id);
        return users ;
    }

    /**
     * 按时间段和区域查找没分班的人
     * @param office 包含学校ID的office对象
     * @param request
     * @return
     */
    @RequestMapping("/getUserByDateAreaNoClass")
    @ResponseBody
    public Object getUserByDateAreaNoClass(Office office, HttpServletRequest request){
        Date startDate = null;
        Date endDate = null;
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String sdate = request.getParameter("startDate");
        String edate = request.getParameter("endDate");
        String pId = request.getParameter("pId");
        if (pId==null){
            pId = "001001";
        }
        try {
            startDate = format.parse(sdate);
            endDate = format.parse(edate);
        } catch (ParseException e) {
            e.printStackTrace();
        }System.out.println(sdate+":"+edate);
        System.out.println(startDate+":"+endDate);
        office.setId(pId);
        List<User> users = userService.findUserByDateAreaNoClass(startDate,endDate,office);
        JSONModel.put("users",users);
        return JSONModel.put();
    }

    /**
     * 按班级或组id获取学生
     * @param id 班级id
     * @param request
     * @return
     */
    @RequestMapping("/getUserByClassId")
    @ResponseBody
    public Object getUserByClassId(String id,HttpServletRequest request){
        id = request.getParameter("s");
        List<User> users = userService.findUserByOfficeId(id);
        JSONModel.put("users",users);
        return JSONModel.put();
    }

    /**
     * 获取某个班未分班的人
     * @param office
     * @param request
     * @return
     */
    @RequestMapping("/getUsersByClassNoGroup")
    @ResponseBody
    public Object getUsersByClassNoGroup(Office office, HttpServletRequest request){
        String id = request.getParameter("s");
        office.setId(id);
        List<User> users = userService.findUserWithClassNotInGroup(office);
        JSONModel.put("users",users);
        return JSONModel.put();
    }

    /**
     * 获取某个组的人包括组号
     * @return
     */
    @RequestMapping("/getUsersByGroup")
    @ResponseBody
    public Object getUsersByGroup(){
        List<Office> groups = officeService.findGroupByClassId("");
        return null;
    }
}
