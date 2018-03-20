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


    public List<Office> getAllArea() {
        return  officeMapper.selectAllArea();
    }


}
