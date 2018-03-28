package com.tosit.ssm.entity;

import java.util.Date;

public class Utilttles {
    private String id;

    private String dormitoryId;

    private Integer cinWaterCount;

    private Integer cinElectricityCount;

    private Integer cinGasCount;

    private Date recordTime;

    private String createBy;

    private Date createTime;

    private Integer isDel;

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel ;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getDormitoryId() {
        return dormitoryId;
    }

    public void setDormitoryId(String dormitoryId) {
        this.dormitoryId = dormitoryId == null ? null : dormitoryId.trim();
    }

    public Integer getCinWaterCount() {
        return cinWaterCount;
    }

    public void setCinWaterCount(Integer cinWaterCount) {
        this.cinWaterCount = cinWaterCount;
    }

    public Integer getCinElectricityCount() {
        return cinElectricityCount;
    }

    public void setCinElectricityCount(Integer cinElectricityCount) {
        this.cinElectricityCount = cinElectricityCount;
    }

    public Integer getCinGasCount() {
        return cinGasCount;
    }

    public void setCinGasCount(Integer cinGasCount) {
        this.cinGasCount = cinGasCount;
    }

    public Date getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Date recordTime) {
        this.recordTime = recordTime;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy == null ? null : createBy.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}