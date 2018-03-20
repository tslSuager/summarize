package com.tosit.ssm.service;

import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.entity.KaoqinRuleDetail;
import com.tosit.ssm.mapper.KaoqinRuleDetailMapper;
import com.tosit.ssm.mapper.KaoqinRuleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CheckingServicelmpl implements CheckingService{
    @Autowired
    private KaoqinRuleMapper kaoqinRuleMapper;
    @Autowired
    private KaoqinRuleDetailMapper kaoqinRuleDetailMapper;
    /**
     * 添加考勤规则（id不能为空）
     * @param kaoqinRule 待插入的考情规则
     * @return
     */
    @Override
    public void addKaoQinRule(KaoqinRule kaoqinRule, KaoqinRuleDetail kaoqinRuleDetail) {
        //首先再考勤规则表插入信息
         kaoqinRuleMapper.insert(kaoqinRule);
        //然后再考勤规则详情中插入详情信息
        kaoqinRuleDetailMapper.insert(kaoqinRuleDetail);
    }
}
