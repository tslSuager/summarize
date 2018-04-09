package com.tosit.ssm.entity;

import java.util.List;

public class UserCkRuleRecord extends User{
    private KaoqinRuleDetail kaoqinRuleDetails;
    private List<KaoqinRecords> records;

    public KaoqinRuleDetail getKaoqinRuleDetails() {
        return kaoqinRuleDetails;
    }

    public void setKaoqinRuleDetails(KaoqinRuleDetail kaoqinRuleDetails) {
        this.kaoqinRuleDetails = kaoqinRuleDetails;
    }

    public List<KaoqinRecords> getRecords() {
        return records;
    }

    public void setRecords(List<KaoqinRecords> records) {
        this.records = records;
    }

    @Override
    public String toString() {
        return "UserCkRuleRecord{" +
                "kaoqinRuleDetails=" + kaoqinRuleDetails +
                ", records=" + records +
                '}';
    }
}
