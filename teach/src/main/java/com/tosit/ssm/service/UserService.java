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
    /**
     * 得到某个人未关联考勤工号的人
     * @param id  班级id
     * @return
     */
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

    /**
     * 查询某个班的学生包括组号
     * @param office
     * @return
     */
    List<UserVO> findUserWithGroup(Office office);

    /**
     * 查询所有没有与某班级关联的教员
     * @param office
     * @return
     */
    List<User> findAllTeacherNoThisClass(Office office);

    /**
     * 添加一个学生到组织
     * @param userOffice
     */
    void insertUserOfficeByGroup(UserOffice userOffice);

    /**
     * 删除组织内的学生
     * @param userOffice
     */
    void deleteUserOfficeByGroup(UserOffice userOffice);

    /**
     * 按照学生id和office id 查找UserOffice关联表id
     * @param userOffice
     */
    UserOffice findUserOfficeId(UserOffice userOffice);

    /**
     * 按照组织Id查找该组织所有的关联表
     * @param office
     * @return
     */
    List<UserOffice> findIdByOid(Office office);

    /**
     * 按照班级id查找该班没有关联考勤规则的学生
     * @param id
     */
    List<User> findUserNoRuleByClass(String id);

    /**
     * 按照班级id查找该班关联了考勤规则的学生
     * @param office
     * @return
     */
    List<User> findUserWithRuleByClass(Office office);
}
