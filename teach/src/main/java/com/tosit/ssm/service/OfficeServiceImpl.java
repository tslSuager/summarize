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

    @Override
    public List<Office> getAllClass() {
        return officeMapper.selectOfficeByOfficeType(3);
    }

    public List<Office> getAllArea() {
        return  officeMapper.selectAllArea();
    }

    public List<Office> findClassByTeacherAndDate(Office office){
        return officeMapper.selectOfficeByMasterAndDate(office);
    }
    @Override
    public List<Office> selectOfficeByManage(String userId) {
        return officeMapper.selectOfficeByManage(userId);
    }

    @Override
    public List<Office> selectOfficeByUserId(String userId) {
        return officeMapper.selectOfficeByUserId(userId);
    }

    @Override
    public List<Office> selectGroupByUserId(String userId) {
        return officeMapper.selectGroupByUserId(userId);
    }

    public List<Office> findClassByTeacherAndSchool(Office office){
        return officeMapper.selectOfficeByMasterAndSchool(office);
    }

    public void addOffice(Office office) {
        officeMapper.insertOffice(office);
    }

    public List<Office> findGroupByClassId(String id) {
        return officeMapper.selectGroupByClassId(id);
    }

    public int deleteOffice(Office office) {
        return officeMapper.updateByPrimaryKey(office);
    }

    public Office findOfficeById(String id) {
        return officeMapper.selectByPrimaryKey(id);
    }

    public List<Office> findIdByParent(Office office) {
        return officeMapper.selectIdByParent(office);
    }
}
