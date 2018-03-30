package com.tosit.ssm.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class KaoqinRule {
    private String id;

    private String rulename;

    private String remarks;

    private Integer ruleType;

    private Integer isDefault;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime=new Date();

    private String createBy;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date updateTime;

    private String updateBy;

    //HRQ 添加
    private List<KaoqinRuleDetail> kaoqinRuleDetails;
    public KaoqinRule() {
    }

    //全参构造器
    public KaoqinRule(String id, String rulename, String remarks, Integer ruleType, Integer isDefault, Date createTime, String createBy, Date updateTime, String updateBy, List<KaoqinRuleDetail> kaoqinRuleDetails) {
        this.id = id;
        this.rulename = rulename;
        this.remarks = remarks;
        this.ruleType = ruleType;
        this.isDefault = isDefault;
        this.createTime = createTime;
        this.createBy = createBy;
        this.updateTime = updateTime;
        this.updateBy = updateBy;
        this.kaoqinRuleDetails = kaoqinRuleDetails;
    }
    //不包含规则详情
    public KaoqinRule(String id, String rulename, String remarks, Integer ruleType, Integer isDefault, Date createTime, String createBy, Date updateTime, String updateBy) {
        this.id = id;
        this.rulename = rulename;
        this.remarks = remarks;
        this.ruleType = ruleType;
        this.isDefault = isDefault;
        this.createTime = createTime;
        this.createBy = createBy;
        this.updateTime = updateTime;
        this.updateBy = updateBy;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getRulename() {
        return rulename;
    }

    public void setRulename(String rulename) {
        this.rulename = rulename == null ? null : rulename.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public Integer getRuleType() {
        return ruleType;
    }

    public void setRuleType(Integer ruleType) {
        this.ruleType = ruleType;
    }

    public Integer getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(Integer isDefault) {
        this.isDefault = isDefault;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy == null ? null : createBy.trim();
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy == null ? null : updateBy.trim();
    }

    public List<KaoqinRuleDetail> getKaoqinRuleDetails() {
        return kaoqinRuleDetails;
    }

    public void setKaoqinRuleDetails(List<KaoqinRuleDetail> kaoqinRuleDetails) {
        this.kaoqinRuleDetails = kaoqinRuleDetails;
    }

    @Override
    public String toString() {
        return "KaoqinRule{" + "id='" + id + '\'' + ", rulename='" + rulename + '\'' + ", remarks='" + remarks + '\'' + ", ruleType=" + ruleType + ", isDefault=" + isDefault + ", createTime=" + createTime + ", createBy='" + createBy + '\'' + ", updateTime=" + updateTime + ", updateBy='" + updateBy + '\'' + ", kaoqinRuleDetails=" + kaoqinRuleDetails + '}';
    }
}