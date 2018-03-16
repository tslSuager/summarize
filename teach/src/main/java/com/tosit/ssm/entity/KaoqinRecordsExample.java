package com.tosit.ssm.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class KaoqinRecordsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public KaoqinRecordsExample() {
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
            addCriterion("ID is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("ID is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("ID =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("ID <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("ID >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("ID >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("ID <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("ID <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("ID like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("ID not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("ID in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("ID not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("ID between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("ID not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andKeyNumberIsNull() {
            addCriterion("key_number is null");
            return (Criteria) this;
        }

        public Criteria andKeyNumberIsNotNull() {
            addCriterion("key_number is not null");
            return (Criteria) this;
        }

        public Criteria andKeyNumberEqualTo(String value) {
            addCriterion("key_number =", value, "keyNumber");
            return (Criteria) this;
        }

        public Criteria andKeyNumberNotEqualTo(String value) {
            addCriterion("key_number <>", value, "keyNumber");
            return (Criteria) this;
        }

        public Criteria andKeyNumberGreaterThan(String value) {
            addCriterion("key_number >", value, "keyNumber");
            return (Criteria) this;
        }

        public Criteria andKeyNumberGreaterThanOrEqualTo(String value) {
            addCriterion("key_number >=", value, "keyNumber");
            return (Criteria) this;
        }

        public Criteria andKeyNumberLessThan(String value) {
            addCriterion("key_number <", value, "keyNumber");
            return (Criteria) this;
        }

        public Criteria andKeyNumberLessThanOrEqualTo(String value) {
            addCriterion("key_number <=", value, "keyNumber");
            return (Criteria) this;
        }

        public Criteria andKeyNumberLike(String value) {
            addCriterion("key_number like", value, "keyNumber");
            return (Criteria) this;
        }

        public Criteria andKeyNumberNotLike(String value) {
            addCriterion("key_number not like", value, "keyNumber");
            return (Criteria) this;
        }

        public Criteria andKeyNumberIn(List<String> values) {
            addCriterion("key_number in", values, "keyNumber");
            return (Criteria) this;
        }

        public Criteria andKeyNumberNotIn(List<String> values) {
            addCriterion("key_number not in", values, "keyNumber");
            return (Criteria) this;
        }

        public Criteria andKeyNumberBetween(String value1, String value2) {
            addCriterion("key_number between", value1, value2, "keyNumber");
            return (Criteria) this;
        }

        public Criteria andKeyNumberNotBetween(String value1, String value2) {
            addCriterion("key_number not between", value1, value2, "keyNumber");
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

        public Criteria andSequenceNumberIsNull() {
            addCriterion("sequence_number is null");
            return (Criteria) this;
        }

        public Criteria andSequenceNumberIsNotNull() {
            addCriterion("sequence_number is not null");
            return (Criteria) this;
        }

        public Criteria andSequenceNumberEqualTo(Integer value) {
            addCriterion("sequence_number =", value, "sequenceNumber");
            return (Criteria) this;
        }

        public Criteria andSequenceNumberNotEqualTo(Integer value) {
            addCriterion("sequence_number <>", value, "sequenceNumber");
            return (Criteria) this;
        }

        public Criteria andSequenceNumberGreaterThan(Integer value) {
            addCriterion("sequence_number >", value, "sequenceNumber");
            return (Criteria) this;
        }

        public Criteria andSequenceNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("sequence_number >=", value, "sequenceNumber");
            return (Criteria) this;
        }

        public Criteria andSequenceNumberLessThan(Integer value) {
            addCriterion("sequence_number <", value, "sequenceNumber");
            return (Criteria) this;
        }

        public Criteria andSequenceNumberLessThanOrEqualTo(Integer value) {
            addCriterion("sequence_number <=", value, "sequenceNumber");
            return (Criteria) this;
        }

        public Criteria andSequenceNumberIn(List<Integer> values) {
            addCriterion("sequence_number in", values, "sequenceNumber");
            return (Criteria) this;
        }

        public Criteria andSequenceNumberNotIn(List<Integer> values) {
            addCriterion("sequence_number not in", values, "sequenceNumber");
            return (Criteria) this;
        }

        public Criteria andSequenceNumberBetween(Integer value1, Integer value2) {
            addCriterion("sequence_number between", value1, value2, "sequenceNumber");
            return (Criteria) this;
        }

        public Criteria andSequenceNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("sequence_number not between", value1, value2, "sequenceNumber");
            return (Criteria) this;
        }

        public Criteria andBrushtimeIsNull() {
            addCriterion("brushTime is null");
            return (Criteria) this;
        }

        public Criteria andBrushtimeIsNotNull() {
            addCriterion("brushTime is not null");
            return (Criteria) this;
        }

        public Criteria andBrushtimeEqualTo(Date value) {
            addCriterion("brushTime =", value, "brushtime");
            return (Criteria) this;
        }

        public Criteria andBrushtimeNotEqualTo(Date value) {
            addCriterion("brushTime <>", value, "brushtime");
            return (Criteria) this;
        }

        public Criteria andBrushtimeGreaterThan(Date value) {
            addCriterion("brushTime >", value, "brushtime");
            return (Criteria) this;
        }

        public Criteria andBrushtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("brushTime >=", value, "brushtime");
            return (Criteria) this;
        }

        public Criteria andBrushtimeLessThan(Date value) {
            addCriterion("brushTime <", value, "brushtime");
            return (Criteria) this;
        }

        public Criteria andBrushtimeLessThanOrEqualTo(Date value) {
            addCriterion("brushTime <=", value, "brushtime");
            return (Criteria) this;
        }

        public Criteria andBrushtimeIn(List<Date> values) {
            addCriterion("brushTime in", values, "brushtime");
            return (Criteria) this;
        }

        public Criteria andBrushtimeNotIn(List<Date> values) {
            addCriterion("brushTime not in", values, "brushtime");
            return (Criteria) this;
        }

        public Criteria andBrushtimeBetween(Date value1, Date value2) {
            addCriterion("brushTime between", value1, value2, "brushtime");
            return (Criteria) this;
        }

        public Criteria andBrushtimeNotBetween(Date value1, Date value2) {
            addCriterion("brushTime not between", value1, value2, "brushtime");
            return (Criteria) this;
        }

        public Criteria andCheckTypeIsNull() {
            addCriterion("check_type is null");
            return (Criteria) this;
        }

        public Criteria andCheckTypeIsNotNull() {
            addCriterion("check_type is not null");
            return (Criteria) this;
        }

        public Criteria andCheckTypeEqualTo(String value) {
            addCriterion("check_type =", value, "checkType");
            return (Criteria) this;
        }

        public Criteria andCheckTypeNotEqualTo(String value) {
            addCriterion("check_type <>", value, "checkType");
            return (Criteria) this;
        }

        public Criteria andCheckTypeGreaterThan(String value) {
            addCriterion("check_type >", value, "checkType");
            return (Criteria) this;
        }

        public Criteria andCheckTypeGreaterThanOrEqualTo(String value) {
            addCriterion("check_type >=", value, "checkType");
            return (Criteria) this;
        }

        public Criteria andCheckTypeLessThan(String value) {
            addCriterion("check_type <", value, "checkType");
            return (Criteria) this;
        }

        public Criteria andCheckTypeLessThanOrEqualTo(String value) {
            addCriterion("check_type <=", value, "checkType");
            return (Criteria) this;
        }

        public Criteria andCheckTypeLike(String value) {
            addCriterion("check_type like", value, "checkType");
            return (Criteria) this;
        }

        public Criteria andCheckTypeNotLike(String value) {
            addCriterion("check_type not like", value, "checkType");
            return (Criteria) this;
        }

        public Criteria andCheckTypeIn(List<String> values) {
            addCriterion("check_type in", values, "checkType");
            return (Criteria) this;
        }

        public Criteria andCheckTypeNotIn(List<String> values) {
            addCriterion("check_type not in", values, "checkType");
            return (Criteria) this;
        }

        public Criteria andCheckTypeBetween(String value1, String value2) {
            addCriterion("check_type between", value1, value2, "checkType");
            return (Criteria) this;
        }

        public Criteria andCheckTypeNotBetween(String value1, String value2) {
            addCriterion("check_type not between", value1, value2, "checkType");
            return (Criteria) this;
        }

        public Criteria andMachineNumberIsNull() {
            addCriterion("machine_number is null");
            return (Criteria) this;
        }

        public Criteria andMachineNumberIsNotNull() {
            addCriterion("machine_number is not null");
            return (Criteria) this;
        }

        public Criteria andMachineNumberEqualTo(String value) {
            addCriterion("machine_number =", value, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNumberNotEqualTo(String value) {
            addCriterion("machine_number <>", value, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNumberGreaterThan(String value) {
            addCriterion("machine_number >", value, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNumberGreaterThanOrEqualTo(String value) {
            addCriterion("machine_number >=", value, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNumberLessThan(String value) {
            addCriterion("machine_number <", value, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNumberLessThanOrEqualTo(String value) {
            addCriterion("machine_number <=", value, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNumberLike(String value) {
            addCriterion("machine_number like", value, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNumberNotLike(String value) {
            addCriterion("machine_number not like", value, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNumberIn(List<String> values) {
            addCriterion("machine_number in", values, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNumberNotIn(List<String> values) {
            addCriterion("machine_number not in", values, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNumberBetween(String value1, String value2) {
            addCriterion("machine_number between", value1, value2, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNumberNotBetween(String value1, String value2) {
            addCriterion("machine_number not between", value1, value2, "machineNumber");
            return (Criteria) this;
        }

        public Criteria andMachineNameIsNull() {
            addCriterion("machine_name is null");
            return (Criteria) this;
        }

        public Criteria andMachineNameIsNotNull() {
            addCriterion("machine_name is not null");
            return (Criteria) this;
        }

        public Criteria andMachineNameEqualTo(String value) {
            addCriterion("machine_name =", value, "machineName");
            return (Criteria) this;
        }

        public Criteria andMachineNameNotEqualTo(String value) {
            addCriterion("machine_name <>", value, "machineName");
            return (Criteria) this;
        }

        public Criteria andMachineNameGreaterThan(String value) {
            addCriterion("machine_name >", value, "machineName");
            return (Criteria) this;
        }

        public Criteria andMachineNameGreaterThanOrEqualTo(String value) {
            addCriterion("machine_name >=", value, "machineName");
            return (Criteria) this;
        }

        public Criteria andMachineNameLessThan(String value) {
            addCriterion("machine_name <", value, "machineName");
            return (Criteria) this;
        }

        public Criteria andMachineNameLessThanOrEqualTo(String value) {
            addCriterion("machine_name <=", value, "machineName");
            return (Criteria) this;
        }

        public Criteria andMachineNameLike(String value) {
            addCriterion("machine_name like", value, "machineName");
            return (Criteria) this;
        }

        public Criteria andMachineNameNotLike(String value) {
            addCriterion("machine_name not like", value, "machineName");
            return (Criteria) this;
        }

        public Criteria andMachineNameIn(List<String> values) {
            addCriterion("machine_name in", values, "machineName");
            return (Criteria) this;
        }

        public Criteria andMachineNameNotIn(List<String> values) {
            addCriterion("machine_name not in", values, "machineName");
            return (Criteria) this;
        }

        public Criteria andMachineNameBetween(String value1, String value2) {
            addCriterion("machine_name between", value1, value2, "machineName");
            return (Criteria) this;
        }

        public Criteria andMachineNameNotBetween(String value1, String value2) {
            addCriterion("machine_name not between", value1, value2, "machineName");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdIsNull() {
            addCriterion("kaoqin_result_id is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdIsNotNull() {
            addCriterion("kaoqin_result_id is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdEqualTo(String value) {
            addCriterion("kaoqin_result_id =", value, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdNotEqualTo(String value) {
            addCriterion("kaoqin_result_id <>", value, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdGreaterThan(String value) {
            addCriterion("kaoqin_result_id >", value, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdGreaterThanOrEqualTo(String value) {
            addCriterion("kaoqin_result_id >=", value, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdLessThan(String value) {
            addCriterion("kaoqin_result_id <", value, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdLessThanOrEqualTo(String value) {
            addCriterion("kaoqin_result_id <=", value, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdLike(String value) {
            addCriterion("kaoqin_result_id like", value, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdNotLike(String value) {
            addCriterion("kaoqin_result_id not like", value, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdIn(List<String> values) {
            addCriterion("kaoqin_result_id in", values, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdNotIn(List<String> values) {
            addCriterion("kaoqin_result_id not in", values, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdBetween(String value1, String value2) {
            addCriterion("kaoqin_result_id between", value1, value2, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andKaoqinResultIdNotBetween(String value1, String value2) {
            addCriterion("kaoqin_result_id not between", value1, value2, "kaoqinResultId");
            return (Criteria) this;
        }

        public Criteria andResultIsNull() {
            addCriterion("result is null");
            return (Criteria) this;
        }

        public Criteria andResultIsNotNull() {
            addCriterion("result is not null");
            return (Criteria) this;
        }

        public Criteria andResultEqualTo(Integer value) {
            addCriterion("result =", value, "result");
            return (Criteria) this;
        }

        public Criteria andResultNotEqualTo(Integer value) {
            addCriterion("result <>", value, "result");
            return (Criteria) this;
        }

        public Criteria andResultGreaterThan(Integer value) {
            addCriterion("result >", value, "result");
            return (Criteria) this;
        }

        public Criteria andResultGreaterThanOrEqualTo(Integer value) {
            addCriterion("result >=", value, "result");
            return (Criteria) this;
        }

        public Criteria andResultLessThan(Integer value) {
            addCriterion("result <", value, "result");
            return (Criteria) this;
        }

        public Criteria andResultLessThanOrEqualTo(Integer value) {
            addCriterion("result <=", value, "result");
            return (Criteria) this;
        }

        public Criteria andResultIn(List<Integer> values) {
            addCriterion("result in", values, "result");
            return (Criteria) this;
        }

        public Criteria andResultNotIn(List<Integer> values) {
            addCriterion("result not in", values, "result");
            return (Criteria) this;
        }

        public Criteria andResultBetween(Integer value1, Integer value2) {
            addCriterion("result between", value1, value2, "result");
            return (Criteria) this;
        }

        public Criteria andResultNotBetween(Integer value1, Integer value2) {
            addCriterion("result not between", value1, value2, "result");
            return (Criteria) this;
        }

        public Criteria andResultTextIsNull() {
            addCriterion("result_text is null");
            return (Criteria) this;
        }

        public Criteria andResultTextIsNotNull() {
            addCriterion("result_text is not null");
            return (Criteria) this;
        }

        public Criteria andResultTextEqualTo(String value) {
            addCriterion("result_text =", value, "resultText");
            return (Criteria) this;
        }

        public Criteria andResultTextNotEqualTo(String value) {
            addCriterion("result_text <>", value, "resultText");
            return (Criteria) this;
        }

        public Criteria andResultTextGreaterThan(String value) {
            addCriterion("result_text >", value, "resultText");
            return (Criteria) this;
        }

        public Criteria andResultTextGreaterThanOrEqualTo(String value) {
            addCriterion("result_text >=", value, "resultText");
            return (Criteria) this;
        }

        public Criteria andResultTextLessThan(String value) {
            addCriterion("result_text <", value, "resultText");
            return (Criteria) this;
        }

        public Criteria andResultTextLessThanOrEqualTo(String value) {
            addCriterion("result_text <=", value, "resultText");
            return (Criteria) this;
        }

        public Criteria andResultTextLike(String value) {
            addCriterion("result_text like", value, "resultText");
            return (Criteria) this;
        }

        public Criteria andResultTextNotLike(String value) {
            addCriterion("result_text not like", value, "resultText");
            return (Criteria) this;
        }

        public Criteria andResultTextIn(List<String> values) {
            addCriterion("result_text in", values, "resultText");
            return (Criteria) this;
        }

        public Criteria andResultTextNotIn(List<String> values) {
            addCriterion("result_text not in", values, "resultText");
            return (Criteria) this;
        }

        public Criteria andResultTextBetween(String value1, String value2) {
            addCriterion("result_text between", value1, value2, "resultText");
            return (Criteria) this;
        }

        public Criteria andResultTextNotBetween(String value1, String value2) {
            addCriterion("result_text not between", value1, value2, "resultText");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoIsNull() {
            addCriterion("is_youxiao is null");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoIsNotNull() {
            addCriterion("is_youxiao is not null");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoEqualTo(Integer value) {
            addCriterion("is_youxiao =", value, "isYouxiao");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoNotEqualTo(Integer value) {
            addCriterion("is_youxiao <>", value, "isYouxiao");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoGreaterThan(Integer value) {
            addCriterion("is_youxiao >", value, "isYouxiao");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_youxiao >=", value, "isYouxiao");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoLessThan(Integer value) {
            addCriterion("is_youxiao <", value, "isYouxiao");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoLessThanOrEqualTo(Integer value) {
            addCriterion("is_youxiao <=", value, "isYouxiao");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoIn(List<Integer> values) {
            addCriterion("is_youxiao in", values, "isYouxiao");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoNotIn(List<Integer> values) {
            addCriterion("is_youxiao not in", values, "isYouxiao");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoBetween(Integer value1, Integer value2) {
            addCriterion("is_youxiao between", value1, value2, "isYouxiao");
            return (Criteria) this;
        }

        public Criteria andIsYouxiaoNotBetween(Integer value1, Integer value2) {
            addCriterion("is_youxiao not between", value1, value2, "isYouxiao");
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