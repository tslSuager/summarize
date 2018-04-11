package com.tosit.ssm.service;

import com.tosit.ssm.entity.Task;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TaskService {
    /**
     * 插入一个任务
     * @param record 插入一个含有id的任务对象
     * @return
     */
    int insertTask(Task record);

    /**
     * 通过任务id获取task详情
     * @param renwuId
     * @return
     */
    List<Task> selectTaskByRenwuId(@Param("renwuId")String renwuId);

}
