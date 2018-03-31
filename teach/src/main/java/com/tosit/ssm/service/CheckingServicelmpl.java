package com.tosit.ssm.service;

import com.tosit.ssm.entity.*;
import com.tosit.ssm.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

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
    public List<KaoqinResultVO> selectByClassLate(String officeId) {
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
    @Autowired
    private KaoqinRuleMapper kaoqinRuleMapper;
    @Autowired
    private KaoqinRuleDetailMapper kaoqinRuleDetailMapper;
    /**
     * 添加考勤规则和规则详情
     * @param kaoqinRule 待插入的考情规则
     * @param kaoqindetailVO 带插入的考勤详情
     * @return
     */
    @Override
    public void addKaoQinRule(KaoqinRule kaoqinRule, KaoqindetailVO kaoqindetailVO) {
        String ruleId = UUID.randomUUID().toString().replaceAll("-","");
        kaoqinRule.setId(ruleId);
        //首先再考勤规则表插入信息
         kaoqinRuleMapper.insert(kaoqinRule);
        //然后再考勤规则详情中插入详情信息
        List<KaoqinRuleDetail> kaoqinRuleDetails = kaoqindetailVO.getKrd();
        for (int i=( kaoqinRuleDetails.get(0).getWeekDay()==null?1:0);i<kaoqinRuleDetails.size();i++) {
            KaoqinRuleDetail k = kaoqinRuleDetails.get(i);
            k.setKaoqinRuleId(ruleId);
            String detailId = UUID.randomUUID().toString().replaceAll("-", "");
            k.setId(detailId);
            int row = kaoqinRuleDetailMapper.insertKaoqinRuleDetail(k);
        }
//        kaoqinRuleDetailMapper.insert();
    }

    @Override
    public String modifyChecking(KaoqinResult data) {
        Integer i = kaoqinResultMapper.updateByPrimaryKey(data);
        String status="success";
        if (i == null) {
            status="fail";
        }
        return status;
    }

    @Override
    public String createLeave(KaoqinResult kaoqinResult) {
        Integer i = kaoqinResultMapper.insertKaoqinResult(kaoqinResult);
        String status="success";
        if (i == null) {
            status="fail";
        }
        return status;
    }
}
