package com.tosit.ssm.service;

import com.tosit.ssm.entity.Teaching;
import com.tosit.ssm.entity.TeachingOffice;

public interface TeachingOfficeService {
    /**
     * 插入教学组织关联表
     * @param record 一个包含id的教学组织关联表对象
     * @return
     */
    int insertTeachingOffice(TeachingOffice record);

    /**
     * 修改教学组织关联表
     * @param record 一个包含id的教学组织关联表对象
     * @return
     */
    int updateByPrimaryKey(TeachingOffice record);

    /**
     * 根据教学计划id修改教学组织关联表
     * @param
     * @return
     */
    int updateByTeachingId(String teachingId);

}
