package com.tosit.ssm.service;

import com.tosit.ssm.entity.User;

import java.util.List;

public interface UserService {
    /*List<User> getUsers();*/

    User getUserById(String id);

    int modifyUser(User user);

    List<User> findUserByClassIdNoKaoqinNum(String id);
}
