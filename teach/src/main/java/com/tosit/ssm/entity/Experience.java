package com.tosit.ssm.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Experience {
    private String id;

    private String event;
    @DateTimeFormat(pattern ="yyyy-MM-dd hh:mm:ss" )
    @JSONField(format ="yyyy-MM-dd hh:mm:ss")
    private Date occurTime;

    private String remark;

    private String userId;

    private Integer isDel;

    private Integer type;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event == null ? null : event.trim();
    }

    public Date getOccurTime() {
        return occurTime;
    }

    public void setOccurTime(Date occurTime) {
        this.occurTime = occurTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Experience{" +
                "id='" + id + '\'' +
                ", event='" + event + '\'' +
                ", occurTime=" + occurTime +
                ", remark='" + remark + '\'' +
                ", userId='" + userId + '\'' +
                ", isDel=" + isDel +
                ", type=" + type +
                '}';
    }
}