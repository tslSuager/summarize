package com.tosit.ssm.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Teaching {
    private String id;

    private String parentId;

    private String parentIds;

    private String planname;

    private String remarks;

    private Integer type;

    @DateTimeFormat(pattern ="yyyy-MM-dd" )
    @JSONField(format ="yyyy-MM-dd")
    private Date startTime;

    @DateTimeFormat(pattern ="yyyy-MM-dd" )
    @JSONField(format ="yyyy-MM-dd")
    private Date endTime;

    private String jishuzhuanye;

    @DateTimeFormat(pattern ="yyyy-MM-dd hh:mm:ss" )
    @JSONField(format ="yyyy-MM-dd hh:mm:ss")
    private Date createTime;

    private String createBy;

    @DateTimeFormat(pattern ="yyyy-MM-dd hh:mm:ss" )
    @JSONField(format ="yyyy-MM-dd hh:mm:ss")
    private Date updateTime;

    private String updateBy;

    private String checkUser;

    @DateTimeFormat(pattern ="yyyy-MM-dd hh:mm:ss" )
    @JSONField(format ="yyyy-MM-dd hh:mm:ss")
    private Date checkTime;

    private String checkMarks;

    private Integer checkStatus;

    private Integer isDel;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    public String getParentIds() {
        return parentIds;
    }

    public void setParentIds(String parentIds) {
        this.parentIds = parentIds == null ? null : parentIds.trim();
    }

    public String getPlanname() {
        return planname;
    }

    public void setPlanname(String planname) {
        this.planname = planname == null ? null : planname.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getJishuzhuanye() {
        return jishuzhuanye;
    }

    public void setJishuzhuanye(String jishuzhuanye) {
        this.jishuzhuanye = jishuzhuanye == null ? null : jishuzhuanye.trim();
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

    public String getCheckUser() {
        return checkUser;
    }

    public void setCheckUser(String checkUser) {
        this.checkUser = checkUser == null ? null : checkUser.trim();
    }

    public Date getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(Date checkTime) {
        this.checkTime = checkTime;
    }

    public String getCheckMarks() {
        return checkMarks;
    }

    public void setCheckMarks(String checkMarks) {
        this.checkMarks = checkMarks == null ? null : checkMarks.trim();
    }

    public Integer getCheckStatus() {
        return checkStatus;
    }

    public void setCheckStatus(Integer checkStatus) {
        this.checkStatus = checkStatus;
    }

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    @Override
    public String toString() {
        return "Teaching{" +
                "id='" + id + '\'' +
                ", parentId='" + parentId + '\'' +
                ", parentIds='" + parentIds + '\'' +
                ", planname='" + planname + '\'' +
                ", remarks='" + remarks + '\'' +
                ", type=" + type +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ", jishuzhuanye='" + jishuzhuanye + '\'' +
                ", createTime=" + createTime +
                ", createBy='" + createBy + '\'' +
                ", updateTime=" + updateTime +
                ", updateBy='" + updateBy + '\'' +
                ", checkUser='" + checkUser + '\'' +
                ", checkTime=" + checkTime +
                ", checkMarks='" + checkMarks + '\'' +
                ", checkStatus=" + checkStatus +
                ", isDel=" + isDel +
                '}';
    }
}