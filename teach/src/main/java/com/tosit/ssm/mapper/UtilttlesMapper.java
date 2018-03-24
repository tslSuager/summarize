package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.Utilttles;
import com.tosit.ssm.entity.UtilttlesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UtilttlesMapper {
    long countByExample(UtilttlesExample example);

    int deleteByExample(UtilttlesExample example);

    int deleteByPrimaryKey(String id);

    int insert(Utilttles record);

    int insertSelective(Utilttles record);

    List<Utilttles> selectByExample(UtilttlesExample example);

    Utilttles selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Utilttles record, @Param("example") UtilttlesExample example);

    int updateByExample(@Param("record") Utilttles record, @Param("example") UtilttlesExample example);

    int updateByPrimaryKeySelective(Utilttles record);

    int updateByPrimaryKey(Utilttles record);
}