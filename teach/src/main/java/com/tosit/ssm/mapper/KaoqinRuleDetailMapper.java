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

    int updateByPrimaryKey(KaoqinRuleDetail record);
}