package com.tosit.ssm.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserExample() {
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

        public Criteria andLoginnameIsNull() {
            addCriterion("loginName is null");
            return (Criteria) this;
        }

        public Criteria andLoginnameIsNotNull() {
            addCriterion("loginName is not null");
            return (Criteria) this;
        }

        public Criteria andLoginnameEqualTo(String value) {
            addCriterion("loginName =", value, "loginname");
            return (Criteria) this;
        }

        public Criteria andLoginnameNotEqualTo(String value) {
            addCriterion("loginName <>", value, "loginname");
            return (Criteria) this;
        }

        public Criteria andLoginnameGreaterThan(String value) {
            addCriterion("loginName >", value, "loginname");
            return (Criteria) this;
        }

        public Criteria andLoginnameGreaterThanOrEqualTo(String value) {
            addCriterion("loginName >=", value, "loginname");
            return (Criteria) this;
        }

        public Criteria andLoginnameLessThan(String value) {
            addCriterion("loginName <", value, "loginname");
            return (Criteria) this;
        }

        public Criteria andLoginnameLessThanOrEqualTo(String value) {
            addCriterion("loginName <=", value, "loginname");
            return (Criteria) this;
        }

        public Criteria andLoginnameLike(String value) {
            addCriterion("loginName like", value, "loginname");
            return (Criteria) this;
        }

        public Criteria andLoginnameNotLike(String value) {
            addCriterion("loginName not like", value, "loginname");
            return (Criteria) this;
        }

        public Criteria andLoginnameIn(List<String> values) {
            addCriterion("loginName in", values, "loginname");
            return (Criteria) this;
        }

        public Criteria andLoginnameNotIn(List<String> values) {
            addCriterion("loginName not in", values, "loginname");
            return (Criteria) this;
        }

        public Criteria andLoginnameBetween(String value1, String value2) {
            addCriterion("loginName between", value1, value2, "loginname");
            return (Criteria) this;
        }

        public Criteria andLoginnameNotBetween(String value1, String value2) {
            addCriterion("loginName not between", value1, value2, "loginname");
            return (Criteria) this;
        }

        public Criteria andPasswordIsNull() {
            addCriterion("password is null");
            return (Criteria) this;
        }

        public Criteria andPasswordIsNotNull() {
            addCriterion("password is not null");
            return (Criteria) this;
        }

        public Criteria andPasswordEqualTo(String value) {
            addCriterion("password =", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotEqualTo(String value) {
            addCriterion("password <>", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordGreaterThan(String value) {
            addCriterion("password >", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("password >=", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLessThan(String value) {
            addCriterion("password <", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLessThanOrEqualTo(String value) {
            addCriterion("password <=", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordLike(String value) {
            addCriterion("password like", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotLike(String value) {
            addCriterion("password not like", value, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordIn(List<String> values) {
            addCriterion("password in", values, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotIn(List<String> values) {
            addCriterion("password not in", values, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordBetween(String value1, String value2) {
            addCriterion("password between", value1, value2, "password");
            return (Criteria) this;
        }

        public Criteria andPasswordNotBetween(String value1, String value2) {
            addCriterion("password not between", value1, value2, "password");
            return (Criteria) this;
        }

        public Criteria andSaltIsNull() {
            addCriterion("salt is null");
            return (Criteria) this;
        }

        public Criteria andSaltIsNotNull() {
            addCriterion("salt is not null");
            return (Criteria) this;
        }

        public Criteria andSaltEqualTo(String value) {
            addCriterion("salt =", value, "salt");
            return (Criteria) this;
        }

        public Criteria andSaltNotEqualTo(String value) {
            addCriterion("salt <>", value, "salt");
            return (Criteria) this;
        }

        public Criteria andSaltGreaterThan(String value) {
            addCriterion("salt >", value, "salt");
            return (Criteria) this;
        }

        public Criteria andSaltGreaterThanOrEqualTo(String value) {
            addCriterion("salt >=", value, "salt");
            return (Criteria) this;
        }

        public Criteria andSaltLessThan(String value) {
            addCriterion("salt <", value, "salt");
            return (Criteria) this;
        }

        public Criteria andSaltLessThanOrEqualTo(String value) {
            addCriterion("salt <=", value, "salt");
            return (Criteria) this;
        }

        public Criteria andSaltLike(String value) {
            addCriterion("salt like", value, "salt");
            return (Criteria) this;
        }

        public Criteria andSaltNotLike(String value) {
            addCriterion("salt not like", value, "salt");
            return (Criteria) this;
        }

        public Criteria andSaltIn(List<String> values) {
            addCriterion("salt in", values, "salt");
            return (Criteria) this;
        }

        public Criteria andSaltNotIn(List<String> values) {
            addCriterion("salt not in", values, "salt");
            return (Criteria) this;
        }

        public Criteria andSaltBetween(String value1, String value2) {
            addCriterion("salt between", value1, value2, "salt");
            return (Criteria) this;
        }

        public Criteria andSaltNotBetween(String value1, String value2) {
            addCriterion("salt not between", value1, value2, "salt");
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

        public Criteria andNinameIsNull() {
            addCriterion("niName is null");
            return (Criteria) this;
        }

        public Criteria andNinameIsNotNull() {
            addCriterion("niName is not null");
            return (Criteria) this;
        }

        public Criteria andNinameEqualTo(String value) {
            addCriterion("niName =", value, "niname");
            return (Criteria) this;
        }

        public Criteria andNinameNotEqualTo(String value) {
            addCriterion("niName <>", value, "niname");
            return (Criteria) this;
        }

        public Criteria andNinameGreaterThan(String value) {
            addCriterion("niName >", value, "niname");
            return (Criteria) this;
        }

        public Criteria andNinameGreaterThanOrEqualTo(String value) {
            addCriterion("niName >=", value, "niname");
            return (Criteria) this;
        }

        public Criteria andNinameLessThan(String value) {
            addCriterion("niName <", value, "niname");
            return (Criteria) this;
        }

        public Criteria andNinameLessThanOrEqualTo(String value) {
            addCriterion("niName <=", value, "niname");
            return (Criteria) this;
        }

        public Criteria andNinameLike(String value) {
            addCriterion("niName like", value, "niname");
            return (Criteria) this;
        }

        public Criteria andNinameNotLike(String value) {
            addCriterion("niName not like", value, "niname");
            return (Criteria) this;
        }

        public Criteria andNinameIn(List<String> values) {
            addCriterion("niName in", values, "niname");
            return (Criteria) this;
        }

        public Criteria andNinameNotIn(List<String> values) {
            addCriterion("niName not in", values, "niname");
            return (Criteria) this;
        }

        public Criteria andNinameBetween(String value1, String value2) {
            addCriterion("niName between", value1, value2, "niname");
            return (Criteria) this;
        }

        public Criteria andNinameNotBetween(String value1, String value2) {
            addCriterion("niName not between", value1, value2, "niname");
            return (Criteria) this;
        }

        public Criteria andSexIsNull() {
            addCriterion("sex is null");
            return (Criteria) this;
        }

        public Criteria andSexIsNotNull() {
            addCriterion("sex is not null");
            return (Criteria) this;
        }

        public Criteria andSexEqualTo(String value) {
            addCriterion("sex =", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotEqualTo(String value) {
            addCriterion("sex <>", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThan(String value) {
            addCriterion("sex >", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThanOrEqualTo(String value) {
            addCriterion("sex >=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThan(String value) {
            addCriterion("sex <", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThanOrEqualTo(String value) {
            addCriterion("sex <=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLike(String value) {
            addCriterion("sex like", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotLike(String value) {
            addCriterion("sex not like", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexIn(List<String> values) {
            addCriterion("sex in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotIn(List<String> values) {
            addCriterion("sex not in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexBetween(String value1, String value2) {
            addCriterion("sex between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotBetween(String value1, String value2) {
            addCriterion("sex not between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andPersonnoIsNull() {
            addCriterion("personNo is null");
            return (Criteria) this;
        }

        public Criteria andPersonnoIsNotNull() {
            addCriterion("personNo is not null");
            return (Criteria) this;
        }

        public Criteria andPersonnoEqualTo(String value) {
            addCriterion("personNo =", value, "personno");
            return (Criteria) this;
        }

        public Criteria andPersonnoNotEqualTo(String value) {
            addCriterion("personNo <>", value, "personno");
            return (Criteria) this;
        }

        public Criteria andPersonnoGreaterThan(String value) {
            addCriterion("personNo >", value, "personno");
            return (Criteria) this;
        }

        public Criteria andPersonnoGreaterThanOrEqualTo(String value) {
            addCriterion("personNo >=", value, "personno");
            return (Criteria) this;
        }

        public Criteria andPersonnoLessThan(String value) {
            addCriterion("personNo <", value, "personno");
            return (Criteria) this;
        }

        public Criteria andPersonnoLessThanOrEqualTo(String value) {
            addCriterion("personNo <=", value, "personno");
            return (Criteria) this;
        }

        public Criteria andPersonnoLike(String value) {
            addCriterion("personNo like", value, "personno");
            return (Criteria) this;
        }

        public Criteria andPersonnoNotLike(String value) {
            addCriterion("personNo not like", value, "personno");
            return (Criteria) this;
        }

        public Criteria andPersonnoIn(List<String> values) {
            addCriterion("personNo in", values, "personno");
            return (Criteria) this;
        }

        public Criteria andPersonnoNotIn(List<String> values) {
            addCriterion("personNo not in", values, "personno");
            return (Criteria) this;
        }

        public Criteria andPersonnoBetween(String value1, String value2) {
            addCriterion("personNo between", value1, value2, "personno");
            return (Criteria) this;
        }

        public Criteria andPersonnoNotBetween(String value1, String value2) {
            addCriterion("personNo not between", value1, value2, "personno");
            return (Criteria) this;
        }

        public Criteria andDaxueIsNull() {
            addCriterion("daXue is null");
            return (Criteria) this;
        }

        public Criteria andDaxueIsNotNull() {
            addCriterion("daXue is not null");
            return (Criteria) this;
        }

        public Criteria andDaxueEqualTo(String value) {
            addCriterion("daXue =", value, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueNotEqualTo(String value) {
            addCriterion("daXue <>", value, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueGreaterThan(String value) {
            addCriterion("daXue >", value, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueGreaterThanOrEqualTo(String value) {
            addCriterion("daXue >=", value, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueLessThan(String value) {
            addCriterion("daXue <", value, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueLessThanOrEqualTo(String value) {
            addCriterion("daXue <=", value, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueLike(String value) {
            addCriterion("daXue like", value, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueNotLike(String value) {
            addCriterion("daXue not like", value, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueIn(List<String> values) {
            addCriterion("daXue in", values, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueNotIn(List<String> values) {
            addCriterion("daXue not in", values, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueBetween(String value1, String value2) {
            addCriterion("daXue between", value1, value2, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueNotBetween(String value1, String value2) {
            addCriterion("daXue not between", value1, value2, "daxue");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressIsNull() {
            addCriterion("daXue_address is null");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressIsNotNull() {
            addCriterion("daXue_address is not null");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressEqualTo(String value) {
            addCriterion("daXue_address =", value, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressNotEqualTo(String value) {
            addCriterion("daXue_address <>", value, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressGreaterThan(String value) {
            addCriterion("daXue_address >", value, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressGreaterThanOrEqualTo(String value) {
            addCriterion("daXue_address >=", value, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressLessThan(String value) {
            addCriterion("daXue_address <", value, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressLessThanOrEqualTo(String value) {
            addCriterion("daXue_address <=", value, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressLike(String value) {
            addCriterion("daXue_address like", value, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressNotLike(String value) {
            addCriterion("daXue_address not like", value, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressIn(List<String> values) {
            addCriterion("daXue_address in", values, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressNotIn(List<String> values) {
            addCriterion("daXue_address not in", values, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressBetween(String value1, String value2) {
            addCriterion("daXue_address between", value1, value2, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andDaxueAddressNotBetween(String value1, String value2) {
            addCriterion("daXue_address not between", value1, value2, "daxueAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressIsNull() {
            addCriterion("home_address is null");
            return (Criteria) this;
        }

        public Criteria andHomeAddressIsNotNull() {
            addCriterion("home_address is not null");
            return (Criteria) this;
        }

        public Criteria andHomeAddressEqualTo(String value) {
            addCriterion("home_address =", value, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressNotEqualTo(String value) {
            addCriterion("home_address <>", value, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressGreaterThan(String value) {
            addCriterion("home_address >", value, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressGreaterThanOrEqualTo(String value) {
            addCriterion("home_address >=", value, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressLessThan(String value) {
            addCriterion("home_address <", value, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressLessThanOrEqualTo(String value) {
            addCriterion("home_address <=", value, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressLike(String value) {
            addCriterion("home_address like", value, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressNotLike(String value) {
            addCriterion("home_address not like", value, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressIn(List<String> values) {
            addCriterion("home_address in", values, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressNotIn(List<String> values) {
            addCriterion("home_address not in", values, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressBetween(String value1, String value2) {
            addCriterion("home_address between", value1, value2, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andHomeAddressNotBetween(String value1, String value2) {
            addCriterion("home_address not between", value1, value2, "homeAddress");
            return (Criteria) this;
        }

        public Criteria andStuNumberIsNull() {
            addCriterion("stu_number is null");
            return (Criteria) this;
        }

        public Criteria andStuNumberIsNotNull() {
            addCriterion("stu_number is not null");
            return (Criteria) this;
        }

        public Criteria andStuNumberEqualTo(String value) {
            addCriterion("stu_number =", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberNotEqualTo(String value) {
            addCriterion("stu_number <>", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberGreaterThan(String value) {
            addCriterion("stu_number >", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberGreaterThanOrEqualTo(String value) {
            addCriterion("stu_number >=", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberLessThan(String value) {
            addCriterion("stu_number <", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberLessThanOrEqualTo(String value) {
            addCriterion("stu_number <=", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberLike(String value) {
            addCriterion("stu_number like", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberNotLike(String value) {
            addCriterion("stu_number not like", value, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberIn(List<String> values) {
            addCriterion("stu_number in", values, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberNotIn(List<String> values) {
            addCriterion("stu_number not in", values, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberBetween(String value1, String value2) {
            addCriterion("stu_number between", value1, value2, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andStuNumberNotBetween(String value1, String value2) {
            addCriterion("stu_number not between", value1, value2, "stuNumber");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeIsNull() {
            addCriterion("daxue_zhuanye is null");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeIsNotNull() {
            addCriterion("daxue_zhuanye is not null");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeEqualTo(String value) {
            addCriterion("daxue_zhuanye =", value, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeNotEqualTo(String value) {
            addCriterion("daxue_zhuanye <>", value, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeGreaterThan(String value) {
            addCriterion("daxue_zhuanye >", value, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeGreaterThanOrEqualTo(String value) {
            addCriterion("daxue_zhuanye >=", value, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeLessThan(String value) {
            addCriterion("daxue_zhuanye <", value, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeLessThanOrEqualTo(String value) {
            addCriterion("daxue_zhuanye <=", value, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeLike(String value) {
            addCriterion("daxue_zhuanye like", value, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeNotLike(String value) {
            addCriterion("daxue_zhuanye not like", value, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeIn(List<String> values) {
            addCriterion("daxue_zhuanye in", values, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeNotIn(List<String> values) {
            addCriterion("daxue_zhuanye not in", values, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeBetween(String value1, String value2) {
            addCriterion("daxue_zhuanye between", value1, value2, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andDaxueZhuanyeNotBetween(String value1, String value2) {
            addCriterion("daxue_zhuanye not between", value1, value2, "daxueZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeIsNull() {
            addCriterion("shixun_zhuanye is null");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeIsNotNull() {
            addCriterion("shixun_zhuanye is not null");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeEqualTo(String value) {
            addCriterion("shixun_zhuanye =", value, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeNotEqualTo(String value) {
            addCriterion("shixun_zhuanye <>", value, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeGreaterThan(String value) {
            addCriterion("shixun_zhuanye >", value, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeGreaterThanOrEqualTo(String value) {
            addCriterion("shixun_zhuanye >=", value, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeLessThan(String value) {
            addCriterion("shixun_zhuanye <", value, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeLessThanOrEqualTo(String value) {
            addCriterion("shixun_zhuanye <=", value, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeLike(String value) {
            addCriterion("shixun_zhuanye like", value, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeNotLike(String value) {
            addCriterion("shixun_zhuanye not like", value, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeIn(List<String> values) {
            addCriterion("shixun_zhuanye in", values, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeNotIn(List<String> values) {
            addCriterion("shixun_zhuanye not in", values, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeBetween(String value1, String value2) {
            addCriterion("shixun_zhuanye between", value1, value2, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andShixunZhuanyeNotBetween(String value1, String value2) {
            addCriterion("shixun_zhuanye not between", value1, value2, "shixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeIsNull() {
            addCriterion("peixun_zhuanye is null");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeIsNotNull() {
            addCriterion("peixun_zhuanye is not null");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeEqualTo(String value) {
            addCriterion("peixun_zhuanye =", value, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeNotEqualTo(String value) {
            addCriterion("peixun_zhuanye <>", value, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeGreaterThan(String value) {
            addCriterion("peixun_zhuanye >", value, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeGreaterThanOrEqualTo(String value) {
            addCriterion("peixun_zhuanye >=", value, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeLessThan(String value) {
            addCriterion("peixun_zhuanye <", value, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeLessThanOrEqualTo(String value) {
            addCriterion("peixun_zhuanye <=", value, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeLike(String value) {
            addCriterion("peixun_zhuanye like", value, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeNotLike(String value) {
            addCriterion("peixun_zhuanye not like", value, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeIn(List<String> values) {
            addCriterion("peixun_zhuanye in", values, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeNotIn(List<String> values) {
            addCriterion("peixun_zhuanye not in", values, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeBetween(String value1, String value2) {
            addCriterion("peixun_zhuanye between", value1, value2, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPeixunZhuanyeNotBetween(String value1, String value2) {
            addCriterion("peixun_zhuanye not between", value1, value2, "peixunZhuanye");
            return (Criteria) this;
        }

        public Criteria andPhone1IsNull() {
            addCriterion("phone1 is null");
            return (Criteria) this;
        }

        public Criteria andPhone1IsNotNull() {
            addCriterion("phone1 is not null");
            return (Criteria) this;
        }

        public Criteria andPhone1EqualTo(String value) {
            addCriterion("phone1 =", value, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone1NotEqualTo(String value) {
            addCriterion("phone1 <>", value, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone1GreaterThan(String value) {
            addCriterion("phone1 >", value, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone1GreaterThanOrEqualTo(String value) {
            addCriterion("phone1 >=", value, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone1LessThan(String value) {
            addCriterion("phone1 <", value, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone1LessThanOrEqualTo(String value) {
            addCriterion("phone1 <=", value, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone1Like(String value) {
            addCriterion("phone1 like", value, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone1NotLike(String value) {
            addCriterion("phone1 not like", value, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone1In(List<String> values) {
            addCriterion("phone1 in", values, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone1NotIn(List<String> values) {
            addCriterion("phone1 not in", values, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone1Between(String value1, String value2) {
            addCriterion("phone1 between", value1, value2, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone1NotBetween(String value1, String value2) {
            addCriterion("phone1 not between", value1, value2, "phone1");
            return (Criteria) this;
        }

        public Criteria andPhone2IsNull() {
            addCriterion("phone2 is null");
            return (Criteria) this;
        }

        public Criteria andPhone2IsNotNull() {
            addCriterion("phone2 is not null");
            return (Criteria) this;
        }

        public Criteria andPhone2EqualTo(String value) {
            addCriterion("phone2 =", value, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhone2NotEqualTo(String value) {
            addCriterion("phone2 <>", value, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhone2GreaterThan(String value) {
            addCriterion("phone2 >", value, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhone2GreaterThanOrEqualTo(String value) {
            addCriterion("phone2 >=", value, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhone2LessThan(String value) {
            addCriterion("phone2 <", value, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhone2LessThanOrEqualTo(String value) {
            addCriterion("phone2 <=", value, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhone2Like(String value) {
            addCriterion("phone2 like", value, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhone2NotLike(String value) {
            addCriterion("phone2 not like", value, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhone2In(List<String> values) {
            addCriterion("phone2 in", values, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhone2NotIn(List<String> values) {
            addCriterion("phone2 not in", values, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhone2Between(String value1, String value2) {
            addCriterion("phone2 between", value1, value2, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhone2NotBetween(String value1, String value2) {
            addCriterion("phone2 not between", value1, value2, "phone2");
            return (Criteria) this;
        }

        public Criteria andPhotoIsNull() {
            addCriterion("photo is null");
            return (Criteria) this;
        }

        public Criteria andPhotoIsNotNull() {
            addCriterion("photo is not null");
            return (Criteria) this;
        }

        public Criteria andPhotoEqualTo(String value) {
            addCriterion("photo =", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoNotEqualTo(String value) {
            addCriterion("photo <>", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoGreaterThan(String value) {
            addCriterion("photo >", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoGreaterThanOrEqualTo(String value) {
            addCriterion("photo >=", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoLessThan(String value) {
            addCriterion("photo <", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoLessThanOrEqualTo(String value) {
            addCriterion("photo <=", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoLike(String value) {
            addCriterion("photo like", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoNotLike(String value) {
            addCriterion("photo not like", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoIn(List<String> values) {
            addCriterion("photo in", values, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoNotIn(List<String> values) {
            addCriterion("photo not in", values, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoBetween(String value1, String value2) {
            addCriterion("photo between", value1, value2, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoNotBetween(String value1, String value2) {
            addCriterion("photo not between", value1, value2, "photo");
            return (Criteria) this;
        }

        public Criteria andQqIsNull() {
            addCriterion("QQ is null");
            return (Criteria) this;
        }

        public Criteria andQqIsNotNull() {
            addCriterion("QQ is not null");
            return (Criteria) this;
        }

        public Criteria andQqEqualTo(String value) {
            addCriterion("QQ =", value, "qq");
            return (Criteria) this;
        }

        public Criteria andQqNotEqualTo(String value) {
            addCriterion("QQ <>", value, "qq");
            return (Criteria) this;
        }

        public Criteria andQqGreaterThan(String value) {
            addCriterion("QQ >", value, "qq");
            return (Criteria) this;
        }

        public Criteria andQqGreaterThanOrEqualTo(String value) {
            addCriterion("QQ >=", value, "qq");
            return (Criteria) this;
        }

        public Criteria andQqLessThan(String value) {
            addCriterion("QQ <", value, "qq");
            return (Criteria) this;
        }

        public Criteria andQqLessThanOrEqualTo(String value) {
            addCriterion("QQ <=", value, "qq");
            return (Criteria) this;
        }

        public Criteria andQqLike(String value) {
            addCriterion("QQ like", value, "qq");
            return (Criteria) this;
        }

        public Criteria andQqNotLike(String value) {
            addCriterion("QQ not like", value, "qq");
            return (Criteria) this;
        }

        public Criteria andQqIn(List<String> values) {
            addCriterion("QQ in", values, "qq");
            return (Criteria) this;
        }

        public Criteria andQqNotIn(List<String> values) {
            addCriterion("QQ not in", values, "qq");
            return (Criteria) this;
        }

        public Criteria andQqBetween(String value1, String value2) {
            addCriterion("QQ between", value1, value2, "qq");
            return (Criteria) this;
        }

        public Criteria andQqNotBetween(String value1, String value2) {
            addCriterion("QQ not between", value1, value2, "qq");
            return (Criteria) this;
        }

        public Criteria andWeixinIsNull() {
            addCriterion("weixin is null");
            return (Criteria) this;
        }

        public Criteria andWeixinIsNotNull() {
            addCriterion("weixin is not null");
            return (Criteria) this;
        }

        public Criteria andWeixinEqualTo(String value) {
            addCriterion("weixin =", value, "weixin");
            return (Criteria) this;
        }

        public Criteria andWeixinNotEqualTo(String value) {
            addCriterion("weixin <>", value, "weixin");
            return (Criteria) this;
        }

        public Criteria andWeixinGreaterThan(String value) {
            addCriterion("weixin >", value, "weixin");
            return (Criteria) this;
        }

        public Criteria andWeixinGreaterThanOrEqualTo(String value) {
            addCriterion("weixin >=", value, "weixin");
            return (Criteria) this;
        }

        public Criteria andWeixinLessThan(String value) {
            addCriterion("weixin <", value, "weixin");
            return (Criteria) this;
        }

        public Criteria andWeixinLessThanOrEqualTo(String value) {
            addCriterion("weixin <=", value, "weixin");
            return (Criteria) this;
        }

        public Criteria andWeixinLike(String value) {
            addCriterion("weixin like", value, "weixin");
            return (Criteria) this;
        }

        public Criteria andWeixinNotLike(String value) {
            addCriterion("weixin not like", value, "weixin");
            return (Criteria) this;
        }

        public Criteria andWeixinIn(List<String> values) {
            addCriterion("weixin in", values, "weixin");
            return (Criteria) this;
        }

        public Criteria andWeixinNotIn(List<String> values) {
            addCriterion("weixin not in", values, "weixin");
            return (Criteria) this;
        }

        public Criteria andWeixinBetween(String value1, String value2) {
            addCriterion("weixin between", value1, value2, "weixin");
            return (Criteria) this;
        }

        public Criteria andWeixinNotBetween(String value1, String value2) {
            addCriterion("weixin not between", value1, value2, "weixin");
            return (Criteria) this;
        }

        public Criteria andEmailIsNull() {
            addCriterion("email is null");
            return (Criteria) this;
        }

        public Criteria andEmailIsNotNull() {
            addCriterion("email is not null");
            return (Criteria) this;
        }

        public Criteria andEmailEqualTo(String value) {
            addCriterion("email =", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotEqualTo(String value) {
            addCriterion("email <>", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThan(String value) {
            addCriterion("email >", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThanOrEqualTo(String value) {
            addCriterion("email >=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThan(String value) {
            addCriterion("email <", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThanOrEqualTo(String value) {
            addCriterion("email <=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLike(String value) {
            addCriterion("email like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotLike(String value) {
            addCriterion("email not like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailIn(List<String> values) {
            addCriterion("email in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotIn(List<String> values) {
            addCriterion("email not in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailBetween(String value1, String value2) {
            addCriterion("email between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotBetween(String value1, String value2) {
            addCriterion("email not between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andUserTypeIsNull() {
            addCriterion("user_type is null");
            return (Criteria) this;
        }

        public Criteria andUserTypeIsNotNull() {
            addCriterion("user_type is not null");
            return (Criteria) this;
        }

        public Criteria andUserTypeEqualTo(Integer value) {
            addCriterion("user_type =", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeNotEqualTo(Integer value) {
            addCriterion("user_type <>", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeGreaterThan(Integer value) {
            addCriterion("user_type >", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_type >=", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeLessThan(Integer value) {
            addCriterion("user_type <", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeLessThanOrEqualTo(Integer value) {
            addCriterion("user_type <=", value, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeIn(List<Integer> values) {
            addCriterion("user_type in", values, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeNotIn(List<Integer> values) {
            addCriterion("user_type not in", values, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeBetween(Integer value1, Integer value2) {
            addCriterion("user_type between", value1, value2, "userType");
            return (Criteria) this;
        }

        public Criteria andUserTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("user_type not between", value1, value2, "userType");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeIsNull() {
            addCriterion("kaoqin_code is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeIsNotNull() {
            addCriterion("kaoqin_code is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeEqualTo(String value) {
            addCriterion("kaoqin_code =", value, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeNotEqualTo(String value) {
            addCriterion("kaoqin_code <>", value, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeGreaterThan(String value) {
            addCriterion("kaoqin_code >", value, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeGreaterThanOrEqualTo(String value) {
            addCriterion("kaoqin_code >=", value, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeLessThan(String value) {
            addCriterion("kaoqin_code <", value, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeLessThanOrEqualTo(String value) {
            addCriterion("kaoqin_code <=", value, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeLike(String value) {
            addCriterion("kaoqin_code like", value, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeNotLike(String value) {
            addCriterion("kaoqin_code not like", value, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeIn(List<String> values) {
            addCriterion("kaoqin_code in", values, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeNotIn(List<String> values) {
            addCriterion("kaoqin_code not in", values, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeBetween(String value1, String value2) {
            addCriterion("kaoqin_code between", value1, value2, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinCodeNotBetween(String value1, String value2) {
            addCriterion("kaoqin_code not between", value1, value2, "kaoqinCode");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidIsNull() {
            addCriterion("kaoqin_ruleID is null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidIsNotNull() {
            addCriterion("kaoqin_ruleID is not null");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidEqualTo(String value) {
            addCriterion("kaoqin_ruleID =", value, "kaoqinRuleid");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidNotEqualTo(String value) {
            addCriterion("kaoqin_ruleID <>", value, "kaoqinRuleid");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidGreaterThan(String value) {
            addCriterion("kaoqin_ruleID >", value, "kaoqinRuleid");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidGreaterThanOrEqualTo(String value) {
            addCriterion("kaoqin_ruleID >=", value, "kaoqinRuleid");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidLessThan(String value) {
            addCriterion("kaoqin_ruleID <", value, "kaoqinRuleid");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidLessThanOrEqualTo(String value) {
            addCriterion("kaoqin_ruleID <=", value, "kaoqinRuleid");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidLike(String value) {
            addCriterion("kaoqin_ruleID like", value, "kaoqinRuleid");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidNotLike(String value) {
            addCriterion("kaoqin_ruleID not like", value, "kaoqinRuleid");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidIn(List<String> values) {
            addCriterion("kaoqin_ruleID in", values, "kaoqinRuleid");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidNotIn(List<String> values) {
            addCriterion("kaoqin_ruleID not in", values, "kaoqinRuleid");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidBetween(String value1, String value2) {
            addCriterion("kaoqin_ruleID between", value1, value2, "kaoqinRuleid");
            return (Criteria) this;
        }

        public Criteria andKaoqinRuleidNotBetween(String value1, String value2) {
            addCriterion("kaoqin_ruleID not between", value1, value2, "kaoqinRuleid");
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

        public Criteria andLastLogintimeIsNull() {
            addCriterion("last_logintime is null");
            return (Criteria) this;
        }

        public Criteria andLastLogintimeIsNotNull() {
            addCriterion("last_logintime is not null");
            return (Criteria) this;
        }

        public Criteria andLastLogintimeEqualTo(Date value) {
            addCriterion("last_logintime =", value, "lastLogintime");
            return (Criteria) this;
        }

        public Criteria andLastLogintimeNotEqualTo(Date value) {
            addCriterion("last_logintime <>", value, "lastLogintime");
            return (Criteria) this;
        }

        public Criteria andLastLogintimeGreaterThan(Date value) {
            addCriterion("last_logintime >", value, "lastLogintime");
            return (Criteria) this;
        }

        public Criteria andLastLogintimeGreaterThanOrEqualTo(Date value) {
            addCriterion("last_logintime >=", value, "lastLogintime");
            return (Criteria) this;
        }

        public Criteria andLastLogintimeLessThan(Date value) {
            addCriterion("last_logintime <", value, "lastLogintime");
            return (Criteria) this;
        }

        public Criteria andLastLogintimeLessThanOrEqualTo(Date value) {
            addCriterion("last_logintime <=", value, "lastLogintime");
            return (Criteria) this;
        }

        public Criteria andLastLogintimeIn(List<Date> values) {
            addCriterion("last_logintime in", values, "lastLogintime");
            return (Criteria) this;
        }

        public Criteria andLastLogintimeNotIn(List<Date> values) {
            addCriterion("last_logintime not in", values, "lastLogintime");
            return (Criteria) this;
        }

        public Criteria andLastLogintimeBetween(Date value1, Date value2) {
            addCriterion("last_logintime between", value1, value2, "lastLogintime");
            return (Criteria) this;
        }

        public Criteria andLastLogintimeNotBetween(Date value1, Date value2) {
            addCriterion("last_logintime not between", value1, value2, "lastLogintime");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpIsNull() {
            addCriterion("loat_longin_ip is null");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpIsNotNull() {
            addCriterion("loat_longin_ip is not null");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpEqualTo(String value) {
            addCriterion("loat_longin_ip =", value, "loatLonginIp");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpNotEqualTo(String value) {
            addCriterion("loat_longin_ip <>", value, "loatLonginIp");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpGreaterThan(String value) {
            addCriterion("loat_longin_ip >", value, "loatLonginIp");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpGreaterThanOrEqualTo(String value) {
            addCriterion("loat_longin_ip >=", value, "loatLonginIp");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpLessThan(String value) {
            addCriterion("loat_longin_ip <", value, "loatLonginIp");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpLessThanOrEqualTo(String value) {
            addCriterion("loat_longin_ip <=", value, "loatLonginIp");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpLike(String value) {
            addCriterion("loat_longin_ip like", value, "loatLonginIp");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpNotLike(String value) {
            addCriterion("loat_longin_ip not like", value, "loatLonginIp");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpIn(List<String> values) {
            addCriterion("loat_longin_ip in", values, "loatLonginIp");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpNotIn(List<String> values) {
            addCriterion("loat_longin_ip not in", values, "loatLonginIp");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpBetween(String value1, String value2) {
            addCriterion("loat_longin_ip between", value1, value2, "loatLonginIp");
            return (Criteria) this;
        }

        public Criteria andLoatLonginIpNotBetween(String value1, String value2) {
            addCriterion("loat_longin_ip not between", value1, value2, "loatLonginIp");
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

        public Criteria andSortIsNull() {
            addCriterion("sort is null");
            return (Criteria) this;
        }

        public Criteria andSortIsNotNull() {
            addCriterion("sort is not null");
            return (Criteria) this;
        }

        public Criteria andSortEqualTo(Integer value) {
            addCriterion("sort =", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotEqualTo(Integer value) {
            addCriterion("sort <>", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThan(Integer value) {
            addCriterion("sort >", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThanOrEqualTo(Integer value) {
            addCriterion("sort >=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThan(Integer value) {
            addCriterion("sort <", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThanOrEqualTo(Integer value) {
            addCriterion("sort <=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortIn(List<Integer> values) {
            addCriterion("sort in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotIn(List<Integer> values) {
            addCriterion("sort not in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortBetween(Integer value1, Integer value2) {
            addCriterion("sort between", value1, value2, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotBetween(Integer value1, Integer value2) {
            addCriterion("sort not between", value1, value2, "sort");
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