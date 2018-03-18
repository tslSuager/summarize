package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.KaoqinResult;
import com.tosit.ssm.entity.KaoqinRuleOffice;
import com.tosit.ssm.entity.KaoqinRuleOfficeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface KaoqinRuleOfficeMapper {
    long countByExample(KaoqinRuleOfficeExample example);

    int deleteByExample(KaoqinRuleOfficeExample example);

    int deleteByPrimaryKey(String id);

    int insert(KaoqinRuleOffice record);

//    int insertSelective(KaoqinRuleOffice record);

    List<KaoqinRuleOffice> selectByExample(KaoqinRuleOfficeExample example);

    KaoqinRuleOffice selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") KaoqinRuleOffice record, @Param("example") KaoqinRuleOfficeExample example);

    int updateByExample(@Param("record") KaoqinRuleOffice record, @Param("example") KaoqinRuleOfficeExample example);

    int updateByPrimaryKeySelective(KaoqinRuleOffice record);




    /**
     * 修改任意考勤规则区域关联表的任意一个字段
     * @param record 具有修改字段和修改id的考勤规则区域关联表对象
     * @return
     */
    int updateByPrimaryKey(KaoqinRuleOffice record);

    /**
     * 植入一次考勤规则区域关联
     * @param record
     * @return
     */
    int insertKaoqinRuleOffice(KaoqinRuleOffice record);





}