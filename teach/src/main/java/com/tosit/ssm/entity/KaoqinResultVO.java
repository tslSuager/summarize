package com.tosit.ssm.entity;

import java.util.List;

public class KaoqinResultVO extends KaoqinResult{
    private String  username;//用户名字
    private String officename;//班级名称
    private List<KaoqinResult> kaoqinResults;

    public KaoqinResultVO() {
    }

    public KaoqinResultVO(String username, String officename, List<KaoqinResult> kaoqinResults) {
        this.username = username;
        this.officename = officename;
        this.kaoqinResults = kaoqinResults;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getOfficename() {
        return officename;
    }

    public void setOfficename(String officename) {
        this.officename = officename;
    }

    public List<KaoqinResult> getKaoqinResults() {
        return kaoqinResults;
    }

    public void setKaoqinResults(List<KaoqinResult> kaoqinResults) {
        this.kaoqinResults = kaoqinResults;
    }
}
