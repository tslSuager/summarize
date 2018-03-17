package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.KaoqinResult;
import com.tosit.ssm.entity.KaoqinResultExample;
import java.util.List;

import com.tosit.ssm.entity.Office;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface KaoqinResultMapper {
    /*long countByExample(KaoqinResultExample example);

    int deleteByExample(KaoqinResultExample example);

    int insert(KaoqinResult record);

    int insertSelective(KaoqinResult record);

    List<KaoqinResult> selectByExample(KaoqinResultExample example);

    int updateByExampleSelective(@Param("record") KaoqinResult record, @Param("example") KaoqinResultExample example);

    int updateByExample(@Param("record") KaoqinResult record, @Param("example") KaoqinResultExample example);*/

    /**
     * 获取某个班的申述或请假记录的集合
     * @param officeId
     * @return 返回值是一个考勤结果集合
     */
    List<KaoqinResult> selectByClass(@Param("officeId") String officeId);

    /**
     * 获取某个班的申述或请假总人数
     * @param officeId
     * @return 返回值是一个数字
     */
    Integer countByClass(@Param("officeId") String officeId);

    /**
     * 获取某个人的所有考勤结果
     * @param userId
     * @return 返回一个考勤结果集合
     */
     List<KaoqinResult> selectByOne(@Param("userId") String userId);

    /**
     * 获取某个班迟到的考勤结果
     * @param officeId
     * @return 返回一个考勤结果集合
     */
    List<KaoqinResult> selectByClassLate(@Param("officeId") String officeId);

}