package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.KaoqinRecords;
import com.tosit.ssm.entity.KaoqinRecordsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

@Repository
public interface KaoqinRecordsMapper {
    long countByExample(KaoqinRecordsExample example);

    int deleteByExample(KaoqinRecordsExample example);

    int insert(KaoqinRecords record);

    int insertSelective(KaoqinRecords record);

    List<KaoqinRecords> selectByExample(KaoqinRecordsExample example);

    int updateByExampleSelective(@Param("record") KaoqinRecords record, @Param("example") KaoqinRecordsExample example);

    int updateByExample(@Param("record") KaoqinRecords record, @Param("example") KaoqinRecordsExample example);


    /**
     *植入一个的考勤规则
     * @param record 植入的考勤规则的对象
     * @return
     */
    int insertKaoqinRecords(KaoqinRecords record);
    /**
     * 修改任意一个考勤规则的任意一个字段
     * @param record 具有修改字段和修改id的考勤规则对象
     * @return
     */
    int updateByPrimaryKey(@Param("record") KaoqinRecords record);

    /**
     * 查询某人某天的考勤记录
     * @param record 包含需要查询的日期字段 和 查询某人的id
     * @return 返回某人该天的所有记录
     */
    List<KaoqinRecords> selectByIdByDate(@Param("record") KaoqinRecords record);
}