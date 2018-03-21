package com.tosit.ssm.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FileExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public FileExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("id like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("id not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeIsNull() {
            addCriterion("upload_file_type is null");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeIsNotNull() {
            addCriterion("upload_file_type is not null");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeEqualTo(Integer value) {
            addCriterion("upload_file_type =", value, "uploadFileType");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeNotEqualTo(Integer value) {
            addCriterion("upload_file_type <>", value, "uploadFileType");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeGreaterThan(Integer value) {
            addCriterion("upload_file_type >", value, "uploadFileType");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("upload_file_type >=", value, "uploadFileType");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeLessThan(Integer value) {
            addCriterion("upload_file_type <", value, "uploadFileType");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeLessThanOrEqualTo(Integer value) {
            addCriterion("upload_file_type <=", value, "uploadFileType");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeIn(List<Integer> values) {
            addCriterion("upload_file_type in", values, "uploadFileType");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeNotIn(List<Integer> values) {
            addCriterion("upload_file_type not in", values, "uploadFileType");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeBetween(Integer value1, Integer value2) {
            addCriterion("upload_file_type between", value1, value2, "uploadFileType");
            return (Criteria) this;
        }

        public Criteria andUploadFileTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("upload_file_type not between", value1, value2, "uploadFileType");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueIsNull() {
            addCriterion("file_catalogue is null");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueIsNotNull() {
            addCriterion("file_catalogue is not null");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueEqualTo(String value) {
            addCriterion("file_catalogue =", value, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueNotEqualTo(String value) {
            addCriterion("file_catalogue <>", value, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueGreaterThan(String value) {
            addCriterion("file_catalogue >", value, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueGreaterThanOrEqualTo(String value) {
            addCriterion("file_catalogue >=", value, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueLessThan(String value) {
            addCriterion("file_catalogue <", value, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueLessThanOrEqualTo(String value) {
            addCriterion("file_catalogue <=", value, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueLike(String value) {
            addCriterion("file_catalogue like", value, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueNotLike(String value) {
            addCriterion("file_catalogue not like", value, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueIn(List<String> values) {
            addCriterion("file_catalogue in", values, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueNotIn(List<String> values) {
            addCriterion("file_catalogue not in", values, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueBetween(String value1, String value2) {
            addCriterion("file_catalogue between", value1, value2, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andFileCatalogueNotBetween(String value1, String value2) {
            addCriterion("file_catalogue not between", value1, value2, "fileCatalogue");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andSavenameIsNull() {
            addCriterion("saveName is null");
            return (Criteria) this;
        }

        public Criteria andSavenameIsNotNull() {
            addCriterion("saveName is not null");
            return (Criteria) this;
        }

        public Criteria andSavenameEqualTo(String value) {
            addCriterion("saveName =", value, "savename");
            return (Criteria) this;
        }

        public Criteria andSavenameNotEqualTo(String value) {
            addCriterion("saveName <>", value, "savename");
            return (Criteria) this;
        }

        public Criteria andSavenameGreaterThan(String value) {
            addCriterion("saveName >", value, "savename");
            return (Criteria) this;
        }

        public Criteria andSavenameGreaterThanOrEqualTo(String value) {
            addCriterion("saveName >=", value, "savename");
            return (Criteria) this;
        }

        public Criteria andSavenameLessThan(String value) {
            addCriterion("saveName <", value, "savename");
            return (Criteria) this;
        }

        public Criteria andSavenameLessThanOrEqualTo(String value) {
            addCriterion("saveName <=", value, "savename");
            return (Criteria) this;
        }

        public Criteria andSavenameLike(String value) {
            addCriterion("saveName like", value, "savename");
            return (Criteria) this;
        }

        public Criteria andSavenameNotLike(String value) {
            addCriterion("saveName not like", value, "savename");
            return (Criteria) this;
        }

        public Criteria andSavenameIn(List<String> values) {
            addCriterion("saveName in", values, "savename");
            return (Criteria) this;
        }

        public Criteria andSavenameNotIn(List<String> values) {
            addCriterion("saveName not in", values, "savename");
            return (Criteria) this;
        }

        public Criteria andSavenameBetween(String value1, String value2) {
            addCriterion("saveName between", value1, value2, "savename");
            return (Criteria) this;
        }

        public Criteria andSavenameNotBetween(String value1, String value2) {
            addCriterion("saveName not between", value1, value2, "savename");
            return (Criteria) this;
        }

        public Criteria andFilePahIsNull() {
            addCriterion("file_pah is null");
            return (Criteria) this;
        }

        public Criteria andFilePahIsNotNull() {
            addCriterion("file_pah is not null");
            return (Criteria) this;
        }

        public Criteria andFilePahEqualTo(String value) {
            addCriterion("file_pah =", value, "filePah");
            return (Criteria) this;
        }

        public Criteria andFilePahNotEqualTo(String value) {
            addCriterion("file_pah <>", value, "filePah");
            return (Criteria) this;
        }

        public Criteria andFilePahGreaterThan(String value) {
            addCriterion("file_pah >", value, "filePah");
            return (Criteria) this;
        }

        public Criteria andFilePahGreaterThanOrEqualTo(String value) {
            addCriterion("file_pah >=", value, "filePah");
            return (Criteria) this;
        }

        public Criteria andFilePahLessThan(String value) {
            addCriterion("file_pah <", value, "filePah");
            return (Criteria) this;
        }

        public Criteria andFilePahLessThanOrEqualTo(String value) {
            addCriterion("file_pah <=", value, "filePah");
            return (Criteria) this;
        }

        public Criteria andFilePahLike(String value) {
            addCriterion("file_pah like", value, "filePah");
            return (Criteria) this;
        }

        public Criteria andFilePahNotLike(String value) {
            addCriterion("file_pah not like", value, "filePah");
            return (Criteria) this;
        }

        public Criteria andFilePahIn(List<String> values) {
            addCriterion("file_pah in", values, "filePah");
            return (Criteria) this;
        }

        public Criteria andFilePahNotIn(List<String> values) {
            addCriterion("file_pah not in", values, "filePah");
            return (Criteria) this;
        }

        public Criteria andFilePahBetween(String value1, String value2) {
            addCriterion("file_pah between", value1, value2, "filePah");
            return (Criteria) this;
        }

        public Criteria andFilePahNotBetween(String value1, String value2) {
            addCriterion("file_pah not between", value1, value2, "filePah");
            return (Criteria) this;
        }

        public Criteria andFiletypeIsNull() {
            addCriterion("fileType is null");
            return (Criteria) this;
        }

        public Criteria andFiletypeIsNotNull() {
            addCriterion("fileType is not null");
            return (Criteria) this;
        }

        public Criteria andFiletypeEqualTo(String value) {
            addCriterion("fileType =", value, "filetype");
            return (Criteria) this;
        }

        public Criteria andFiletypeNotEqualTo(String value) {
            addCriterion("fileType <>", value, "filetype");
            return (Criteria) this;
        }

        public Criteria andFiletypeGreaterThan(String value) {
            addCriterion("fileType >", value, "filetype");
            return (Criteria) this;
        }

        public Criteria andFiletypeGreaterThanOrEqualTo(String value) {
            addCriterion("fileType >=", value, "filetype");
            return (Criteria) this;
        }

        public Criteria andFiletypeLessThan(String value) {
            addCriterion("fileType <", value, "filetype");
            return (Criteria) this;
        }

        public Criteria andFiletypeLessThanOrEqualTo(String value) {
            addCriterion("fileType <=", value, "filetype");
            return (Criteria) this;
        }

        public Criteria andFiletypeLike(String value) {
            addCriterion("fileType like", value, "filetype");
            return (Criteria) this;
        }

        public Criteria andFiletypeNotLike(String value) {
            addCriterion("fileType not like", value, "filetype");
            return (Criteria) this;
        }

        public Criteria andFiletypeIn(List<String> values) {
            addCriterion("fileType in", values, "filetype");
            return (Criteria) this;
        }

        public Criteria andFiletypeNotIn(List<String> values) {
            addCriterion("fileType not in", values, "filetype");
            return (Criteria) this;
        }

        public Criteria andFiletypeBetween(String value1, String value2) {
            addCriterion("fileType between", value1, value2, "filetype");
            return (Criteria) this;
        }

        public Criteria andFiletypeNotBetween(String value1, String value2) {
            addCriterion("fileType not between", value1, value2, "filetype");
            return (Criteria) this;
        }

        public Criteria andIconIsNull() {
            addCriterion("icon is null");
            return (Criteria) this;
        }

        public Criteria andIconIsNotNull() {
            addCriterion("icon is not null");
            return (Criteria) this;
        }

        public Criteria andIconEqualTo(String value) {
            addCriterion("icon =", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconNotEqualTo(String value) {
            addCriterion("icon <>", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconGreaterThan(String value) {
            addCriterion("icon >", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconGreaterThanOrEqualTo(String value) {
            addCriterion("icon >=", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconLessThan(String value) {
            addCriterion("icon <", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconLessThanOrEqualTo(String value) {
            addCriterion("icon <=", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconLike(String value) {
            addCriterion("icon like", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconNotLike(String value) {
            addCriterion("icon not like", value, "icon");
            return (Criteria) this;
        }

        public Criteria andIconIn(List<String> values) {
            addCriterion("icon in", values, "icon");
            return (Criteria) this;
        }

        public Criteria andIconNotIn(List<String> values) {
            addCriterion("icon not in", values, "icon");
            return (Criteria) this;
        }

        public Criteria andIconBetween(String value1, String value2) {
            addCriterion("icon between", value1, value2, "icon");
            return (Criteria) this;
        }

        public Criteria andIconNotBetween(String value1, String value2) {
            addCriterion("icon not between", value1, value2, "icon");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeIsNull() {
            addCriterion("submit_time is null");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeIsNotNull() {
            addCriterion("submit_time is not null");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeEqualTo(Date value) {
            addCriterion("submit_time =", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeNotEqualTo(Date value) {
            addCriterion("submit_time <>", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeGreaterThan(Date value) {
            addCriterion("submit_time >", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("submit_time >=", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeLessThan(Date value) {
            addCriterion("submit_time <", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeLessThanOrEqualTo(Date value) {
            addCriterion("submit_time <=", value, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeIn(List<Date> values) {
            addCriterion("submit_time in", values, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeNotIn(List<Date> values) {
            addCriterion("submit_time not in", values, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeBetween(Date value1, Date value2) {
            addCriterion("submit_time between", value1, value2, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmitTimeNotBetween(Date value1, Date value2) {
            addCriterion("submit_time not between", value1, value2, "submitTime");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksIsNull() {
            addCriterion("submi_remarks is null");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksIsNotNull() {
            addCriterion("submi_remarks is not null");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksEqualTo(String value) {
            addCriterion("submi_remarks =", value, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksNotEqualTo(String value) {
            addCriterion("submi_remarks <>", value, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksGreaterThan(String value) {
            addCriterion("submi_remarks >", value, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksGreaterThanOrEqualTo(String value) {
            addCriterion("submi_remarks >=", value, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksLessThan(String value) {
            addCriterion("submi_remarks <", value, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksLessThanOrEqualTo(String value) {
            addCriterion("submi_remarks <=", value, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksLike(String value) {
            addCriterion("submi_remarks like", value, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksNotLike(String value) {
            addCriterion("submi_remarks not like", value, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksIn(List<String> values) {
            addCriterion("submi_remarks in", values, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksNotIn(List<String> values) {
            addCriterion("submi_remarks not in", values, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksBetween(String value1, String value2) {
            addCriterion("submi_remarks between", value1, value2, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andSubmiRemarksNotBetween(String value1, String value2) {
            addCriterion("submi_remarks not between", value1, value2, "submiRemarks");
            return (Criteria) this;
        }

        public Criteria andIsDelIsNull() {
            addCriterion("is_del is null");
            return (Criteria) this;
        }

        public Criteria andIsDelIsNotNull() {
            addCriterion("is_del is not null");
            return (Criteria) this;
        }

        public Criteria andIsDelEqualTo(Integer value) {
            addCriterion("is_del =", value, "isDel");
            return (Criteria) this;
        }

        public Criteria andIsDelNotEqualTo(Integer value) {
            addCriterion("is_del <>", value, "isDel");
            return (Criteria) this;
        }

        public Criteria andIsDelGreaterThan(Integer value) {
            addCriterion("is_del >", value, "isDel");
            return (Criteria) this;
        }

        public Criteria andIsDelGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_del >=", value, "isDel");
            return (Criteria) this;
        }

        public Criteria andIsDelLessThan(Integer value) {
            addCriterion("is_del <", value, "isDel");
            return (Criteria) this;
        }

        public Criteria andIsDelLessThanOrEqualTo(Integer value) {
            addCriterion("is_del <=", value, "isDel");
            return (Criteria) this;
        }

        public Criteria andIsDelIn(List<Integer> values) {
            addCriterion("is_del in", values, "isDel");
            return (Criteria) this;
        }

        public Criteria andIsDelNotIn(List<Integer> values) {
            addCriterion("is_del not in", values, "isDel");
            return (Criteria) this;
        }

        public Criteria andIsDelBetween(Integer value1, Integer value2) {
            addCriterion("is_del between", value1, value2, "isDel");
            return (Criteria) this;
        }

        public Criteria andIsDelNotBetween(Integer value1, Integer value2) {
            addCriterion("is_del not between", value1, value2, "isDel");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeIsNull() {
            addCriterion("download_time is null");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeIsNotNull() {
            addCriterion("download_time is not null");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeEqualTo(Date value) {
            addCriterion("download_time =", value, "downloadTime");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeNotEqualTo(Date value) {
            addCriterion("download_time <>", value, "downloadTime");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeGreaterThan(Date value) {
            addCriterion("download_time >", value, "downloadTime");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("download_time >=", value, "downloadTime");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeLessThan(Date value) {
            addCriterion("download_time <", value, "downloadTime");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeLessThanOrEqualTo(Date value) {
            addCriterion("download_time <=", value, "downloadTime");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeIn(List<Date> values) {
            addCriterion("download_time in", values, "downloadTime");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeNotIn(List<Date> values) {
            addCriterion("download_time not in", values, "downloadTime");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeBetween(Date value1, Date value2) {
            addCriterion("download_time between", value1, value2, "downloadTime");
            return (Criteria) this;
        }

        public Criteria andDownloadTimeNotBetween(Date value1, Date value2) {
            addCriterion("download_time not between", value1, value2, "downloadTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}