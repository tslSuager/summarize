package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.Experience;
import com.tosit.ssm.entity.ExperienceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ExperienceMapper {
    long countByExample(ExperienceExample example);

    int deleteByExample(ExperienceExample example);

    int insert(Experience record);

    int insertSelective(Experience record);

    List<Experience> selectByExample(ExperienceExample example);

    int updateByExampleSelective(@Param("record") Experience record, @Param("example") ExperienceExample example);

    int updateByExample(@Param("record") Experience record, @Param("example") ExperienceExample example);
}