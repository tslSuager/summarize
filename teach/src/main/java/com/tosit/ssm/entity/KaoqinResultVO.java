package com.tosit.ssm.entity;

import java.util.List;

public class KaoqinResultVO {
    private List<KaoqinResult> kaoqinResults;
    private List<User> users;
    private List<Office> offices;
    private List<UserOffice> userOffices;
    private String userName;
    private String officeName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getOfficeName() {
        return officeName;
    }

    public void setOfficeName(String officeName) {
        this.officeName = officeName;
    }

    public List<KaoqinResult> getKaoqinResults() {
        return kaoqinResults;
    }

    public void setKaoqinResults(List<KaoqinResult> kaoqinResults) {
        this.kaoqinResults = kaoqinResults;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public List<Office> getOffices() {
        return offices;
    }

    public void setOffices(List<Office> offices) {
        this.offices = offices;
    }

    public List<UserOffice> getUserOffices() {
        return userOffices;
    }

    public void setUserOffices(List<UserOffice> userOffices) {
        this.userOffices = userOffices;
    }
}
