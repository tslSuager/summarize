package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.kaoqinUser;
import com.tosit.ssm.entity.kaoqinUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface kaoqinUserMapper {
    long countByExample(kaoqinUserExample example);

    int deleteByExample(kaoqinUserExample example);

    int insert(kaoqinUser record);

    int insertSelective(kaoqinUser record);

    List<kaoqinUser> selectByExample(kaoqinUserExample example);

    int updateByExampleSelective(@Param("record") kaoqinUser record, @Param("example") kaoqinUserExample example);

    int updateByExample(@Param("record") kaoqinUser record, @Param("example") kaoqinUserExample example);
}