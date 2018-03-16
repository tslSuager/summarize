package com.tosit.ssm.entity;

import java.util.Date;

public class User {
    private String id;

    private String loginname;

    private String password;

    private String salt;

    private String name;

    private String niname;

    private String sex;

    private String personno;

    private String daxue;

    private String daxueAddress;

    private String homeAddress;

    private String stuNumber;

    private String daxueZhuanye;

    private String shixunZhuanye;

    private String peixunZhuanye;

    private String phone1;

    private String phone2;

    private String photo;

    private String qq;

    private String weixin;

    private String email;

    private Integer userType;

    private String kaoqinCode;

    private String kaoqinRuleid;

    private Integer status;

    private Date createTime;

    private String createBy;

    private Date updateTime;

    private String updateBy;

    private Date lastLogintime;

    private String loatLonginIp;

    private String remarks;

    private Integer isDel;

    private Integer sort;

    private String col1;

    private String col2;

    private String col3;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname == null ? null : loginname.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt == null ? null : salt.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getNiname() {
        return niname;
    }

    public void setNiname(String niname) {
        this.niname = niname == null ? null : niname.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getPersonno() {
        return personno;
    }

    public void setPersonno(String personno) {
        this.personno = personno == null ? null : personno.trim();
    }

    public String getDaxue() {
        return daxue;
    }

    public void setDaxue(String daxue) {
        this.daxue = daxue == null ? null : daxue.trim();
    }

    public String getDaxueAddress() {
        return daxueAddress;
    }

    public void setDaxueAddress(String daxueAddress) {
        this.daxueAddress = daxueAddress == null ? null : daxueAddress.trim();
    }

    public String getHomeAddress() {
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress == null ? null : homeAddress.trim();
    }

    public String getStuNumber() {
        return stuNumber;
    }

    public void setStuNumber(String stuNumber) {
        this.stuNumber = stuNumber == null ? null : stuNumber.trim();
    }

    public String getDaxueZhuanye() {
        return daxueZhuanye;
    }

    public void setDaxueZhuanye(String daxueZhuanye) {
        this.daxueZhuanye = daxueZhuanye == null ? null : daxueZhuanye.trim();
    }

    public String getShixunZhuanye() {
        return shixunZhuanye;
    }

    public void setShixunZhuanye(String shixunZhuanye) {
        this.shixunZhuanye = shixunZhuanye == null ? null : shixunZhuanye.trim();
    }

    public String getPeixunZhuanye() {
        return peixunZhuanye;
    }

    public void setPeixunZhuanye(String peixunZhuanye) {
        this.peixunZhuanye = peixunZhuanye == null ? null : peixunZhuanye.trim();
    }

    public String getPhone1() {
        return phone1;
    }

    public void setPhone1(String phone1) {
        this.phone1 = phone1 == null ? null : phone1.trim();
    }

    public String getPhone2() {
        return phone2;
    }

    public void setPhone2(String phone2) {
        this.phone2 = phone2 == null ? null : phone2.trim();
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo == null ? null : photo.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public String getWeixin() {
        return weixin;
    }

    public void setWeixin(String weixin) {
        this.weixin = weixin == null ? null : weixin.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public String getKaoqinCode() {
        return kaoqinCode;
    }

    public void setKaoqinCode(String kaoqinCode) {
        this.kaoqinCode = kaoqinCode == null ? null : kaoqinCode.trim();
    }

    public String getKaoqinRuleid() {
        return kaoqinRuleid;
    }

    public void setKaoqinRuleid(String kaoqinRuleid) {
        this.kaoqinRuleid = kaoqinRuleid == null ? null : kaoqinRuleid.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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

    public Date getLastLogintime() {
        return lastLogintime;
    }

    public void setLastLogintime(Date lastLogintime) {
        this.lastLogintime = lastLogintime;
    }

    public String getLoatLonginIp() {
        return loatLonginIp;
    }

    public void setLoatLonginIp(String loatLonginIp) {
        this.loatLonginIp = loatLonginIp == null ? null : loatLonginIp.trim();
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getCol1() {
        return col1;
    }

    public void setCol1(String col1) {
        this.col1 = col1 == null ? null : col1.trim();
    }

    public String getCol2() {
        return col2;
    }

    public void setCol2(String col2) {
        this.col2 = col2 == null ? null : col2.trim();
    }

    public String getCol3() {
        return col3;
    }

    public void setCol3(String col3) {
        this.col3 = col3 == null ? null : col3.trim();
    }
}