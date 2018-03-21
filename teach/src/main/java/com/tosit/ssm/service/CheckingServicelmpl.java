package com.tosit.ssm.service;

import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.entity.KaoqinRuleDetail;
import com.tosit.ssm.entity.KaoqindetailVO;
import com.tosit.ssm.mapper.KaoqinRuleDetailMapper;
import com.tosit.ssm.mapper.KaoqinRuleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class CheckingServicelmpl implements CheckingService{
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
}
