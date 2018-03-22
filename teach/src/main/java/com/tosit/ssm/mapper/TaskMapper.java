package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.Task;
import com.tosit.ssm.entity.TaskExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TaskMapper {
    long countByExample(TaskExample example);

    int deleteByExample(TaskExample example);

    int deleteByPrimaryKey(String id);

//    int insert(Task record);

    int insertSelective(Task record);

    List<Task> selectByExample(TaskExample example);

    Task selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Task record, @Param("example") TaskExample example);

    int updateByExample(@Param("record") Task record, @Param("example") TaskExample example);

    int updateByPrimaryKeySelective(Task record);

//    int updateByPrimaryKey(Task record);


    /**
     * 插入一个任务
     * @param record 插入一个含有id的任务对象
     * @return
     */
    int insertTask(Task record);

    /**
     * 更新一个任务
     * @param record 更新一个含有id的任务对象
     * @return
     */
    int updateByPrimaryKey(Task record);

}