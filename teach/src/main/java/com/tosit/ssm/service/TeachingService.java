package com.tosit.ssm.service;

import com.tosit.ssm.entity.Teaching;
import com.tosit.ssm.entity.TeachingOffice;
import com.tosit.ssm.entity.TeachingVO;
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
     * 查询某人的所有教学计划与班级
     * @param userId 用户id
     * @return 返回多个计划
     */
    List<TeachingVO> selectTeachingByUserId(@Param("userId") String userId);

    /**
     * 查看某个教学计划的所有阶段
     * @param teachingId 教学计划的id
     * @return  返回多个阶段
     */
    List<Teaching> selectJieduanByTeaching(@Param("teachingId")String teachingId);

    /**
     * 查看某个阶段的所有任务
     * @param teachingId  阶段id
     * @return 返回多个任务
     */
    List<Teaching> selectRenwuByJieduan(@Param("teachingId")String teachingId);

    /**
     * 查看某班的教学计划
     * @param cid
     * @return
     */
    List<Teaching> findAllTeachingByClass(String cid);

    /**
     * 查看所有的教学计划
     * @return
     */
    List<Teaching> findAllTeaching();
}
