package com.tosit.ssm.service;

import com.tosit.ssm.entity.User;

import java.util.List;

public interface UserService {
    /*List<User> getUsers();*/

    User getUserById(String id);

    int modifyUser(User user);
    /**
     * 得到某个人未关联考勤工号的人
     * @param id  班级id
     * @return
     */
    List<User> findUserByClassIdNoKaoqinNum(String id);
}
