package com.tosit.ssm.service;

import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.mapper.KaoqinRuleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CheckingServicelmpl implements CheckingService{
    @Autowired
    private KaoqinRuleMapper kaoqinRuleMapper;
    /**
     * 添加考勤规则（id不能为空）
     * @param kaoqinRule 待插入的考情规则
     * @return
     */
    @Override
    public int addKaoQinRule(KaoqinRule kaoqinRule) {
        return kaoqinRuleMapper.insert(kaoqinRule);
    }
}
