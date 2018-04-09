package com.tosit.ssm.service;

import com.tosit.ssm.entity.TaskResult;
import com.tosit.ssm.mapper.TaskResultMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskResultServiceImpl implements TaskResultService {
    @Autowired
    private TaskResultMapper taskResultMapper;

    @Override
    public int insertTaskResult(TaskResult record) {
        return taskResultMapper.insertTaskResult(record);
    }

    @Override
    public int updateByPrimaryKey(TaskResult record) {
        return taskResultMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<TaskResult> selectTaskResultByJieduanId(String jieduanId) {
        return taskResultMapper.selectTaskResultByJieduanId(jieduanId);
    }
}
