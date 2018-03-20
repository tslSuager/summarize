package com.tosit.ssm.service;

import com.tosit.ssm.entity.Office;
import com.tosit.ssm.entity.User;

import java.util.Date;
import java.util.List;

public interface UserService {
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
}
