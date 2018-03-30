package com.tosit.ssm.service;

import com.tosit.ssm.entity.*;
import com.tosit.ssm.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
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
    public List<KaoqinResultVO> selectByClass(String officeId) {
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
        for (/*int i=( kaoqinRuleDetails.get(0).getWeekDay()==null?1:0)*/int i=0;i<kaoqinRuleDetails.size();i++) {
            KaoqinRuleDetail k = kaoqinRuleDetails.get(i);
            if (k.getBrushEndtime1() == null){
                continue;
            }
            k.setKaoqinRuleId(ruleId);
            String detailId = UUID.randomUUID().toString().replaceAll("-", "");
            k.setId(detailId);
            int row = kaoqinRuleDetailMapper.insertKaoqinRuleDetail(k);
        }
//        kaoqinRuleDetailMapper.insert();
    }

    /**
     * 获取某个班的申述或请假记录的集合
     *
     * @param officeId
     * @return 返回值是一个考勤结果集合
     */
    @Override
    public List<KaoqinResult> findKaoqinRemarkAndQingJiaRecord(String officeId) {
        return kaoqinResultMapper.selectByClass(officeId);
    }

    /**
     * 获取所有的考勤规则和相关详情
     *
     * @return
     */
    @Override
    public List<KaoqinRule> findKaoqinRulesIncludeDetail() {
        return kaoqinRuleMapper.selcetKaoqinRuleAndDetails();
    }

    /**
     * 添加考勤详情
     *
     * @param kaoqinRule 属性id 不能为空
     */
    @Override
    public void addKaoQinRuleDetail(KaoqinRule kaoqinRule) {
        kaoqinRuleDetailMapper.insertKaoqinRuleDetail(kaoqinRule.getKaoqinRuleDetails().get(0));
    }

    /**
     * 更新考勤详情（根据id）
     *
     * @param kaoqinRuleDetail
     */
    @Override
    public int updateKaoqinDetail(KaoqinRuleDetail kaoqinRuleDetail) {
       return kaoqinRuleDetailMapper.updateByPrimaryKey(kaoqinRuleDetail);
    }
}
