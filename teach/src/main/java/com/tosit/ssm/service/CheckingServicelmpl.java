package com.tosit.ssm.service;

import com.tosit.ssm.entity.KaoqinRecords;
import com.tosit.ssm.entity.KaoqinResult;
import com.tosit.ssm.entity.Office;
import com.tosit.ssm.mapper.KaoqinRecordsMapper;
import com.tosit.ssm.mapper.KaoqinResultMapper;
import com.tosit.ssm.mapper.OfficeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.entity.KaoqinRuleDetail;
import com.tosit.ssm.entity.KaoqindetailVO;
import com.tosit.ssm.mapper.KaoqinRuleDetailMapper;
import com.tosit.ssm.mapper.KaoqinRuleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
    @Autowired
    private KaoqinRuleMapper kaoqinRuleMapper;
    @Autowired
    private KaoqinRuleDetailMapper kaoqinRuleDetailMapper;
    /**
     * 添加考勤规则和规则详情
     * @param kaoqinRule 待插入的考情规则
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
        for (int i=1;i<kaoqinRuleDetails.size();i++) {
            KaoqinRuleDetail k = kaoqinRuleDetails.get(i);
            k.setKaoqinRuleId(ruleId);
            String detailId = UUID.randomUUID().toString().replaceAll("-", "");
            k.setId(detailId);
            int row = kaoqinRuleDetailMapper.insertKaoqinRuleDetail(k);
        }
//        kaoqinRuleDetailMapper.insert();
    }
}
