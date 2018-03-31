package com.tosit.ssm.service;

import com.tosit.ssm.entity.Teaching;
import com.tosit.ssm.entity.TeachingOffice;
import com.tosit.ssm.entity.TeachingVO;
import com.tosit.ssm.mapper.TeachingMapper;
import com.tosit.ssm.mapper.TeachingOfficeMapper;
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
    public List<TeachingVO> selectTeachingByUserId(String userId) {
        return teachingMapper.selectTeachingByUserId(userId);
    }

    @Override
    public List<Teaching> selectJieduanByTeaching(String teachingId) {
        return teachingMapper.selectJieduanByTeaching(teachingId);
    }

    @Override
    public List<Teaching> selectRenwuByJieduan(String teachingId) {
        return teachingMapper.selectRenwuByJieduan(teachingId);
    }

    @Override
    public List<Teaching> findAllTeachingByClass(String cid) {
        return teachingMapper.selectTeachingByClass(cid);
    }

    @Override
    public List<Teaching> findAllTeaching() {
        return teachingMapper.selectAllTeaching();
    }
}
