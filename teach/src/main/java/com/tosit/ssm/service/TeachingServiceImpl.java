package com.tosit.ssm.service;

import com.tosit.ssm.entity.Teaching;
import com.tosit.ssm.mapper.TeachingMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeachingServiceImpl implements TeachingService{

    @Autowired
    private TeachingMapper teachingMapper;
    @Override
    public int insertTeaching(Teaching record) {
        teachingMapper.insertTeaching(record);
        return 0;
    }

    @Override
    public List<Teaching> selectTeachingByUserId(String userId) {
        return teachingMapper.selectTeachingByUserId(userId);
    }
}
