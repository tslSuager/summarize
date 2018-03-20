package com.tosit.ssm.service;

import com.tosit.ssm.entity.Experience;
import com.tosit.ssm.entity.User;
import com.tosit.ssm.mapper.ExperienceMapper;
import com.tosit.ssm.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private ExperienceMapper experienceMapper;

    @Override
    public User selectByPrimaryKey(String userId) {
        return userMapper.selectByPrimaryKey(userId);
    }

    @Override
    public List<Experience> selectByIdToType(String userId) {
        return experienceMapper.selectByIdToType(userId);
    }

    @Override
    public List<User> selectChidaoBeforToday(String officeId) {
        return userMapper.selectChidaoBeforToday(officeId);
    }
}
