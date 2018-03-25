package com.tosit.ssm.service;

import com.tosit.ssm.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

import com.tosit.ssm.entity.User;

import java.util.Date;
import java.util.List;

public interface UserService {
    /**
     * 通过user.id 获取一user
     * @param userId
     * @return
     */
    User selectByPrimaryKey(String userId);

    /**
     * 获取某个人的所有经历
     * @param userId 用户的id
     * @return 返回该用户的type类型为1的Experience的集合
     */
    List<Experience> selectByIdToType(String userId);

    /**
     * 获取某个班今天之前迟到的人
     * @param officeId
     * @return
     */
    List<User> selectChidaoBeforToday(String officeId);
    /*List<User> getUsers();*/

    User getUserById(String id);

    int modifyUser(User user);

    List<User> findUserByClassIdNoKaoqinNum(String id);

    /**
     * 获取某个组或某个班的人
     * @param id 组织id
     * @return
     */
    List<User> findUserByOfficeId(String id);

    /**
     * 获取某个时间段某区域内未分班的人
     * @param startDate
     * @param endDate
     * @param office 包括学校id的office对象
     * @return
     */
    List<User> findUserByDateAreaNoClass(Date startDate, Date endDate, Office office);

    /**
     * 获取某个班未分组的人
     * @param office
     * @return
     */
    List<User> findUserWithClassNotInGroup(Office office);

    /**
     * 查询所有班级中的学生
     * @param officeId 班级id
     * @return 返回该班学生集合
     */
    List<User> findClassUser(String officeId);

    List<UserVO> findUserWithGroup(Office office);
}
