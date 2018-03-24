package com.tosit.ssm.entity;

import java.util.Date;

public class File {
    private String id;

    private Integer uploadFileType;

    private String fileCatalogue;

    private String name;

    private String savename;

    private String filePah;

    private String filetype;

    private String icon;

    private Date submitTime;

    private String submiRemarks;

    private Integer isDel;

    private Date downloadTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Integer getUploadFileType() {
        return uploadFileType;
    }

    public void setUploadFileType(Integer uploadFileType) {
        this.uploadFileType = uploadFileType;
    }

    public String getFileCatalogue() {
        return fileCatalogue;
    }

    public void setFileCatalogue(String fileCatalogue) {
        this.fileCatalogue = fileCatalogue == null ? null : fileCatalogue.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSavename() {
        return savename;
    }

    public void setSavename(String savename) {
        this.savename = savename == null ? null : savename.trim();
    }

    public String getFilePah() {
        return filePah;
    }

    public void setFilePah(String filePah) {
        this.filePah = filePah == null ? null : filePah.trim();
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype == null ? null : filetype.trim();
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    public Date getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Date submitTime) {
        this.submitTime = submitTime;
    }

    public String getSubmiRemarks() {
        return submiRemarks;
    }

    public void setSubmiRemarks(String submiRemarks) {
        this.submiRemarks = submiRemarks == null ? null : submiRemarks.trim();
    }

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    public Date getDownloadTime() {
        return downloadTime;
    }

    public void setDownloadTime(Date downloadTime) {
        this.downloadTime = downloadTime;
    }
}