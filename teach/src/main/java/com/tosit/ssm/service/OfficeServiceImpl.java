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

    public List<Office> getArea() {
        return null;
    }

    public List<Office> getAllArea() {
        return  officeMapper.selectAllArea();
    }

    public List<Office> findClassByTeacherAndDate(Office office){
        return officeMapper.selectOfficeByMasterAndDate(office);
    }

    public List<Office> findClassByTeacherAndSchool(Office office){
        return officeMapper.selectOfficeByMasterAndSchool(office);
    }

    public void addOffice(Office office) {
        officeMapper.insertOffice(office);
    }
}
