package com.tosit.ssm.controller;

import com.tosit.ssm.entity.User;
import com.tosit.ssm.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session) {
        System.out.println("开始登陆");
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
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
        boolean isAuthenticated =  subject.isAuthenticated();
        System.out.println("是否认证通过：" + isAuthenticated);
        return "center";
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
}
