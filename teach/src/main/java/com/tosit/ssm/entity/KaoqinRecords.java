package com.tosit.ssm.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class KaoqinRecords {
    private String id;

    private String keyNumber;

    private String name;

    private Integer sequenceNumber;
    @JSONField(format = "yyyy-MM-dd")
    private Date brushtime;

    private String checkType;

    private String machineNumber;

    private String machineName;

    private String kaoqinResultId;

    private Integer result;

    private String resultText;

    private Integer isYouxiao;

    private String userId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getKeyNumber() {
        return keyNumber;
    }

    public void setKeyNumber(String keyNumber) {
        this.keyNumber = keyNumber == null ? null : keyNumber.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getSequenceNumber() {
        return sequenceNumber;
    }

    public void setSequenceNumber(Integer sequenceNumber) {
        this.sequenceNumber = sequenceNumber;
    }

    public Date getBrushtime() {
        return brushtime;
    }

    public void setBrushtime(Date brushtime) {
        this.brushtime = brushtime;
    }

    public String getCheckType() {
        return checkType;
    }

    public void setCheckType(String checkType) {
        this.checkType = checkType == null ? null : checkType.trim();
    }

    public String getMachineNumber() {
        return machineNumber;
    }

    public void setMachineNumber(String machineNumber) {
        this.machineNumber = machineNumber == null ? null : machineNumber.trim();
    }

    public String getMachineName() {
        return machineName;
    }

    public void setMachineName(String machineName) {
        this.machineName = machineName == null ? null : machineName.trim();
    }

    public String getKaoqinResultId() {
        return kaoqinResultId;
    }

    public void setKaoqinResultId(String kaoqinResultId) {
        this.kaoqinResultId = kaoqinResultId == null ? null : kaoqinResultId.trim();
    }

    public Integer getResult() {
        return result;
    }

    public void setResult(Integer result) {
        this.result = result;
    }

    public String getResultText() {
        return resultText;
    }

    public void setResultText(String resultText) {
        this.resultText = resultText == null ? null : resultText.trim();
    }

    public Integer getIsYouxiao() {
        return isYouxiao;
    }

    public void setIsYouxiao(Integer isYouxiao) {
        this.isYouxiao = isYouxiao;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    @Override
    public String toString() {
        return "KaoqinRecords{" +
                "id='" + id + '\'' +
                ", keyNumber='" + keyNumber + '\'' +
                ", name='" + name + '\'' +
                ", sequenceNumber=" + sequenceNumber +
                ", brushtime=" + brushtime +
                ", checkType='" + checkType + '\'' +
                ", machineNumber='" + machineNumber + '\'' +
                ", machineName='" + machineName + '\'' +
                ", kaoqinResultId='" + kaoqinResultId + '\'' +
                ", result=" + result +
                ", resultText='" + resultText + '\'' +
                ", isYouxiao=" + isYouxiao +
                ", userId='" + userId + '\'' +
                '}';
    }
}