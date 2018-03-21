package com.tosit.ssm.service;

import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.entity.KaoqinRuleDetail;
import com.tosit.ssm.entity.KaoqindetailVO;

public interface CheckingService {
    /**
     * 添加考勤规则和规则详情
     * @param kaoqinRule 待插入的考情规则
     * @param kaoqindetailVO 带插入的考勤详情
     * @return
     */
    public void addKaoQinRule(KaoqinRule kaoqinRule, KaoqindetailVO kaoqindetailVO);
}
