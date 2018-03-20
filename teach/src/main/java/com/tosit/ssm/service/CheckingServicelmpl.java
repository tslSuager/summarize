package com.tosit.ssm.service;

import com.tosit.ssm.entity.KaoqinRecords;
import com.tosit.ssm.entity.KaoqinResult;
import com.tosit.ssm.entity.Office;
import com.tosit.ssm.mapper.KaoqinRecordsMapper;
import com.tosit.ssm.mapper.KaoqinResultMapper;
import com.tosit.ssm.mapper.OfficeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CheckingServicelmpl implements CheckingService{
    @Autowired
    private KaoqinRecordsMapper kaoqinRecordsMapper;
    @Autowired
    private KaoqinResultMapper kaoqinResultMapper;
    @Autowired
    private OfficeMapper officeMapper;

    @Override
    public List<KaoqinRecords> findKaoqinRecordsByIdByDate(KaoqinRecords kaoqinRecords) {

        return kaoqinRecordsMapper.selectByIdByDate(kaoqinRecords);
    }

    @Override
    public List<KaoqinResult> findOneById(String userId) {
        return kaoqinResultMapper.selectByOne(userId);
    }

    @Override
    public int addKaoqinResultById(KaoqinResult record) {
        kaoqinResultMapper.insertKaoqinResult(record);
        return 0;
    }

    @Override
    public List<KaoqinResult> selectByClassLate(String officeId) {
        return kaoqinResultMapper.selectByClassLate(officeId);
    }

    @Override
    public List<Office> selectOfficeByManage(String name) {
        return officeMapper.selectOfficeByManage(name);
    }

    @Override
    public Integer countByClass(String officeId) {
        return kaoqinResultMapper.countByClass(officeId);
    }

    @Override
    public List<KaoqinResult> selectByClass(String officeId) {
        return kaoqinResultMapper.selectByClass(officeId);
    }

    @Override
    public int updateByPrimaryKey(KaoqinResult record) {
        kaoqinResultMapper.updateByPrimaryKey(record);
        return 0;
    }
}
