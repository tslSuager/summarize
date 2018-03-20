package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.KaoqinRuleDetail;
import com.tosit.ssm.entity.KaoqinRuleDetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface KaoqinRuleDetailMapper {
    long countByExample(KaoqinRuleDetailExample example);

    int deleteByExample(KaoqinRuleDetailExample example);

    int deleteByPrimaryKey(String id);

    int insert(KaoqinRuleDetail record);

    int insertSelective(KaoqinRuleDetail record);

    List<KaoqinRuleDetail> selectByExample(KaoqinRuleDetailExample example);

    KaoqinRuleDetail selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") KaoqinRuleDetail record, @Param("example") KaoqinRuleDetailExample example);

    int updateByExample(@Param("record") KaoqinRuleDetail record, @Param("example") KaoqinRuleDetailExample example);

    int updateByPrimaryKeySelective(KaoqinRuleDetail record);

//    int updateByPrimaryKey(KaoqinRuleDetail record);

    /**
     *植入一个的考勤规则信息
     * @param record 植入的考勤规则信息的对象
     * @return
     */
    int insertKaoqinRuleDetail(KaoqinRuleDetail record);

    /**
     * 修改任意一个勤规则信息的任意一个字段
     * @param record 具有修改字段和修改id的勤规则信息对象
     * @return
     */
    int updateByPrimaryKey(KaoqinRuleDetail record);

}