package com.tosit.ssm.entity;

public class KaoqinResultVO extends KaoqinResult{
    private String  username;//用户名字
    public KaoqinResultVO() {
    }

    public KaoqinResultVO(String username) {
        super();
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }


}
