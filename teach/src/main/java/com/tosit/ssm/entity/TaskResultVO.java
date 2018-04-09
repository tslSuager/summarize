package com.tosit.ssm.entity;

import java.util.Date;

public class TaskResultVO extends TaskResult {
    private Date taskCreateTime;
    private String groupName;
    private String renwuName;

    public Date getTaskCreateTime() {
        return taskCreateTime;
    }

    public void setTaskCreateTime(Date taskCreateTime) {
        this.taskCreateTime = taskCreateTime;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getRenwuName() {
        return renwuName;
    }

    public void setRenwuName(String renwuName) {
        this.renwuName = renwuName;
    }
}
