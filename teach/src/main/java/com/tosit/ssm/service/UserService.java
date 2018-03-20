package com.tosit.ssm.service;

import com.tosit.ssm.entity.Experience;
import com.tosit.ssm.entity.User;
import org.apache.ibatis.annotations.Param;

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
}
