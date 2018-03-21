package com.tosit.ssm.controller;

import com.tosit.ssm.entity.User;
import com.tosit.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @RequestMapping(value = "/getUserByClassIdNoKaoqinNum",method = RequestMethod.POST)
    @ResponseBody
    public Object getUserByClassIdNoKaoqinNum(String id){
        List<User> users= userService.findUserByClassIdNoKaoqinNum(id);
        return users ;
    }
}
