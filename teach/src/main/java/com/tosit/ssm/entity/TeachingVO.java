package com.tosit.ssm.entity;

public class TeachingVO extends Teaching{
    private String officeName;//班级名字

    public String getOfficeName() {
        return officeName;
    }

    public void setOfficeName(String officeName) {
        this.officeName = officeName;
    }

    @Override
    public String toString() {
        return "TeachingVO{" +
                "officeName='" + officeName + '\'' +
                '}';
    }
}
