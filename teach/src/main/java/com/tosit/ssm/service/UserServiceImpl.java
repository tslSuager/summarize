package com.tosit.ssm.service;

import com.tosit.ssm.entity.Office;
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
     * 得到某个人未关联考勤工号的人
     * @param id
     * @return
     */
    @Override
    public List<User> findUserByClassIdNoKaoqinNum(String id) {
        Office office = new Office();
        office.setId(id);
       return userMapper.selectByClassNGH(office);
    }

    /**
     * 查询所有班级中的学生
     * @param officeId 班级id
     * @return 返回该班学生集合
     */
    @Override
    public List<User> findClassUser(String officeId) {
        return userMapper.selectUserByOfficeId(officeId);
    }
    /**
     * 通过用户名 获取user
     *
     * @param username 用户名
     * @return 返回用户集合
     */
    @Override
    public User findsUserByUserName(String username) {
        return userMapper.selectByUsername(username);
    }
}
