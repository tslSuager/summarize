package com.tosit.ssm.service;

import com.tosit.ssm.entity.Task;
import com.tosit.ssm.entity.TaskResult;
import com.tosit.ssm.mapper.TaskMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskServiceImpl implements TaskService {
    @Autowired
    private TaskMapper taskMapper;
    @Override
    public int insertTask(Task record) {
        return taskMapper.insertTask(record);
    }

}
