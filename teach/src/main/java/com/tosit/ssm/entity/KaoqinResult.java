package com.tosit.ssm.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class KaoqinResult {
    private String id;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date date;

    private String userId;

    private Integer status;

    private String remark;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date lastTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date createresulttime;

    private Integer kaoqinRemarkStatus;

    private Integer kaoqinRemarkType;

    private String kaoqinRemarkContent;

    private String kaoqinRemarkDisposeuser;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date kaoqinRemarkDisposetime;

    private Integer kaoqinRemarkDisposeResult;

    private Integer kaoqinShenshuStatus;

    private Integer kaoqinShenshuType;

    private String kaoqinShenshuContent;

    private String kaoqinShenshuDisposeuser;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date kaoqinShenshuDisposetime;

    private Integer kaoqinShenshuDisposeresult;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date createTime;

    private String createBy;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date updateTime;

    private String updateBy;

    private Integer isDel;

    private String kaoqinShenshuReply;

    private String kaoqinRemarkReply;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date kaoqinShenshuReqtime;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date kaoqinRemarkReqtime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Date getLastTime() {
        return lastTime;
    }

    public void setLastTime(Date lastTime) {
        this.lastTime = lastTime;
    }

    public Date getCreateresulttime() {
        return createresulttime;
    }

    public void setCreateresulttime(Date createresulttime) {
        this.createresulttime = createresulttime;
    }

    public Integer getKaoqinRemarkStatus() {
        return kaoqinRemarkStatus;
    }

    public void setKaoqinRemarkStatus(Integer kaoqinRemarkStatus) {
        this.kaoqinRemarkStatus = kaoqinRemarkStatus;
    }

    public Integer getKaoqinRemarkType() {
        return kaoqinRemarkType;
    }

    public void setKaoqinRemarkType(Integer kaoqinRemarkType) {
        this.kaoqinRemarkType = kaoqinRemarkType;
    }

    public String getKaoqinRemarkContent() {
        return kaoqinRemarkContent;
    }

    public void setKaoqinRemarkContent(String kaoqinRemarkContent) {
        this.kaoqinRemarkContent = kaoqinRemarkContent == null ? null : kaoqinRemarkContent.trim();
    }

    public String getKaoqinRemarkDisposeuser() {
        return kaoqinRemarkDisposeuser;
    }

    public void setKaoqinRemarkDisposeuser(String kaoqinRemarkDisposeuser) {
        this.kaoqinRemarkDisposeuser = kaoqinRemarkDisposeuser == null ? null : kaoqinRemarkDisposeuser.trim();
    }

    public Date getKaoqinRemarkDisposetime() {
        return kaoqinRemarkDisposetime;
    }

    public void setKaoqinRemarkDisposetime(Date kaoqinRemarkDisposetime) {
        this.kaoqinRemarkDisposetime = kaoqinRemarkDisposetime;
    }

    public Integer getKaoqinRemarkDisposeResult() {
        return kaoqinRemarkDisposeResult;
    }

    public void setKaoqinRemarkDisposeResult(Integer kaoqinRemarkDisposeResult) {
        this.kaoqinRemarkDisposeResult = kaoqinRemarkDisposeResult;
    }

    public Integer getKaoqinShenshuStatus() {
        return kaoqinShenshuStatus;
    }

    public void setKaoqinShenshuStatus(Integer kaoqinShenshuStatus) {
        this.kaoqinShenshuStatus = kaoqinShenshuStatus;
    }

    public Integer getKaoqinShenshuType() {
        return kaoqinShenshuType;
    }

    public void setKaoqinShenshuType(Integer kaoqinShenshuType) {
        this.kaoqinShenshuType = kaoqinShenshuType;
    }

    public String getKaoqinShenshuContent() {
        return kaoqinShenshuContent;
    }

    public void setKaoqinShenshuContent(String kaoqinShenshuContent) {
        this.kaoqinShenshuContent = kaoqinShenshuContent == null ? null : kaoqinShenshuContent.trim();
    }

    public String getKaoqinShenshuDisposeuser() {
        return kaoqinShenshuDisposeuser;
    }

    public void setKaoqinShenshuDisposeuser(String kaoqinShenshuDisposeuser) {
        this.kaoqinShenshuDisposeuser = kaoqinShenshuDisposeuser == null ? null : kaoqinShenshuDisposeuser.trim();
    }

    public Date getKaoqinShenshuDisposetime() {
        return kaoqinShenshuDisposetime;
    }

    public void setKaoqinShenshuDisposetime(Date kaoqinShenshuDisposetime) {
        this.kaoqinShenshuDisposetime = kaoqinShenshuDisposetime;
    }

    public Integer getKaoqinShenshuDisposeresult() {
        return kaoqinShenshuDisposeresult;
    }

    public void setKaoqinShenshuDisposeresult(Integer kaoqinShenshuDisposeresult) {
        this.kaoqinShenshuDisposeresult = kaoqinShenshuDisposeresult;
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

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    public String getKaoqinShenshuReply() {
        return kaoqinShenshuReply;
    }

    public void setKaoqinShenshuReply(String kaoqinShenshuReply) {
        this.kaoqinShenshuReply = kaoqinShenshuReply == null ? null : kaoqinShenshuReply.trim();
    }

    public String getKaoqinRemarkReply() {
        return kaoqinRemarkReply;
    }

    public void setKaoqinRemarkReply(String kaoqinRemarkReply) {
        this.kaoqinRemarkReply = kaoqinRemarkReply == null ? null : kaoqinRemarkReply.trim();
    }

    public Date getKaoqinShenshuReqtime() {
        return kaoqinShenshuReqtime;
    }

    public void setKaoqinShenshuReqtime(Date kaoqinShenshuReqtime) {
        this.kaoqinShenshuReqtime = kaoqinShenshuReqtime;
    }

    public Date getKaoqinRemarkReqtime() {
        return kaoqinRemarkReqtime;
    }

    public void setKaoqinRemarkReqtime(Date kaoqinRemarkReqtime) {
        this.kaoqinRemarkReqtime = kaoqinRemarkReqtime;
    }
}