package com.tosit.ssm.service;

import com.tosit.ssm.entity.Experience;
import com.tosit.ssm.entity.User;
import com.tosit.ssm.mapper.ExperienceMapper;
import com.tosit.ssm.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import com.tosit.ssm.entity.User;
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
    @Autowired
    private UserMapper userMapper;
    /*@Override
    public List<User> getUsers() {
        return userMapper.selectUsers();
    }*/

    /**
     * 通过id查询用户
     * @param id 用户id
     * @return 返回该用户的信息
     */
    @Override
    public User getUserById(String id) {
        return userMapper.selectByPrimaryKey(id);
    }

    /**
     * 修改指定用户的信息
     * @param user user对象的id指不能为空，如果其他某些属性为空则不修改
     * @return 返回影响的行数
     */
    @Override
    public int modifyUser(User user) {
       return userMapper.updateByPrimaryKey(user);
    }

    /**
     * 未实现，，后续
     * @param id
     * @return
     */
    @Override
    public List<User> findUserByClassIdNoKaoqinNum(String id) {
        return null;
    }
}
