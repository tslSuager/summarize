package com.tosit.ssm.service;

import com.tosit.ssm.entity.Task;

public interface TaskService {
    /**
     * 插入一个任务
     * @param record 插入一个含有id的任务对象
     * @return
     */
    int insertTask(Task record);

}
