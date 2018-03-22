package com.tosit.ssm.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UtilttlesExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UtilttlesExample() {
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

        public Criteria andDormitoryIdIsNull() {
            addCriterion("dormitory_id is null");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdIsNotNull() {
            addCriterion("dormitory_id is not null");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdEqualTo(String value) {
            addCriterion("dormitory_id =", value, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdNotEqualTo(String value) {
            addCriterion("dormitory_id <>", value, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdGreaterThan(String value) {
            addCriterion("dormitory_id >", value, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdGreaterThanOrEqualTo(String value) {
            addCriterion("dormitory_id >=", value, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdLessThan(String value) {
            addCriterion("dormitory_id <", value, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdLessThanOrEqualTo(String value) {
            addCriterion("dormitory_id <=", value, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdLike(String value) {
            addCriterion("dormitory_id like", value, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdNotLike(String value) {
            addCriterion("dormitory_id not like", value, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdIn(List<String> values) {
            addCriterion("dormitory_id in", values, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdNotIn(List<String> values) {
            addCriterion("dormitory_id not in", values, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdBetween(String value1, String value2) {
            addCriterion("dormitory_id between", value1, value2, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andDormitoryIdNotBetween(String value1, String value2) {
            addCriterion("dormitory_id not between", value1, value2, "dormitoryId");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountIsNull() {
            addCriterion("cin_water_count is null");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountIsNotNull() {
            addCriterion("cin_water_count is not null");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountEqualTo(Integer value) {
            addCriterion("cin_water_count =", value, "cinWaterCount");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountNotEqualTo(Integer value) {
            addCriterion("cin_water_count <>", value, "cinWaterCount");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountGreaterThan(Integer value) {
            addCriterion("cin_water_count >", value, "cinWaterCount");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("cin_water_count >=", value, "cinWaterCount");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountLessThan(Integer value) {
            addCriterion("cin_water_count <", value, "cinWaterCount");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountLessThanOrEqualTo(Integer value) {
            addCriterion("cin_water_count <=", value, "cinWaterCount");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountIn(List<Integer> values) {
            addCriterion("cin_water_count in", values, "cinWaterCount");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountNotIn(List<Integer> values) {
            addCriterion("cin_water_count not in", values, "cinWaterCount");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountBetween(Integer value1, Integer value2) {
            addCriterion("cin_water_count between", value1, value2, "cinWaterCount");
            return (Criteria) this;
        }

        public Criteria andCinWaterCountNotBetween(Integer value1, Integer value2) {
            addCriterion("cin_water_count not between", value1, value2, "cinWaterCount");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountIsNull() {
            addCriterion("cin_electricity_count is null");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountIsNotNull() {
            addCriterion("cin_electricity_count is not null");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountEqualTo(Integer value) {
            addCriterion("cin_electricity_count =", value, "cinElectricityCount");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountNotEqualTo(Integer value) {
            addCriterion("cin_electricity_count <>", value, "cinElectricityCount");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountGreaterThan(Integer value) {
            addCriterion("cin_electricity_count >", value, "cinElectricityCount");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("cin_electricity_count >=", value, "cinElectricityCount");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountLessThan(Integer value) {
            addCriterion("cin_electricity_count <", value, "cinElectricityCount");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountLessThanOrEqualTo(Integer value) {
            addCriterion("cin_electricity_count <=", value, "cinElectricityCount");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountIn(List<Integer> values) {
            addCriterion("cin_electricity_count in", values, "cinElectricityCount");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountNotIn(List<Integer> values) {
            addCriterion("cin_electricity_count not in", values, "cinElectricityCount");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountBetween(Integer value1, Integer value2) {
            addCriterion("cin_electricity_count between", value1, value2, "cinElectricityCount");
            return (Criteria) this;
        }

        public Criteria andCinElectricityCountNotBetween(Integer value1, Integer value2) {
            addCriterion("cin_electricity_count not between", value1, value2, "cinElectricityCount");
            return (Criteria) this;
        }

        public Criteria andCinGasCountIsNull() {
            addCriterion("cin_gas_count is null");
            return (Criteria) this;
        }

        public Criteria andCinGasCountIsNotNull() {
            addCriterion("cin_gas_count is not null");
            return (Criteria) this;
        }

        public Criteria andCinGasCountEqualTo(Integer value) {
            addCriterion("cin_gas_count =", value, "cinGasCount");
            return (Criteria) this;
        }

        public Criteria andCinGasCountNotEqualTo(Integer value) {
            addCriterion("cin_gas_count <>", value, "cinGasCount");
            return (Criteria) this;
        }

        public Criteria andCinGasCountGreaterThan(Integer value) {
            addCriterion("cin_gas_count >", value, "cinGasCount");
            return (Criteria) this;
        }

        public Criteria andCinGasCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("cin_gas_count >=", value, "cinGasCount");
            return (Criteria) this;
        }

        public Criteria andCinGasCountLessThan(Integer value) {
            addCriterion("cin_gas_count <", value, "cinGasCount");
            return (Criteria) this;
        }

        public Criteria andCinGasCountLessThanOrEqualTo(Integer value) {
            addCriterion("cin_gas_count <=", value, "cinGasCount");
            return (Criteria) this;
        }

        public Criteria andCinGasCountIn(List<Integer> values) {
            addCriterion("cin_gas_count in", values, "cinGasCount");
            return (Criteria) this;
        }

        public Criteria andCinGasCountNotIn(List<Integer> values) {
            addCriterion("cin_gas_count not in", values, "cinGasCount");
            return (Criteria) this;
        }

        public Criteria andCinGasCountBetween(Integer value1, Integer value2) {
            addCriterion("cin_gas_count between", value1, value2, "cinGasCount");
            return (Criteria) this;
        }

        public Criteria andCinGasCountNotBetween(Integer value1, Integer value2) {
            addCriterion("cin_gas_count not between", value1, value2, "cinGasCount");
            return (Criteria) this;
        }

        public Criteria andRecordTimeIsNull() {
            addCriterion("record_time is null");
            return (Criteria) this;
        }

        public Criteria andRecordTimeIsNotNull() {
            addCriterion("record_time is not null");
            return (Criteria) this;
        }

        public Criteria andRecordTimeEqualTo(Date value) {
            addCriterion("record_time =", value, "recordTime");
            return (Criteria) this;
        }

        public Criteria andRecordTimeNotEqualTo(Date value) {
            addCriterion("record_time <>", value, "recordTime");
            return (Criteria) this;
        }

        public Criteria andRecordTimeGreaterThan(Date value) {
            addCriterion("record_time >", value, "recordTime");
            return (Criteria) this;
        }

        public Criteria andRecordTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("record_time >=", value, "recordTime");
            return (Criteria) this;
        }

        public Criteria andRecordTimeLessThan(Date value) {
            addCriterion("record_time <", value, "recordTime");
            return (Criteria) this;
        }

        public Criteria andRecordTimeLessThanOrEqualTo(Date value) {
            addCriterion("record_time <=", value, "recordTime");
            return (Criteria) this;
        }

        public Criteria andRecordTimeIn(List<Date> values) {
            addCriterion("record_time in", values, "recordTime");
            return (Criteria) this;
        }

        public Criteria andRecordTimeNotIn(List<Date> values) {
            addCriterion("record_time not in", values, "recordTime");
            return (Criteria) this;
        }

        public Criteria andRecordTimeBetween(Date value1, Date value2) {
            addCriterion("record_time between", value1, value2, "recordTime");
            return (Criteria) this;
        }

        public Criteria andRecordTimeNotBetween(Date value1, Date value2) {
            addCriterion("record_time not between", value1, value2, "recordTime");
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