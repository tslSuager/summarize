package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.KaoqinRuleOffice;
import com.tosit.ssm.entity.KaoqinRuleOfficeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface KaoqinRuleOfficeMapper {
    long countByExample(KaoqinRuleOfficeExample example);

    int deleteByExample(KaoqinRuleOfficeExample example);

    int deleteByPrimaryKey(String id);

    int insert(KaoqinRuleOffice record);

    int insertSelective(KaoqinRuleOffice record);

    List<KaoqinRuleOffice> selectByExample(KaoqinRuleOfficeExample example);

    KaoqinRuleOffice selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") KaoqinRuleOffice record, @Param("example") KaoqinRuleOfficeExample example);

    int updateByExample(@Param("record") KaoqinRuleOffice record, @Param("example") KaoqinRuleOfficeExample example);

    int updateByPrimaryKeySelective(KaoqinRuleOffice record);

    int updateByPrimaryKey(KaoqinRuleOffice record);
}