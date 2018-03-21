package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.TaskResult;
import com.tosit.ssm.entity.TaskResultExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TaskResultMapper {
    long countByExample(TaskResultExample example);

    int deleteByExample(TaskResultExample example);

    int deleteByPrimaryKey(String id);

    int insert(TaskResult record);

    int insertSelective(TaskResult record);

    List<TaskResult> selectByExample(TaskResultExample example);

    TaskResult selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") TaskResult record, @Param("example") TaskResultExample example);

    int updateByExample(@Param("record") TaskResult record, @Param("example") TaskResultExample example);

    int updateByPrimaryKeySelective(TaskResult record);

    int updateByPrimaryKey(TaskResult record);
}