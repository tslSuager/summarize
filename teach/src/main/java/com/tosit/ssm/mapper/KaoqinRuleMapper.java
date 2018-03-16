package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.entity.KaoqinRuleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface KaoqinRuleMapper {
    long countByExample(KaoqinRuleExample example);

    int deleteByExample(KaoqinRuleExample example);

    int deleteByPrimaryKey(String id);

    int insert(KaoqinRule record);

    int insertSelective(KaoqinRule record);

    List<KaoqinRule> selectByExample(KaoqinRuleExample example);

    KaoqinRule selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") KaoqinRule record, @Param("example") KaoqinRuleExample example);

    int updateByExample(@Param("record") KaoqinRule record, @Param("example") KaoqinRuleExample example);

    int updateByPrimaryKeySelective(KaoqinRule record);

    int updateByPrimaryKey(KaoqinRule record);
}