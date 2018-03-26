package com.tosit.ssm.entity;

import java.util.Date;

public class DormitoryInfo {
    private String id;
    private String dormitoryName;
    private Integer maxNum;
    private Integer curNum;
    private String remark;
    private String createBy;
    private Date updateTime;
    private Date createTime;
    private String updateBy2;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }
    public String getDormitoryName() {
        return dormitoryName;
    }
    public void setDormitoryName(String dormitoryName) {
        this.dormitoryName = dormitoryName == null ? null : dormitoryName.trim();
    }
    public Integer getMaxNum() {
        return maxNum;
    }
    public void setMaxNum(Integer maxNum) {
        this.maxNum = maxNum;
    }

    public Integer getCurNum() {
        return curNum;
    }

    public void setCurNum(Integer curNum) {
        this.curNum = curNum;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateBy2() {
        return updateBy2;
    }

    public void setUpdateBy2(String updateBy2) {
        this.updateBy2 = updateBy2 == null ? null : updateBy2.trim();
    }
}