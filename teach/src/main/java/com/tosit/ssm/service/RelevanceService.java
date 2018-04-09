package com.tosit.ssm.service;

import com.tosit.ssm.entity.UserOffice;

public interface RelevanceService {

    /**
     * 添加一个学生与某个区域关联的关联对象
     * @param userOffice
     * @return
     */
    int addUserOffice(UserOffice userOffice);

    /**
     *  修改任意用户区域关联表的任意一个字段
     * @param userOffice
     */
    void updateUserOffice(UserOffice userOffice);
}
