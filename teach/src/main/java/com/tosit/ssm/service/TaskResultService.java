package com.tosit.ssm.service;

import com.tosit.ssm.entity.TaskResult;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TaskResultService {
    /**
     * 插入一个任务结果表
     * @param record 一个包含id的任务结果对象
     * @return
     */
    int insertTaskResult(TaskResult record);

    /**
     * 更新一个任务结果表
     * @param record 一个包含id的任务结果对象
     * @return
     */
    int updateByPrimaryKey(TaskResult record);

    /**
     * 查询某个阶段的任务提交结果
     * @param jieduanId
     * @return
     */
    List<TaskResult> selectTaskResultByJieduanId(@Param("jieduanId")String jieduanId);
}
