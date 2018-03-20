package com.tosit.ssm.service;

import com.tosit.ssm.entity.UserOffice;
import com.tosit.ssm.mapper.UserOfficeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RelevanceServicelmpl implements RelevanceService{
    @Autowired
    private UserOfficeMapper userOfficeMapper;

    @Override
    public int addUserOffice(UserOffice userOffice) {
        return userOfficeMapper.insertUserOffice(userOffice);
    }

    @Override
    public void updateUserOffice(UserOffice userOffice) {
        userOfficeMapper.updateByPrimaryKey(userOffice);
    }
}
