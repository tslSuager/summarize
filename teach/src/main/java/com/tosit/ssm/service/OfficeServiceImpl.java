package com.tosit.ssm.service;

import com.tosit.ssm.entity.Office;
import com.tosit.ssm.mapper.OfficeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OfficeServiceImpl implements OfficeService{
    @Autowired
    OfficeMapper officeMapper;
    public void createOffice(Office office) {
        officeMapper.insertOffice(office);
    }

    @Override
    public List<Office> getArea() {
        return null;
    }

    @Override
    public List<Office> getAllClass() {
        return officeMapper.selectOfficeByOfficeType(3);
    }

    public List<Office> getAllArea() {
        return  officeMapper.selectAllArea();
    }

    @Override
    public List<Office> selectOfficeByManage(String userId) {
        return officeMapper.selectOfficeByManage(userId);
    }



}
