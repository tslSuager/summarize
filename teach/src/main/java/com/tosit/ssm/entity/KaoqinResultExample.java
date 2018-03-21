package com.tosit.ssm.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class KaoqinResultExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public KaoqinResultExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
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

        public Criteria andDateIsNull() {
            addCriterion("date is null");
            return (Criteria) this;
        }

        public Criteria andDateIsNotNull() {
            addCriterion("date is not null");
            return (Criteria) this;
        }

        public Criteria andDateEqualTo(Date value) {
            addCriterionForJDBCDate("date =", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("date <>", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateGreaterThan(Date value) {
            addCriterionForJDBCDate("date >", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("date >=", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateLessThan(Date value) {
            addCriterionForJDBCDate("date <", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("date <=", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateIn(List<Date> values) {
            addCriterionForJDBCDate("date in", values, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("date not in", values, "date");
            return (Criteria) this;
        }

        public Criteria andDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("date between", value1, value2, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("date not between", value1, value2, "date");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(String value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(String value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(String value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(String value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(String value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLike(String value) {
            addCriterion("user_id like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotLike(String value) {
            addCriterion("user_id not like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<String> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<String> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(String value1, String value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(String value1, String value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNull() {
            addCriterion("remark is null");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNotNull() {
            addCriterion("remark is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkEqualTo(String value) {
            addCriterion("remark =", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotEqualTo(String value) {
            addCriterion("remark <>", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThan(String value) {
            addCriterion("remark >", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("remark >=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThan(String value) {
            addCriterion("remark <", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThanOrEqualTo(String value) {
            addCriterion("remark <=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLike(String value) {
            addCriterion("remark like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotLike(String value) {
            addCriterion("remark not like", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkIn(List<String> values) {
            addCriterion("remark in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotIn(List<String> values) {
            addCriterion("remark not in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkBetween(String value1, String value2) {
            addCriterion("remark between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotBetween(String value1, String value2) {
            addCriterion("remark not between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andLastTimeIsNull() {
            addCriterion("last_time is null");
            return (Criteria) this;
        }

        public Criteria andLastTimeIsNotNull() {
            addCriterion("last_time is not null");
            return (Criteria) this;
        }

        public Criteria andLastTimeEqualTo(Date value) {
            addCriterion("last_time =", value, "lastTime");
            return (Criteria) this;
        }

        public Criteria andLastTimeNotEqualTo(Date value) {
            addCriterion("last_time <>", value, "lastTime");
            return (Criteria) this;
        }

        public Criteria andLastTimeGreaterThan(Date value) {
            addCriterion("last_time >", value, "lastTime");
            return (Criteria) this;
        }

        public Criteria andLastTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("last_time >=", value, "lastTime");
            return (Criteria) this;
        }

        public Criteria andLastTimeLessThan(Date value) {
            addCriterion("last_time <", value, "lastTime");
            return (Criteria) this;
        }

        public Criteria andLastTimeLessThanOrEqualTo(Date value) {
            addCriterion("last_time <=", value, "lastTime");
            return (Criteria) this;
        }

        public Criteria andLastTimeIn(List<Date> values) {
            addCriterion("last_time in", values, "lastTime");
            return (Criteria) this;
        }

        public Criteria andLastTimeNotIn(List<Date> values) {
            addCriterion("last_time not in", values, "lastTime");
            return (Criteria) this;
        }

        public Criteria andLastTimeBetween(Date value1, Date value2) {
            addCriterion("last_time between", value1, value2, "lastTime");
            return (Criteria) this;
        }

        public Criteria andLastTimeNotBetween(Date value1, Date value2) {
            addCriterion("last_time not between", value1, value2, "lastTime");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeIsNull() {
            addCriterion("createResultTime is null");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeIsNotNull() {
            addCriterion("createResultTime is not null");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeEqualTo(Date value) {
            addCriterion("createResultTime =", value, "createresulttime");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeNotEqualTo(Date value) {
            addCriterion("createResultTime <>", value, "createresulttime");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeGreaterThan(Date value) {
            addCriterion("createResultTime >", value, "createresulttime");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeGreaterThanOrEqualTo(Date value) {
            addCriterion("createResultTime >=", value, "createresulttime");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeLessThan(Date value) {
            addCriterion("createResultTime <", value, "createresulttime");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeLessThanOrEqualTo(Date value) {
            addCriterion("createResultTime <=", value, "createresulttime");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeIn(List<Date> values) {
            addCriterion("createResultTime in", values, "createresulttime");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeNotIn(List<Date> values) {
            addCriterion("createResultTime not in", values, "createresulttime");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeBetween(Date value1, Date value2) {
            addCriterion("createResultTime between", value1, value2, "createresulttime");
            return (Criteria) this;
        }

        public Criteria andCreateresulttimeNotBetween(Date value1, Date value2) {
            addCriterion("createResultTime not between", value1, value2, "createresulttime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusIsNull() {
            addCriterion("kaoqin_remark_status is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusIsNotNull() {
            addCriterion("kaoqin_remark_status is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusEqualTo(Integer value) {
            addCriterion("kaoqin_remark_status =", value, "kaoqinRemarkStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusNotEqualTo(Integer value) {
            addCriterion("kaoqin_remark_status <>", value, "kaoqinRemarkStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusGreaterThan(Integer value) {
            addCriterion("kaoqin_remark_status >", value, "kaoqinRemarkStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_remark_status >=", value, "kaoqinRemarkStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusLessThan(Integer value) {
            addCriterion("kaoqin_remark_status <", value, "kaoqinRemarkStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusLessThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_remark_status <=", value, "kaoqinRemarkStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusIn(List<Integer> values) {
            addCriterion("kaoqin_remark_status in", values, "kaoqinRemarkStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusNotIn(List<Integer> values) {
            addCriterion("kaoqin_remark_status not in", values, "kaoqinRemarkStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_remark_status between", value1, value2, "kaoqinRemarkStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_remark_status not between", value1, value2, "kaoqinRemarkStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeIsNull() {
            addCriterion("kaoqin_remark_type is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeIsNotNull() {
            addCriterion("kaoqin_remark_type is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeEqualTo(Integer value) {
            addCriterion("kaoqin_remark_type =", value, "kaoqinRemarkType");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeNotEqualTo(Integer value) {
            addCriterion("kaoqin_remark_type <>", value, "kaoqinRemarkType");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeGreaterThan(Integer value) {
            addCriterion("kaoqin_remark_type >", value, "kaoqinRemarkType");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_remark_type >=", value, "kaoqinRemarkType");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeLessThan(Integer value) {
            addCriterion("kaoqin_remark_type <", value, "kaoqinRemarkType");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeLessThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_remark_type <=", value, "kaoqinRemarkType");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeIn(List<Integer> values) {
            addCriterion("kaoqin_remark_type in", values, "kaoqinRemarkType");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeNotIn(List<Integer> values) {
            addCriterion("kaoqin_remark_type not in", values, "kaoqinRemarkType");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_remark_type between", value1, value2, "kaoqinRemarkType");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_remark_type not between", value1, value2, "kaoqinRemarkType");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentIsNull() {
            addCriterion("kaoqin_remark_content is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentIsNotNull() {
            addCriterion("kaoqin_remark_content is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentEqualTo(String value) {
            addCriterion("kaoqin_remark_content =", value, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentNotEqualTo(String value) {
            addCriterion("kaoqin_remark_content <>", value, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentGreaterThan(String value) {
            addCriterion("kaoqin_remark_content >", value, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentGreaterThanOrEqualTo(String value) {
            addCriterion("kaoqin_remark_content >=", value, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentLessThan(String value) {
            addCriterion("kaoqin_remark_content <", value, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentLessThanOrEqualTo(String value) {
            addCriterion("kaoqin_remark_content <=", value, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentLike(String value) {
            addCriterion("kaoqin_remark_content like", value, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentNotLike(String value) {
            addCriterion("kaoqin_remark_content not like", value, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentIn(List<String> values) {
            addCriterion("kaoqin_remark_content in", values, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentNotIn(List<String> values) {
            addCriterion("kaoqin_remark_content not in", values, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentBetween(String value1, String value2) {
            addCriterion("kaoqin_remark_content between", value1, value2, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkContentNotBetween(String value1, String value2) {
            addCriterion("kaoqin_remark_content not between", value1, value2, "kaoqinRemarkContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserIsNull() {
            addCriterion("kaoqin_remark_disposeUser is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserIsNotNull() {
            addCriterion("kaoqin_remark_disposeUser is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserEqualTo(String value) {
            addCriterion("kaoqin_remark_disposeUser =", value, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserNotEqualTo(String value) {
            addCriterion("kaoqin_remark_disposeUser <>", value, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserGreaterThan(String value) {
            addCriterion("kaoqin_remark_disposeUser >", value, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserGreaterThanOrEqualTo(String value) {
            addCriterion("kaoqin_remark_disposeUser >=", value, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserLessThan(String value) {
            addCriterion("kaoqin_remark_disposeUser <", value, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserLessThanOrEqualTo(String value) {
            addCriterion("kaoqin_remark_disposeUser <=", value, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserLike(String value) {
            addCriterion("kaoqin_remark_disposeUser like", value, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserNotLike(String value) {
            addCriterion("kaoqin_remark_disposeUser not like", value, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserIn(List<String> values) {
            addCriterion("kaoqin_remark_disposeUser in", values, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserNotIn(List<String> values) {
            addCriterion("kaoqin_remark_disposeUser not in", values, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserBetween(String value1, String value2) {
            addCriterion("kaoqin_remark_disposeUser between", value1, value2, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeuserNotBetween(String value1, String value2) {
            addCriterion("kaoqin_remark_disposeUser not between", value1, value2, "kaoqinRemarkDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeIsNull() {
            addCriterion("kaoqin_remark_disposeTime is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeIsNotNull() {
            addCriterion("kaoqin_remark_disposeTime is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeEqualTo(Date value) {
            addCriterion("kaoqin_remark_disposeTime =", value, "kaoqinRemarkDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeNotEqualTo(Date value) {
            addCriterion("kaoqin_remark_disposeTime <>", value, "kaoqinRemarkDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeGreaterThan(Date value) {
            addCriterion("kaoqin_remark_disposeTime >", value, "kaoqinRemarkDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("kaoqin_remark_disposeTime >=", value, "kaoqinRemarkDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeLessThan(Date value) {
            addCriterion("kaoqin_remark_disposeTime <", value, "kaoqinRemarkDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeLessThanOrEqualTo(Date value) {
            addCriterion("kaoqin_remark_disposeTime <=", value, "kaoqinRemarkDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeIn(List<Date> values) {
            addCriterion("kaoqin_remark_disposeTime in", values, "kaoqinRemarkDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeNotIn(List<Date> values) {
            addCriterion("kaoqin_remark_disposeTime not in", values, "kaoqinRemarkDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeBetween(Date value1, Date value2) {
            addCriterion("kaoqin_remark_disposeTime between", value1, value2, "kaoqinRemarkDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposetimeNotBetween(Date value1, Date value2) {
            addCriterion("kaoqin_remark_disposeTime not between", value1, value2, "kaoqinRemarkDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultIsNull() {
            addCriterion("kaoqin_remark_dispose_Result is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultIsNotNull() {
            addCriterion("kaoqin_remark_dispose_Result is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultEqualTo(Integer value) {
            addCriterion("kaoqin_remark_dispose_Result =", value, "kaoqinRemarkDisposeResult");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultNotEqualTo(Integer value) {
            addCriterion("kaoqin_remark_dispose_Result <>", value, "kaoqinRemarkDisposeResult");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultGreaterThan(Integer value) {
            addCriterion("kaoqin_remark_dispose_Result >", value, "kaoqinRemarkDisposeResult");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultGreaterThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_remark_dispose_Result >=", value, "kaoqinRemarkDisposeResult");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultLessThan(Integer value) {
            addCriterion("kaoqin_remark_dispose_Result <", value, "kaoqinRemarkDisposeResult");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultLessThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_remark_dispose_Result <=", value, "kaoqinRemarkDisposeResult");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultIn(List<Integer> values) {
            addCriterion("kaoqin_remark_dispose_Result in", values, "kaoqinRemarkDisposeResult");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultNotIn(List<Integer> values) {
            addCriterion("kaoqin_remark_dispose_Result not in", values, "kaoqinRemarkDisposeResult");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_remark_dispose_Result between", value1, value2, "kaoqinRemarkDisposeResult");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkDisposeResultNotBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_remark_dispose_Result not between", value1, value2, "kaoqinRemarkDisposeResult");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusIsNull() {
            addCriterion("kaoqin_shenshu_status is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusIsNotNull() {
            addCriterion("kaoqin_shenshu_status is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_status =", value, "kaoqinShenshuStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusNotEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_status <>", value, "kaoqinShenshuStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusGreaterThan(Integer value) {
            addCriterion("kaoqin_shenshu_status >", value, "kaoqinShenshuStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_status >=", value, "kaoqinShenshuStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusLessThan(Integer value) {
            addCriterion("kaoqin_shenshu_status <", value, "kaoqinShenshuStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusLessThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_status <=", value, "kaoqinShenshuStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusIn(List<Integer> values) {
            addCriterion("kaoqin_shenshu_status in", values, "kaoqinShenshuStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusNotIn(List<Integer> values) {
            addCriterion("kaoqin_shenshu_status not in", values, "kaoqinShenshuStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_shenshu_status between", value1, value2, "kaoqinShenshuStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_shenshu_status not between", value1, value2, "kaoqinShenshuStatus");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeIsNull() {
            addCriterion("kaoqin_shenshu_type is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeIsNotNull() {
            addCriterion("kaoqin_shenshu_type is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_type =", value, "kaoqinShenshuType");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeNotEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_type <>", value, "kaoqinShenshuType");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeGreaterThan(Integer value) {
            addCriterion("kaoqin_shenshu_type >", value, "kaoqinShenshuType");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_type >=", value, "kaoqinShenshuType");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeLessThan(Integer value) {
            addCriterion("kaoqin_shenshu_type <", value, "kaoqinShenshuType");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeLessThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_type <=", value, "kaoqinShenshuType");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeIn(List<Integer> values) {
            addCriterion("kaoqin_shenshu_type in", values, "kaoqinShenshuType");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeNotIn(List<Integer> values) {
            addCriterion("kaoqin_shenshu_type not in", values, "kaoqinShenshuType");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_shenshu_type between", value1, value2, "kaoqinShenshuType");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_shenshu_type not between", value1, value2, "kaoqinShenshuType");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentIsNull() {
            addCriterion("kaoqin_shenshu_content is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentIsNotNull() {
            addCriterion("kaoqin_shenshu_content is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentEqualTo(String value) {
            addCriterion("kaoqin_shenshu_content =", value, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentNotEqualTo(String value) {
            addCriterion("kaoqin_shenshu_content <>", value, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentGreaterThan(String value) {
            addCriterion("kaoqin_shenshu_content >", value, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentGreaterThanOrEqualTo(String value) {
            addCriterion("kaoqin_shenshu_content >=", value, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentLessThan(String value) {
            addCriterion("kaoqin_shenshu_content <", value, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentLessThanOrEqualTo(String value) {
            addCriterion("kaoqin_shenshu_content <=", value, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentLike(String value) {
            addCriterion("kaoqin_shenshu_content like", value, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentNotLike(String value) {
            addCriterion("kaoqin_shenshu_content not like", value, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentIn(List<String> values) {
            addCriterion("kaoqin_shenshu_content in", values, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentNotIn(List<String> values) {
            addCriterion("kaoqin_shenshu_content not in", values, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentBetween(String value1, String value2) {
            addCriterion("kaoqin_shenshu_content between", value1, value2, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuContentNotBetween(String value1, String value2) {
            addCriterion("kaoqin_shenshu_content not between", value1, value2, "kaoqinShenshuContent");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserIsNull() {
            addCriterion("kaoqin_shenshu_disposeUser is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserIsNotNull() {
            addCriterion("kaoqin_shenshu_disposeUser is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserEqualTo(String value) {
            addCriterion("kaoqin_shenshu_disposeUser =", value, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserNotEqualTo(String value) {
            addCriterion("kaoqin_shenshu_disposeUser <>", value, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserGreaterThan(String value) {
            addCriterion("kaoqin_shenshu_disposeUser >", value, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserGreaterThanOrEqualTo(String value) {
            addCriterion("kaoqin_shenshu_disposeUser >=", value, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserLessThan(String value) {
            addCriterion("kaoqin_shenshu_disposeUser <", value, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserLessThanOrEqualTo(String value) {
            addCriterion("kaoqin_shenshu_disposeUser <=", value, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserLike(String value) {
            addCriterion("kaoqin_shenshu_disposeUser like", value, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserNotLike(String value) {
            addCriterion("kaoqin_shenshu_disposeUser not like", value, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserIn(List<String> values) {
            addCriterion("kaoqin_shenshu_disposeUser in", values, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserNotIn(List<String> values) {
            addCriterion("kaoqin_shenshu_disposeUser not in", values, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserBetween(String value1, String value2) {
            addCriterion("kaoqin_shenshu_disposeUser between", value1, value2, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeuserNotBetween(String value1, String value2) {
            addCriterion("kaoqin_shenshu_disposeUser not between", value1, value2, "kaoqinShenshuDisposeuser");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeIsNull() {
            addCriterion("kaoqin_shenshu_disposeTime is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeIsNotNull() {
            addCriterion("kaoqin_shenshu_disposeTime is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeEqualTo(Date value) {
            addCriterion("kaoqin_shenshu_disposeTime =", value, "kaoqinShenshuDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeNotEqualTo(Date value) {
            addCriterion("kaoqin_shenshu_disposeTime <>", value, "kaoqinShenshuDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeGreaterThan(Date value) {
            addCriterion("kaoqin_shenshu_disposeTime >", value, "kaoqinShenshuDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("kaoqin_shenshu_disposeTime >=", value, "kaoqinShenshuDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeLessThan(Date value) {
            addCriterion("kaoqin_shenshu_disposeTime <", value, "kaoqinShenshuDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeLessThanOrEqualTo(Date value) {
            addCriterion("kaoqin_shenshu_disposeTime <=", value, "kaoqinShenshuDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeIn(List<Date> values) {
            addCriterion("kaoqin_shenshu_disposeTime in", values, "kaoqinShenshuDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeNotIn(List<Date> values) {
            addCriterion("kaoqin_shenshu_disposeTime not in", values, "kaoqinShenshuDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeBetween(Date value1, Date value2) {
            addCriterion("kaoqin_shenshu_disposeTime between", value1, value2, "kaoqinShenshuDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposetimeNotBetween(Date value1, Date value2) {
            addCriterion("kaoqin_shenshu_disposeTime not between", value1, value2, "kaoqinShenshuDisposetime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultIsNull() {
            addCriterion("kaoqin_shenshu_disposeResult is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultIsNotNull() {
            addCriterion("kaoqin_shenshu_disposeResult is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_disposeResult =", value, "kaoqinShenshuDisposeresult");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultNotEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_disposeResult <>", value, "kaoqinShenshuDisposeresult");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultGreaterThan(Integer value) {
            addCriterion("kaoqin_shenshu_disposeResult >", value, "kaoqinShenshuDisposeresult");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultGreaterThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_disposeResult >=", value, "kaoqinShenshuDisposeresult");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultLessThan(Integer value) {
            addCriterion("kaoqin_shenshu_disposeResult <", value, "kaoqinShenshuDisposeresult");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultLessThanOrEqualTo(Integer value) {
            addCriterion("kaoqin_shenshu_disposeResult <=", value, "kaoqinShenshuDisposeresult");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultIn(List<Integer> values) {
            addCriterion("kaoqin_shenshu_disposeResult in", values, "kaoqinShenshuDisposeresult");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultNotIn(List<Integer> values) {
            addCriterion("kaoqin_shenshu_disposeResult not in", values, "kaoqinShenshuDisposeresult");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_shenshu_disposeResult between", value1, value2, "kaoqinShenshuDisposeresult");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuDisposeresultNotBetween(Integer value1, Integer value2) {
            addCriterion("kaoqin_shenshu_disposeResult not between", value1, value2, "kaoqinShenshuDisposeresult");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateByIsNull() {
            addCriterion("create_by is null");
            return (Criteria) this;
        }

        public Criteria andCreateByIsNotNull() {
            addCriterion("create_by is not null");
            return (Criteria) this;
        }

        public Criteria andCreateByEqualTo(String value) {
            addCriterion("create_by =", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByNotEqualTo(String value) {
            addCriterion("create_by <>", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByGreaterThan(String value) {
            addCriterion("create_by >", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByGreaterThanOrEqualTo(String value) {
            addCriterion("create_by >=", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByLessThan(String value) {
            addCriterion("create_by <", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByLessThanOrEqualTo(String value) {
            addCriterion("create_by <=", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByLike(String value) {
            addCriterion("create_by like", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByNotLike(String value) {
            addCriterion("create_by not like", value, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByIn(List<String> values) {
            addCriterion("create_by in", values, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByNotIn(List<String> values) {
            addCriterion("create_by not in", values, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByBetween(String value1, String value2) {
            addCriterion("create_by between", value1, value2, "createBy");
            return (Criteria) this;
        }

        public Criteria andCreateByNotBetween(String value1, String value2) {
            addCriterion("create_by not between", value1, value2, "createBy");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNull() {
            addCriterion("update_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNotNull() {
            addCriterion("update_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeEqualTo(Date value) {
            addCriterion("update_time =", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotEqualTo(Date value) {
            addCriterion("update_time <>", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThan(Date value) {
            addCriterion("update_time >", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("update_time >=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThan(Date value) {
            addCriterion("update_time <", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThanOrEqualTo(Date value) {
            addCriterion("update_time <=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIn(List<Date> values) {
            addCriterion("update_time in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotIn(List<Date> values) {
            addCriterion("update_time not in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeBetween(Date value1, Date value2) {
            addCriterion("update_time between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotBetween(Date value1, Date value2) {
            addCriterion("update_time not between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateByIsNull() {
            addCriterion("update_by is null");
            return (Criteria) this;
        }

        public Criteria andUpdateByIsNotNull() {
            addCriterion("update_by is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateByEqualTo(String value) {
            addCriterion("update_by =", value, "updateBy");
            return (Criteria) this;
        }

        public Criteria andUpdateByNotEqualTo(String value) {
            addCriterion("update_by <>", value, "updateBy");
            return (Criteria) this;
        }

        public Criteria andUpdateByGreaterThan(String value) {
            addCriterion("update_by >", value, "updateBy");
            return (Criteria) this;
        }

        public Criteria andUpdateByGreaterThanOrEqualTo(String value) {
            addCriterion("update_by >=", value, "updateBy");
            return (Criteria) this;
        }

        public Criteria andUpdateByLessThan(String value) {
            addCriterion("update_by <", value, "updateBy");
            return (Criteria) this;
        }

        public Criteria andUpdateByLessThanOrEqualTo(String value) {
            addCriterion("update_by <=", value, "updateBy");
            return (Criteria) this;
        }

        public Criteria andUpdateByLike(String value) {
            addCriterion("update_by like", value, "updateBy");
            return (Criteria) this;
        }

        public Criteria andUpdateByNotLike(String value) {
            addCriterion("update_by not like", value, "updateBy");
            return (Criteria) this;
        }

        public Criteria andUpdateByIn(List<String> values) {
            addCriterion("update_by in", values, "updateBy");
            return (Criteria) this;
        }

        public Criteria andUpdateByNotIn(List<String> values) {
            addCriterion("update_by not in", values, "updateBy");
            return (Criteria) this;
        }

        public Criteria andUpdateByBetween(String value1, String value2) {
            addCriterion("update_by between", value1, value2, "updateBy");
            return (Criteria) this;
        }

        public Criteria andUpdateByNotBetween(String value1, String value2) {
            addCriterion("update_by not between", value1, value2, "updateBy");
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

        public Criteria andKaoqinShenshuReplyIsNull() {
            addCriterion("kaoqin_shenshu_reply is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyIsNotNull() {
            addCriterion("kaoqin_shenshu_reply is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyEqualTo(String value) {
            addCriterion("kaoqin_shenshu_reply =", value, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyNotEqualTo(String value) {
            addCriterion("kaoqin_shenshu_reply <>", value, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyGreaterThan(String value) {
            addCriterion("kaoqin_shenshu_reply >", value, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyGreaterThanOrEqualTo(String value) {
            addCriterion("kaoqin_shenshu_reply >=", value, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyLessThan(String value) {
            addCriterion("kaoqin_shenshu_reply <", value, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyLessThanOrEqualTo(String value) {
            addCriterion("kaoqin_shenshu_reply <=", value, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyLike(String value) {
            addCriterion("kaoqin_shenshu_reply like", value, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyNotLike(String value) {
            addCriterion("kaoqin_shenshu_reply not like", value, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyIn(List<String> values) {
            addCriterion("kaoqin_shenshu_reply in", values, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyNotIn(List<String> values) {
            addCriterion("kaoqin_shenshu_reply not in", values, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyBetween(String value1, String value2) {
            addCriterion("kaoqin_shenshu_reply between", value1, value2, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReplyNotBetween(String value1, String value2) {
            addCriterion("kaoqin_shenshu_reply not between", value1, value2, "kaoqinShenshuReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyIsNull() {
            addCriterion("kaoqin_remark_reply is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyIsNotNull() {
            addCriterion("kaoqin_remark_reply is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyEqualTo(String value) {
            addCriterion("kaoqin_remark_reply =", value, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyNotEqualTo(String value) {
            addCriterion("kaoqin_remark_reply <>", value, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyGreaterThan(String value) {
            addCriterion("kaoqin_remark_reply >", value, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyGreaterThanOrEqualTo(String value) {
            addCriterion("kaoqin_remark_reply >=", value, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyLessThan(String value) {
            addCriterion("kaoqin_remark_reply <", value, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyLessThanOrEqualTo(String value) {
            addCriterion("kaoqin_remark_reply <=", value, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyLike(String value) {
            addCriterion("kaoqin_remark_reply like", value, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyNotLike(String value) {
            addCriterion("kaoqin_remark_reply not like", value, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyIn(List<String> values) {
            addCriterion("kaoqin_remark_reply in", values, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyNotIn(List<String> values) {
            addCriterion("kaoqin_remark_reply not in", values, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyBetween(String value1, String value2) {
            addCriterion("kaoqin_remark_reply between", value1, value2, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReplyNotBetween(String value1, String value2) {
            addCriterion("kaoqin_remark_reply not between", value1, value2, "kaoqinRemarkReply");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeIsNull() {
            addCriterion("kaoqin_shenshu_reqtime is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeIsNotNull() {
            addCriterion("kaoqin_shenshu_reqtime is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeEqualTo(Date value) {
            addCriterion("kaoqin_shenshu_reqtime =", value, "kaoqinShenshuReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeNotEqualTo(Date value) {
            addCriterion("kaoqin_shenshu_reqtime <>", value, "kaoqinShenshuReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeGreaterThan(Date value) {
            addCriterion("kaoqin_shenshu_reqtime >", value, "kaoqinShenshuReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("kaoqin_shenshu_reqtime >=", value, "kaoqinShenshuReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeLessThan(Date value) {
            addCriterion("kaoqin_shenshu_reqtime <", value, "kaoqinShenshuReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeLessThanOrEqualTo(Date value) {
            addCriterion("kaoqin_shenshu_reqtime <=", value, "kaoqinShenshuReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeIn(List<Date> values) {
            addCriterion("kaoqin_shenshu_reqtime in", values, "kaoqinShenshuReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeNotIn(List<Date> values) {
            addCriterion("kaoqin_shenshu_reqtime not in", values, "kaoqinShenshuReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeBetween(Date value1, Date value2) {
            addCriterion("kaoqin_shenshu_reqtime between", value1, value2, "kaoqinShenshuReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinShenshuReqtimeNotBetween(Date value1, Date value2) {
            addCriterion("kaoqin_shenshu_reqtime not between", value1, value2, "kaoqinShenshuReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeIsNull() {
            addCriterion("kaoqin_remark_reqtime is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeIsNotNull() {
            addCriterion("kaoqin_remark_reqtime is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeEqualTo(Date value) {
            addCriterion("kaoqin_remark_reqtime =", value, "kaoqinRemarkReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeNotEqualTo(Date value) {
            addCriterion("kaoqin_remark_reqtime <>", value, "kaoqinRemarkReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeGreaterThan(Date value) {
            addCriterion("kaoqin_remark_reqtime >", value, "kaoqinRemarkReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("kaoqin_remark_reqtime >=", value, "kaoqinRemarkReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeLessThan(Date value) {
            addCriterion("kaoqin_remark_reqtime <", value, "kaoqinRemarkReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeLessThanOrEqualTo(Date value) {
            addCriterion("kaoqin_remark_reqtime <=", value, "kaoqinRemarkReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeIn(List<Date> values) {
            addCriterion("kaoqin_remark_reqtime in", values, "kaoqinRemarkReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeNotIn(List<Date> values) {
            addCriterion("kaoqin_remark_reqtime not in", values, "kaoqinRemarkReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeBetween(Date value1, Date value2) {
            addCriterion("kaoqin_remark_reqtime between", value1, value2, "kaoqinRemarkReqtime");
            return (Criteria) this;
        }

        public Criteria andKaoqinRemarkReqtimeNotBetween(Date value1, Date value2) {
            addCriterion("kaoqin_remark_reqtime not between", value1, value2, "kaoqinRemarkReqtime");
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