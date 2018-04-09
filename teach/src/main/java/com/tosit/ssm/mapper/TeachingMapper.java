package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.Teaching;
import com.tosit.ssm.entity.TeachingExample;
import com.tosit.ssm.entity.TeachingVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeachingMapper {
    long countByExample(TeachingExample example);
    int deleteByExample(TeachingExample example);
    int deleteByPrimaryKey(String id);

    int insertSelective(Teaching record);
    List<Teaching> selectByExample(TeachingExample example);
    Teaching selectByPrimaryKey(String id);
    int updateByExampleSelective(@Param("record") Teaching record, @Param("example") TeachingExample example);
    int updateByExample(@Param("record") Teaching record, @Param("example") TeachingExample example);
    int updateByPrimaryKeySelective(Teaching record);


    /**
     * 插入一个教学表
     * @param record 一个含有id的教学表对象
     * @return
     */
    int insertTeaching(Teaching record);

    /**
     * 更新一个教学表
     * @param record 一个含有id的教学表对象
     * @return
     */
    int updateByPrimaryKey(Teaching record);

    /**
     * 查看某个班的所有教学计划
     * @param officeId 班级id
     * @return
     */
    List<Teaching> selectTeachingByClass(@Param("officeId") String officeId);

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
     * 查询某人的所有教学计划与班级
     * @param userId 用户id
     * @return 返回多个计划
     */
    List<TeachingVO> selectTeachingByUserId(@Param("userId") String userId);

    /**
     * 查询某人的所有计划的所有阶段
     * @param userId 用户id
     * @return 返回多个阶段
     */
    List<Teaching> selectJieduanByUserIdByTeaching(@Param("userId")String userId);

    /**
     * 查询某人的所有计划的所有阶段的所有任务
     * @param userId 用户id
     * @return 返回多个任务
     */
    List<Teaching> selectRenwuByUserIdByJieduan(@Param("userId")String userId);



}