package com.tosit.ssm.service;

import com.tosit.ssm.entity.TeachingOffice;
import com.tosit.ssm.mapper.TeachingOfficeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeachingOfficeServiceImpl implements TeachingOfficeService{
    @Autowired
    private TeachingOfficeMapper teachingOfficeMapper;

    @Override
    public int insertTeachingOffice(TeachingOffice record) {
        return teachingOfficeMapper.insertTeachingOffice(record);
    }

    @Override
    public int updateByPrimaryKey(TeachingOffice record) {
        return teachingOfficeMapper.updateByPrimaryKey(record);
    }
}
