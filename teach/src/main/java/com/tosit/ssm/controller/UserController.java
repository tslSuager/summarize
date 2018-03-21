package com.tosit.ssm.controller;

import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.entity.Office;
import com.tosit.ssm.entity.User;
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
     * @param startDate 开始时间
     * @param endDate 结束时间
     * @param office 包含学校ID的office对象
     * @param request
     * @return
     */
    @RequestMapping("/getUserByDateAreaNoClass")
    @ResponseBody
    public Object getUserByDateAreaNoClass(Date startDate, Date endDate, Office office, HttpServletRequest request){
        SimpleDateFormat format = new SimpleDateFormat("yyyy:MM:dd");
        String sdate = "2018:03:03";//request.getParameter("");
        String edate = "2018:04:04";//request.getParameter("");
        try {
            startDate = format.parse(sdate);
            endDate = format.parse(edate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String id = "001001";//request.getParameter("");
        office.setId(id);
        List<User> users = userService.findUserByDateAreaNoClass(startDate,endDate,office);
        JSONModel.put("users",users);
        return JSONModel.put();
    }

    /**
     * 按班级id获取学生
     * @param id 班级id
     * @param request
     * @return
     */
    @RequestMapping("/getUserByClassId")
    @ResponseBody
    public Object getUserByClassId(String id,HttpServletRequest request){
        id = "001001";//request.getParameter("");
        List<User> users = userService.findUserByOfficeId(id);
        JSONModel.put("users",users);
        return JSONModel.put();
    }


}
