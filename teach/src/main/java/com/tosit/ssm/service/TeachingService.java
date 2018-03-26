package com.tosit.ssm.service;

import com.tosit.ssm.entity.Teaching;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeachingService {
    /**
     * 插入一个教学计划
     * @param record 一个含有id的教学表对象
     * @return
     */
    int insertTeaching(Teaching record);

    /**
     * 查询某人的所有教学计划
     * @param userId 用户id
     * @return 返回多个计划
     */
    List<Teaching> selectTeachingByUserId(@Param("userId") String userId);
}
