package com.tosit.ssm.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class KaoqinRuleDetailExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public KaoqinRuleDetailExample() {
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

        protected void addCriterionForJDBCTime(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Time(value.getTime()), property);
        }

        protected void addCriterionForJDBCTime(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Time> timeList = new ArrayList<java.sql.Time>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                timeList.add(new java.sql.Time(iter.next().getTime()));
            }
            addCriterion(condition, timeList, property);
        }

        protected void addCriterionForJDBCTime(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Time(value1.getTime()), new java.sql.Time(value2.getTime()), property);
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

        public Criteria andKaoqinRuleIdIsNull() {
            addCriterion("kaoqin_rule_id is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdIsNotNull() {
            addCriterion("kaoqin_rule_id is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdEqualTo(String value) {
            addCriterion("kaoqin_rule_id =", value, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdNotEqualTo(String value) {
            addCriterion("kaoqin_rule_id <>", value, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdGreaterThan(String value) {
            addCriterion("kaoqin_rule_id >", value, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdGreaterThanOrEqualTo(String value) {
            addCriterion("kaoqin_rule_id >=", value, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdLessThan(String value) {
            addCriterion("kaoqin_rule_id <", value, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdLessThanOrEqualTo(String value) {
            addCriterion("kaoqin_rule_id <=", value, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdLike(String value) {
            addCriterion("kaoqin_rule_id like", value, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdNotLike(String value) {
            addCriterion("kaoqin_rule_id not like", value, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdIn(List<String> values) {
            addCriterion("kaoqin_rule_id in", values, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdNotIn(List<String> values) {
            addCriterion("kaoqin_rule_id not in", values, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdBetween(String value1, String value2) {
            addCriterion("kaoqin_rule_id between", value1, value2, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleIdNotBetween(String value1, String value2) {
            addCriterion("kaoqin_rule_id not between", value1, value2, "kaoqinRuleId");
            return (Criteria) this;
        }

        public Criteria andWeekDayIsNull() {
            addCriterion("week_day is null");
            return (Criteria) this;
        }

        public Criteria andWeekDayIsNotNull() {
            addCriterion("week_day is not null");
            return (Criteria) this;
        }

        public Criteria andWeekDayEqualTo(Integer value) {
            addCriterion("week_day =", value, "weekDay");
            return (Criteria) this;
        }

        public Criteria andWeekDayNotEqualTo(Integer value) {
            addCriterion("week_day <>", value, "weekDay");
            return (Criteria) this;
        }

        public Criteria andWeekDayGreaterThan(Integer value) {
            addCriterion("week_day >", value, "weekDay");
            return (Criteria) this;
        }

        public Criteria andWeekDayGreaterThanOrEqualTo(Integer value) {
            addCriterion("week_day >=", value, "weekDay");
            return (Criteria) this;
        }

        public Criteria andWeekDayLessThan(Integer value) {
            addCriterion("week_day <", value, "weekDay");
            return (Criteria) this;
        }

        public Criteria andWeekDayLessThanOrEqualTo(Integer value) {
            addCriterion("week_day <=", value, "weekDay");
            return (Criteria) this;
        }

        public Criteria andWeekDayIn(List<Integer> values) {
            addCriterion("week_day in", values, "weekDay");
            return (Criteria) this;
        }

        public Criteria andWeekDayNotIn(List<Integer> values) {
            addCriterion("week_day not in", values, "weekDay");
            return (Criteria) this;
        }

        public Criteria andWeekDayBetween(Integer value1, Integer value2) {
            addCriterion("week_day between", value1, value2, "weekDay");
            return (Criteria) this;
        }

        public Criteria andWeekDayNotBetween(Integer value1, Integer value2) {
            addCriterion("week_day not between", value1, value2, "weekDay");
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

        public Criteria andBrushStarttime1IsNull() {
            addCriterion("brush_startTime1 is null");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime1IsNotNull() {
            addCriterion("brush_startTime1 is not null");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime1EqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime1 =", value, "brushStarttime1");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime1NotEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime1 <>", value, "brushStarttime1");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime1GreaterThan(Date value) {
            addCriterionForJDBCTime("brush_startTime1 >", value, "brushStarttime1");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime1GreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime1 >=", value, "brushStarttime1");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime1LessThan(Date value) {
            addCriterionForJDBCTime("brush_startTime1 <", value, "brushStarttime1");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime1LessThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime1 <=", value, "brushStarttime1");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime1In(List<Date> values) {
            addCriterionForJDBCTime("brush_startTime1 in", values, "brushStarttime1");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime1NotIn(List<Date> values) {
            addCriterionForJDBCTime("brush_startTime1 not in", values, "brushStarttime1");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime1Between(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_startTime1 between", value1, value2, "brushStarttime1");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime1NotBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_startTime1 not between", value1, value2, "brushStarttime1");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1IsNull() {
            addCriterion("brush_endTime1 is null");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1IsNotNull() {
            addCriterion("brush_endTime1 is not null");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1EqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime1 =", value, "brushEndtime1");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1NotEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime1 <>", value, "brushEndtime1");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1GreaterThan(Date value) {
            addCriterionForJDBCTime("brush_endTime1 >", value, "brushEndtime1");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1GreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime1 >=", value, "brushEndtime1");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1LessThan(Date value) {
            addCriterionForJDBCTime("brush_endTime1 <", value, "brushEndtime1");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1LessThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime1 <=", value, "brushEndtime1");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1In(List<Date> values) {
            addCriterionForJDBCTime("brush_endTime1 in", values, "brushEndtime1");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1NotIn(List<Date> values) {
            addCriterionForJDBCTime("brush_endTime1 not in", values, "brushEndtime1");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1Between(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_endTime1 between", value1, value2, "brushEndtime1");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime1NotBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_endTime1 not between", value1, value2, "brushEndtime1");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaIsNull() {
            addCriterion("time1_wucha is null");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaIsNotNull() {
            addCriterion("time1_wucha is not null");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaEqualTo(Integer value) {
            addCriterion("time1_wucha =", value, "time1Wucha");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaNotEqualTo(Integer value) {
            addCriterion("time1_wucha <>", value, "time1Wucha");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaGreaterThan(Integer value) {
            addCriterion("time1_wucha >", value, "time1Wucha");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaGreaterThanOrEqualTo(Integer value) {
            addCriterion("time1_wucha >=", value, "time1Wucha");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaLessThan(Integer value) {
            addCriterion("time1_wucha <", value, "time1Wucha");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaLessThanOrEqualTo(Integer value) {
            addCriterion("time1_wucha <=", value, "time1Wucha");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaIn(List<Integer> values) {
            addCriterion("time1_wucha in", values, "time1Wucha");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaNotIn(List<Integer> values) {
            addCriterion("time1_wucha not in", values, "time1Wucha");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaBetween(Integer value1, Integer value2) {
            addCriterion("time1_wucha between", value1, value2, "time1Wucha");
            return (Criteria) this;
        }

        public Criteria andTime1WuchaNotBetween(Integer value1, Integer value2) {
            addCriterion("time1_wucha not between", value1, value2, "time1Wucha");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2IsNull() {
            addCriterion("brush_startTime2 is null");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2IsNotNull() {
            addCriterion("brush_startTime2 is not null");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2EqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime2 =", value, "brushStarttime2");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2NotEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime2 <>", value, "brushStarttime2");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2GreaterThan(Date value) {
            addCriterionForJDBCTime("brush_startTime2 >", value, "brushStarttime2");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2GreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime2 >=", value, "brushStarttime2");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2LessThan(Date value) {
            addCriterionForJDBCTime("brush_startTime2 <", value, "brushStarttime2");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2LessThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime2 <=", value, "brushStarttime2");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2In(List<Date> values) {
            addCriterionForJDBCTime("brush_startTime2 in", values, "brushStarttime2");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2NotIn(List<Date> values) {
            addCriterionForJDBCTime("brush_startTime2 not in", values, "brushStarttime2");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2Between(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_startTime2 between", value1, value2, "brushStarttime2");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime2NotBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_startTime2 not between", value1, value2, "brushStarttime2");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2IsNull() {
            addCriterion("brush_endTime2 is null");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2IsNotNull() {
            addCriterion("brush_endTime2 is not null");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2EqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime2 =", value, "brushEndtime2");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2NotEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime2 <>", value, "brushEndtime2");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2GreaterThan(Date value) {
            addCriterionForJDBCTime("brush_endTime2 >", value, "brushEndtime2");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2GreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime2 >=", value, "brushEndtime2");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2LessThan(Date value) {
            addCriterionForJDBCTime("brush_endTime2 <", value, "brushEndtime2");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2LessThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime2 <=", value, "brushEndtime2");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2In(List<Date> values) {
            addCriterionForJDBCTime("brush_endTime2 in", values, "brushEndtime2");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2NotIn(List<Date> values) {
            addCriterionForJDBCTime("brush_endTime2 not in", values, "brushEndtime2");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2Between(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_endTime2 between", value1, value2, "brushEndtime2");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime2NotBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_endTime2 not between", value1, value2, "brushEndtime2");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2IsNull() {
            addCriterion("time1_wucha2 is null");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2IsNotNull() {
            addCriterion("time1_wucha2 is not null");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2EqualTo(Integer value) {
            addCriterion("time1_wucha2 =", value, "time1Wucha2");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2NotEqualTo(Integer value) {
            addCriterion("time1_wucha2 <>", value, "time1Wucha2");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2GreaterThan(Integer value) {
            addCriterion("time1_wucha2 >", value, "time1Wucha2");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2GreaterThanOrEqualTo(Integer value) {
            addCriterion("time1_wucha2 >=", value, "time1Wucha2");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2LessThan(Integer value) {
            addCriterion("time1_wucha2 <", value, "time1Wucha2");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2LessThanOrEqualTo(Integer value) {
            addCriterion("time1_wucha2 <=", value, "time1Wucha2");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2In(List<Integer> values) {
            addCriterion("time1_wucha2 in", values, "time1Wucha2");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2NotIn(List<Integer> values) {
            addCriterion("time1_wucha2 not in", values, "time1Wucha2");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2Between(Integer value1, Integer value2) {
            addCriterion("time1_wucha2 between", value1, value2, "time1Wucha2");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha2NotBetween(Integer value1, Integer value2) {
            addCriterion("time1_wucha2 not between", value1, value2, "time1Wucha2");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3IsNull() {
            addCriterion("brush_startTime3 is null");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3IsNotNull() {
            addCriterion("brush_startTime3 is not null");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3EqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime3 =", value, "brushStarttime3");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3NotEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime3 <>", value, "brushStarttime3");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3GreaterThan(Date value) {
            addCriterionForJDBCTime("brush_startTime3 >", value, "brushStarttime3");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3GreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime3 >=", value, "brushStarttime3");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3LessThan(Date value) {
            addCriterionForJDBCTime("brush_startTime3 <", value, "brushStarttime3");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3LessThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime3 <=", value, "brushStarttime3");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3In(List<Date> values) {
            addCriterionForJDBCTime("brush_startTime3 in", values, "brushStarttime3");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3NotIn(List<Date> values) {
            addCriterionForJDBCTime("brush_startTime3 not in", values, "brushStarttime3");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3Between(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_startTime3 between", value1, value2, "brushStarttime3");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime3NotBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_startTime3 not between", value1, value2, "brushStarttime3");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3IsNull() {
            addCriterion("brush_endTime3 is null");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3IsNotNull() {
            addCriterion("brush_endTime3 is not null");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3EqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime3 =", value, "brushEndtime3");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3NotEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime3 <>", value, "brushEndtime3");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3GreaterThan(Date value) {
            addCriterionForJDBCTime("brush_endTime3 >", value, "brushEndtime3");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3GreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime3 >=", value, "brushEndtime3");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3LessThan(Date value) {
            addCriterionForJDBCTime("brush_endTime3 <", value, "brushEndtime3");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3LessThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime3 <=", value, "brushEndtime3");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3In(List<Date> values) {
            addCriterionForJDBCTime("brush_endTime3 in", values, "brushEndtime3");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3NotIn(List<Date> values) {
            addCriterionForJDBCTime("brush_endTime3 not in", values, "brushEndtime3");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3Between(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_endTime3 between", value1, value2, "brushEndtime3");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime3NotBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_endTime3 not between", value1, value2, "brushEndtime3");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3IsNull() {
            addCriterion("time1_wucha3 is null");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3IsNotNull() {
            addCriterion("time1_wucha3 is not null");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3EqualTo(Integer value) {
            addCriterion("time1_wucha3 =", value, "time1Wucha3");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3NotEqualTo(Integer value) {
            addCriterion("time1_wucha3 <>", value, "time1Wucha3");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3GreaterThan(Integer value) {
            addCriterion("time1_wucha3 >", value, "time1Wucha3");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3GreaterThanOrEqualTo(Integer value) {
            addCriterion("time1_wucha3 >=", value, "time1Wucha3");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3LessThan(Integer value) {
            addCriterion("time1_wucha3 <", value, "time1Wucha3");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3LessThanOrEqualTo(Integer value) {
            addCriterion("time1_wucha3 <=", value, "time1Wucha3");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3In(List<Integer> values) {
            addCriterion("time1_wucha3 in", values, "time1Wucha3");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3NotIn(List<Integer> values) {
            addCriterion("time1_wucha3 not in", values, "time1Wucha3");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3Between(Integer value1, Integer value2) {
            addCriterion("time1_wucha3 between", value1, value2, "time1Wucha3");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha3NotBetween(Integer value1, Integer value2) {
            addCriterion("time1_wucha3 not between", value1, value2, "time1Wucha3");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4IsNull() {
            addCriterion("brush_startTime4 is null");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4IsNotNull() {
            addCriterion("brush_startTime4 is not null");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4EqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime4 =", value, "brushStarttime4");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4NotEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime4 <>", value, "brushStarttime4");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4GreaterThan(Date value) {
            addCriterionForJDBCTime("brush_startTime4 >", value, "brushStarttime4");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4GreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime4 >=", value, "brushStarttime4");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4LessThan(Date value) {
            addCriterionForJDBCTime("brush_startTime4 <", value, "brushStarttime4");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4LessThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_startTime4 <=", value, "brushStarttime4");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4In(List<Date> values) {
            addCriterionForJDBCTime("brush_startTime4 in", values, "brushStarttime4");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4NotIn(List<Date> values) {
            addCriterionForJDBCTime("brush_startTime4 not in", values, "brushStarttime4");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4Between(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_startTime4 between", value1, value2, "brushStarttime4");
            return (Criteria) this;
        }

        public Criteria andBrushStarttime4NotBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_startTime4 not between", value1, value2, "brushStarttime4");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4IsNull() {
            addCriterion("brush_endTime4 is null");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4IsNotNull() {
            addCriterion("brush_endTime4 is not null");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4EqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime4 =", value, "brushEndtime4");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4NotEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime4 <>", value, "brushEndtime4");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4GreaterThan(Date value) {
            addCriterionForJDBCTime("brush_endTime4 >", value, "brushEndtime4");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4GreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime4 >=", value, "brushEndtime4");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4LessThan(Date value) {
            addCriterionForJDBCTime("brush_endTime4 <", value, "brushEndtime4");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4LessThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("brush_endTime4 <=", value, "brushEndtime4");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4In(List<Date> values) {
            addCriterionForJDBCTime("brush_endTime4 in", values, "brushEndtime4");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4NotIn(List<Date> values) {
            addCriterionForJDBCTime("brush_endTime4 not in", values, "brushEndtime4");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4Between(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_endTime4 between", value1, value2, "brushEndtime4");
            return (Criteria) this;
        }

        public Criteria andBrushEndtime4NotBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("brush_endTime4 not between", value1, value2, "brushEndtime4");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4IsNull() {
            addCriterion("time1_wucha4 is null");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4IsNotNull() {
            addCriterion("time1_wucha4 is not null");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4EqualTo(Integer value) {
            addCriterion("time1_wucha4 =", value, "time1Wucha4");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4NotEqualTo(Integer value) {
            addCriterion("time1_wucha4 <>", value, "time1Wucha4");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4GreaterThan(Integer value) {
            addCriterion("time1_wucha4 >", value, "time1Wucha4");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4GreaterThanOrEqualTo(Integer value) {
            addCriterion("time1_wucha4 >=", value, "time1Wucha4");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4LessThan(Integer value) {
            addCriterion("time1_wucha4 <", value, "time1Wucha4");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4LessThanOrEqualTo(Integer value) {
            addCriterion("time1_wucha4 <=", value, "time1Wucha4");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4In(List<Integer> values) {
            addCriterion("time1_wucha4 in", values, "time1Wucha4");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4NotIn(List<Integer> values) {
            addCriterion("time1_wucha4 not in", values, "time1Wucha4");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4Between(Integer value1, Integer value2) {
            addCriterion("time1_wucha4 between", value1, value2, "time1Wucha4");
            return (Criteria) this;
        }

        public Criteria andTime1Wucha4NotBetween(Integer value1, Integer value2) {
            addCriterion("time1_wucha4 not between", value1, value2, "time1Wucha4");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNull() {
            addCriterion("remarks is null");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNotNull() {
            addCriterion("remarks is not null");
            return (Criteria) this;
        }

        public Criteria andRemarksEqualTo(String value) {
            addCriterion("remarks =", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotEqualTo(String value) {
            addCriterion("remarks <>", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThan(String value) {
            addCriterion("remarks >", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThanOrEqualTo(String value) {
            addCriterion("remarks >=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThan(String value) {
            addCriterion("remarks <", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThanOrEqualTo(String value) {
            addCriterion("remarks <=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLike(String value) {
            addCriterion("remarks like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotLike(String value) {
            addCriterion("remarks not like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksIn(List<String> values) {
            addCriterion("remarks in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotIn(List<String> values) {
            addCriterion("remarks not in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksBetween(String value1, String value2) {
            addCriterion("remarks between", value1, value2, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotBetween(String value1, String value2) {
            addCriterion("remarks not between", value1, value2, "remarks");
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

        public Criteria andBrushCountIsNull() {
            addCriterion("brush_count is null");
            return (Criteria) this;
        }

        public Criteria andBrushCountIsNotNull() {
            addCriterion("brush_count is not null");
            return (Criteria) this;
        }

        public Criteria andBrushCountEqualTo(Integer value) {
            addCriterion("brush_count =", value, "brushCount");
            return (Criteria) this;
        }

        public Criteria andBrushCountNotEqualTo(Integer value) {
            addCriterion("brush_count <>", value, "brushCount");
            return (Criteria) this;
        }

        public Criteria andBrushCountGreaterThan(Integer value) {
            addCriterion("brush_count >", value, "brushCount");
            return (Criteria) this;
        }

        public Criteria andBrushCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("brush_count >=", value, "brushCount");
            return (Criteria) this;
        }

        public Criteria andBrushCountLessThan(Integer value) {
            addCriterion("brush_count <", value, "brushCount");
            return (Criteria) this;
        }

        public Criteria andBrushCountLessThanOrEqualTo(Integer value) {
            addCriterion("brush_count <=", value, "brushCount");
            return (Criteria) this;
        }

        public Criteria andBrushCountIn(List<Integer> values) {
            addCriterion("brush_count in", values, "brushCount");
            return (Criteria) this;
        }

        public Criteria andBrushCountNotIn(List<Integer> values) {
            addCriterion("brush_count not in", values, "brushCount");
            return (Criteria) this;
        }

        public Criteria andBrushCountBetween(Integer value1, Integer value2) {
            addCriterion("brush_count between", value1, value2, "brushCount");
            return (Criteria) this;
        }

        public Criteria andBrushCountNotBetween(Integer value1, Integer value2) {
            addCriterion("brush_count not between", value1, value2, "brushCount");
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

        public Criteria andCol1IsNull() {
            addCriterion("col_1 is null");
            return (Criteria) this;
        }

        public Criteria andCol1IsNotNull() {
            addCriterion("col_1 is not null");
            return (Criteria) this;
        }

        public Criteria andCol1EqualTo(String value) {
            addCriterion("col_1 =", value, "col1");
            return (Criteria) this;
        }

        public Criteria andCol1NotEqualTo(String value) {
            addCriterion("col_1 <>", value, "col1");
            return (Criteria) this;
        }

        public Criteria andCol1GreaterThan(String value) {
            addCriterion("col_1 >", value, "col1");
            return (Criteria) this;
        }

        public Criteria andCol1GreaterThanOrEqualTo(String value) {
            addCriterion("col_1 >=", value, "col1");
            return (Criteria) this;
        }

        public Criteria andCol1LessThan(String value) {
            addCriterion("col_1 <", value, "col1");
            return (Criteria) this;
        }

        public Criteria andCol1LessThanOrEqualTo(String value) {
            addCriterion("col_1 <=", value, "col1");
            return (Criteria) this;
        }

        public Criteria andCol1Like(String value) {
            addCriterion("col_1 like", value, "col1");
            return (Criteria) this;
        }

        public Criteria andCol1NotLike(String value) {
            addCriterion("col_1 not like", value, "col1");
            return (Criteria) this;
        }

        public Criteria andCol1In(List<String> values) {
            addCriterion("col_1 in", values, "col1");
            return (Criteria) this;
        }

        public Criteria andCol1NotIn(List<String> values) {
            addCriterion("col_1 not in", values, "col1");
            return (Criteria) this;
        }

        public Criteria andCol1Between(String value1, String value2) {
            addCriterion("col_1 between", value1, value2, "col1");
            return (Criteria) this;
        }

        public Criteria andCol1NotBetween(String value1, String value2) {
            addCriterion("col_1 not between", value1, value2, "col1");
            return (Criteria) this;
        }

        public Criteria andCol2IsNull() {
            addCriterion("col_2 is null");
            return (Criteria) this;
        }

        public Criteria andCol2IsNotNull() {
            addCriterion("col_2 is not null");
            return (Criteria) this;
        }

        public Criteria andCol2EqualTo(String value) {
            addCriterion("col_2 =", value, "col2");
            return (Criteria) this;
        }

        public Criteria andCol2NotEqualTo(String value) {
            addCriterion("col_2 <>", value, "col2");
            return (Criteria) this;
        }

        public Criteria andCol2GreaterThan(String value) {
            addCriterion("col_2 >", value, "col2");
            return (Criteria) this;
        }

        public Criteria andCol2GreaterThanOrEqualTo(String value) {
            addCriterion("col_2 >=", value, "col2");
            return (Criteria) this;
        }

        public Criteria andCol2LessThan(String value) {
            addCriterion("col_2 <", value, "col2");
            return (Criteria) this;
        }

        public Criteria andCol2LessThanOrEqualTo(String value) {
            addCriterion("col_2 <=", value, "col2");
            return (Criteria) this;
        }

        public Criteria andCol2Like(String value) {
            addCriterion("col_2 like", value, "col2");
            return (Criteria) this;
        }

        public Criteria andCol2NotLike(String value) {
            addCriterion("col_2 not like", value, "col2");
            return (Criteria) this;
        }

        public Criteria andCol2In(List<String> values) {
            addCriterion("col_2 in", values, "col2");
            return (Criteria) this;
        }

        public Criteria andCol2NotIn(List<String> values) {
            addCriterion("col_2 not in", values, "col2");
            return (Criteria) this;
        }

        public Criteria andCol2Between(String value1, String value2) {
            addCriterion("col_2 between", value1, value2, "col2");
            return (Criteria) this;
        }

        public Criteria andCol2NotBetween(String value1, String value2) {
            addCriterion("col_2 not between", value1, value2, "col2");
            return (Criteria) this;
        }

        public Criteria andCol3IsNull() {
            addCriterion("col_3 is null");
            return (Criteria) this;
        }

        public Criteria andCol3IsNotNull() {
            addCriterion("col_3 is not null");
            return (Criteria) this;
        }

        public Criteria andCol3EqualTo(String value) {
            addCriterion("col_3 =", value, "col3");
            return (Criteria) this;
        }

        public Criteria andCol3NotEqualTo(String value) {
            addCriterion("col_3 <>", value, "col3");
            return (Criteria) this;
        }

        public Criteria andCol3GreaterThan(String value) {
            addCriterion("col_3 >", value, "col3");
            return (Criteria) this;
        }

        public Criteria andCol3GreaterThanOrEqualTo(String value) {
            addCriterion("col_3 >=", value, "col3");
            return (Criteria) this;
        }

        public Criteria andCol3LessThan(String value) {
            addCriterion("col_3 <", value, "col3");
            return (Criteria) this;
        }

        public Criteria andCol3LessThanOrEqualTo(String value) {
            addCriterion("col_3 <=", value, "col3");
            return (Criteria) this;
        }

        public Criteria andCol3Like(String value) {
            addCriterion("col_3 like", value, "col3");
            return (Criteria) this;
        }

        public Criteria andCol3NotLike(String value) {
            addCriterion("col_3 not like", value, "col3");
            return (Criteria) this;
        }

        public Criteria andCol3In(List<String> values) {
            addCriterion("col_3 in", values, "col3");
            return (Criteria) this;
        }

        public Criteria andCol3NotIn(List<String> values) {
            addCriterion("col_3 not in", values, "col3");
            return (Criteria) this;
        }

        public Criteria andCol3Between(String value1, String value2) {
            addCriterion("col_3 between", value1, value2, "col3");
            return (Criteria) this;
        }

        public Criteria andCol3NotBetween(String value1, String value2) {
            addCriterion("col_3 not between", value1, value2, "col3");
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