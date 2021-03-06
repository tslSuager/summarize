package com.tosit.ssm.controller;

import com.google.common.collect.Lists;
import com.tosit.ssm.common.util.SysUtil;
import com.tosit.ssm.common.util.excel.ExportExcel;
import com.tosit.ssm.common.util.excel.ImportExcel;
import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.entity.*;
import com.tosit.ssm.service.ExperienceService;
import com.tosit.ssm.service.OfficeService;
import com.tosit.ssm.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Row;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private OfficeService officeService;
    @Autowired
    private ExperienceService experienceService;
    private String Ext_Name = "xls,xlsx";

    @ResponseBody
    @RequestMapping("/getAllUser")
    public Object getUsers(){
//        List<User> users= userService.getUsers();
        return  null;
    }
    @RequestMapping(value = "/login")
    public String login (String username,String password, HttpSession session) {
        System.out.println("开始登陆");
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        token.setRememberMe(true);
        try {
            //执行认证提交
            subject.login(token);
        } catch (AuthenticationException e) {
           if (e instanceof UnknownAccountException){
               session.setAttribute("msg","用户不存在");
               return "login";
           }
            if (e instanceof IncorrectCredentialsException) {
                session.setAttribute("msg","密码错误");
                return "login";
            }
        }
        //是否认证通过
        boolean  isAuthenticated=  subject.isAuthenticated();
        if (isAuthenticated) {
            User user = userService.findsUserByUserName(username);
            subject.getSession().setAttribute("user",user);
            System.out.println("是否认证通过：" + isAuthenticated);
        }
        return "center";
    }

    @RequestMapping(value = "/outLogin")
    public void outLogin (String username,String password, HttpSession session) {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
    }


    /**
     * 得到指定用户
     * @return
     */
    @ResponseBody
    @RequestMapping("/getUserById")
    public Object getUserById(/*String id*/){
        String id=((User)SecurityUtils.getSubject().getSession().getAttribute("user")).getId();
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
        String officeId = request.getParameter("cId");
        String name = request.getParameter("name");
        System.out.println(officeId);
        System.out.println(name.length());
        List<User> classUser = new ArrayList<>();
        if (name.length()==0){
            classUser = userService.findClassUser(officeId);

        }else {
            classUser = userService.findStuByClassAndName(name,officeId);
        }
        request.setAttribute("users",classUser);
        return "student_find_jingli";
    }
    /**
     * 得到某个班为关联考勤工号的人
     * @param id 班级id
     * @return
     */
    @RequestMapping(value = "/getUserByClassIdNoKaoqinNum")
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
    public Object getUserByDateAreaNoClass(Office office, HttpServletRequest request) {
        Date startDate = null;
        Date endDate = null;
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

        String sdate = request.getParameter("startDate");
        String edate = request.getParameter("endDate");
        String pId = request.getParameter("pId");
        String s = request.getParameter("s");
        if (s == null && pId == null) {//没有选择学校
            System.out.println("没有选择学校");
            JSONModel.put("message", "error");
            return JSONModel.put();
        }
        else if (s == null && pId != null) {//正常搜索
            System.out.println("正常搜索");
            try {
                startDate = format.parse(sdate);
                endDate = format.parse(edate);

            } catch (ParseException e) {
                e.printStackTrace();
            }
            office.setId(pId);
            List<User> users = userService.findUserByDateAreaNoClass(startDate, endDate, office);
            JSONModel.put("message", "success");
            JSONModel.put("users", users);
            return JSONModel.put();
        }
        else if (s != null && pId == null) {//初始化界面
            System.out.println("初始化界面");

            Office class1 = officeService.findOfficeById(s);
            pId = class1.getParentId();
            System.out.println(s);
            System.out.println(pId);
            try {
                startDate = format.parse(sdate);
                endDate = format.parse(edate);

            } catch (ParseException e) {
                e.printStackTrace();
            }
            office.setId(pId);
            List<User> users = userService.findUserByDateAreaNoClass(startDate, endDate, office);
            JSONModel.put("message", "success");
            JSONModel.put("users", users);
            return JSONModel.put();
        }
        else {
            return JSONModel.put("message","OK");
        }
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
    public Object getUsersByGroup(Office office,HttpServletRequest request){
        String cId = request.getParameter("s");
        office.setId(cId);
        List<UserVO> users = userService.findUserWithGroup(office);
        JSONModel.put("users",users);
        return JSONModel.put();
    }

    /**
     * 获取所有没有与某个班级关联的教员
     * @return
     */
    @RequestMapping("/getAllTeacherNoThisClass")
    @ResponseBody
    public Object getAllTeacherNoThisClass(Office office,HttpServletRequest request){
        String cid = request.getParameter("s");
        office.setId(cid);
        List<User> techers = userService.findAllTeacherNoThisClass(office);
        JSONModel.put("teachers",techers);
        return JSONModel.put();
    }

    /**
     * 向组织（小组或班级）添加成员
     * @param userOffice 关联表
     * @param request
     */
    @RequestMapping("/addStuToGroup")
    @ResponseBody
    public void addStuToGroup(UserOffice userOffice, HttpServletRequest request){
        String sid = request.getParameter("id");
        String gid = request.getParameter("gid");
        userOffice.setOfficeId(gid);
        userOffice.setUserId(sid);
        System.out.println(gid);
        UserOffice userOfficeId = userService.findUserOfficeId(userOffice);
        if (userOfficeId==null){
            userOffice.setId(UUID.randomUUID().toString().replaceAll("-",""));
            userOffice.setIsDel(1);
            userService.insertUserOfficeByGroup(userOffice);
        } else {
            String id = userOfficeId.getId();
            userOffice.setId(id);
            userOffice.setIsDel(1);
            userService.deleteUserOfficeByGroup(userOffice);
        }
    }

    /**
     * 删除某个组织（班级，小组）的学生
     * @param userOffice 关联表
     * @param request
     */
    @RequestMapping("/deleteStuByGroup")
    @ResponseBody
    public void deleteStuByGroup(UserOffice userOffice,HttpServletRequest request){
        String sid = request.getParameter("id");
        String gid = request.getParameter("gid");
        System.out.println(gid+":"+sid);
        userOffice.setUserId(sid);


        List<Office> groups = officeService.findGroupByClassId(gid);
        for (Office o:
             groups) {
            userOffice.setOfficeId(o.getId());
            UserOffice userOfficeChild = userService.findUserOfficeId(userOffice);
            if (userOfficeChild!=null){
                userOfficeChild.setIsDel(0);
                userService.deleteUserOfficeByGroup(userOfficeChild);
            }
        }

        userOffice.setOfficeId(gid);
        System.out.println(userOffice);
        UserOffice userOfficeId = userService.findUserOfficeId(userOffice);
        String id = userOfficeId.getId();
        userOffice.setId(id);
        userOffice.setIsDel(0);
        userService.deleteUserOfficeByGroup(userOffice);

        System.out.println("ok");
    }

    /**
     * 向某个班级添加老师
     * @param userOffice
     * @param request
     */
    @RequestMapping("/addTeacherToClass")
    @ResponseBody
    public void addTeacherToClass(UserOffice userOffice, HttpServletRequest request){
        String id = request.getParameter("id");
        String cid = request.getParameter("cid");
        userOffice.setId(UUID.randomUUID().toString().replaceAll("-",""));
        userOffice.setUserId(id);
        userOffice.setOfficeId(cid);
        userService.insertUserOfficeByGroup(userOffice);
    }

    /**
     * 获得某班未关联考勤规则的人
     * @param request
     * @return
     */
    @RequestMapping("/getUserNoRuleByClass")
    @ResponseBody
    public Object getUserNoRuleByClass(HttpServletRequest request){
        String id = request.getParameter("s");
        List<User> users = userService.findUserNoRuleByClass(id);
        JSONModel.put("users",users);
        return  JSONModel.put();
    }

    /**
     * 获得某班关联了考勤规则的学生
     * @param office
     * @param request
     * @return
     */
    @RequestMapping("/gerUserWithRuleByClass")
    @ResponseBody
    public Object gerUserWithRuleByClass(Office office,HttpServletRequest request){
        String cid = request.getParameter("s");
        office.setId(cid);
        List<User> users = userService.findUserWithRuleByClass(office);
        JSONModel.put("users",users);
        return JSONModel.put();
    }

    /**
     * 修改某用户的考勤规则id
     * @param user
     * @param request
     */
    @RequestMapping("/updateStuWithRule")
    @ResponseBody
    public void updateStuWithRule(User user,HttpServletRequest request){
        String id = request.getParameter("id");
        String rid = request.getParameter("rid");
        System.out.println(id+":"+rid);
        user.setId(id);
        user.setKaoqinRuleid(rid);
        userService.modifyUser(user);
    }

    /**
     * 为某班没有账号的学生注册账号
     * @param request
     * @return
     */
    @RequestMapping("/createNum")
    @ResponseBody
    public Object createNum(HttpServletRequest request){
        String cid = request.getParameter("cid");
        String id = request.getParameter("id");
        System.out.println(id);
        List<User> stuNoLoginNameByClass = userService.findStuNoLoginNameByClass(cid);
        if (stuNoLoginNameByClass.size()>0){
            if (id.equals("按学号")){
                for (User u:
                        stuNoLoginNameByClass) {
                    u.setLoginname(u.getStuNumber());
                    String password = "hello123";
                    u.setPassword(SysUtil.md5(password));
                    userService.modifyUser(u);
                }
                return JSONModel.put("message","success");
            }else if (id.equals("按手机号")){
                for (User u:
                        stuNoLoginNameByClass) {
                    u.setLoginname(u.getPhone1());
                    String password = "hello123";
                    u.setPassword(SysUtil.md5(password));
                    userService.modifyUser(u);
                }
                return JSONModel.put("message","success");
            }
            return JSONModel.put("message","OK");
        }else {
            JSONModel.put("message","error");
            return JSONModel.put();
        }
    }

    /**
     * 给某班学生初始化表现分
     * @param user
     * @param request
     * @return
     */
    @RequestMapping("/InitGrade")
    @ResponseBody
    public Object InitGrade(User user,HttpServletRequest request){
        String Tgrade = request.getParameter("Tgrade");
        String Cgrade = request.getParameter("Cgrade");
        String cid = request.getParameter("cid");
        List<User> users = userService.findUserByOfficeId(cid);
        List<User> userList = new ArrayList<>();
        for (User u:
             users) {
            if (u.getGrade()==null){
                System.out.println(u.getGrade());
                userList.add(u);
            }
        }
        if (userList.size()>0){
            for (User u:
                    userList) {
                u.setGrade(Tgrade);
                u.setCutGrade(Cgrade);
                userService.modifyUser(u);
            }
            System.out.println("1");
            return JSONModel.put("message","success");
        }else {
            return JSONModel.put("message","error");
        }

    }

    /**
     * 给学生扣分
     * @param request
     */
    @RequestMapping("/subGrade")
    @ResponseBody
    public void subGrade(HttpServletRequest request){
        String id = request.getParameter("id");
        User user = userService.selectByPrimaryKey(id);
        String subGrade = user.getCutGrade();
        String tGrabde = user.getGrade();
        String newGrade = String.valueOf(Integer.parseInt(tGrabde)-Integer.parseInt(subGrade));
        System.out.println(newGrade);
        user.setGrade(newGrade);
        userService.modifyUser(user);

        String msg = request.getParameter("msg");
        Experience experience = new Experience();
        experience.setEvent("违反纪律");
        experience.setRemark(msg);
        experience.setId(UUID.randomUUID().toString().replaceAll("-",""));
        experience.setIsDel(1);
        experience.setType(1);
        experience.setUserId(id);
        Date now = new Date();
        experience.setOccurTime(now);
        experienceService.addEx(experience);
    }

    /**
     * 下载学员名单模板
     * @param request
     * @return
     * @throws IOException
     * @throws InvalidFormatException
     */
    @RequestMapping("/downloadMingdanModel")
    public ResponseEntity<byte[]> downloadMingdanModel(HttpServletRequest request) throws IOException, InvalidFormatException {
        String fileName = "学员名单模板.xlsx";
        FileInputStream fileInputStream=new FileInputStream(new File(request.getServletContext().getRealPath("/WEB-INF/upload/"+fileName)));
        byte [] bs=new byte[fileInputStream.available()];
        fileInputStream.read(bs);
        fileName=new String(fileName.getBytes("gbk"),"iso8859-1");//防止中文乱码
        HttpHeaders headers=new HttpHeaders();//设置响应头
        headers.add("Content-Disposition", "attachment;filename="+fileName);
        HttpStatus statusCode = HttpStatus.OK;//设置响应吗
        ResponseEntity<byte[]> response=new ResponseEntity<byte[]>(bs, headers, statusCode);
        return response;
    }
    @RequestMapping("/uploadMingdanModel")
    @ResponseBody
    public Object uploadMingdanModel(@RequestParam("file") MultipartFile uploadFile,HttpServletRequest request) throws IOException {
        //文件上传
        if (!uploadFile.isEmpty()){
            //文件名
            String originalFilename = uploadFile.getOriginalFilename();
            String[] split = originalFilename.split("\\.");
            if (Ext_Name.contains(split[split.length-1])){
                //修改文件名
                String fileName=originalFilename;
//                String realPath = request.getServletContext().getRealPath("/WEB-INF/upload/" + fileName);
                String realPath = "F:\\project2\\summarize\\teach\\web\\WEB-INF\\upload\\学员名单模板.xlsx";
                File file = new File(realPath);
                //将文件存入服务器
                uploadFile.transferTo(file);
//                file
                userService.insert(file);
                file.delete();
                return "The KaoqinId entry success!";
            }else {
                return "isn't excel file";
            }
        }else {
            return "the file is nothing";
        }

    }
}
