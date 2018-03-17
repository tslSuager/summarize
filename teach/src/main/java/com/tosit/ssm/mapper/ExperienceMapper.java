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

    /**
     *植入一个人一次的个人经历
     * @param record 植入的个人经历的对象
     * @return
     */
    int insertExperience(Experience record);
    /**
     * 修改任意一个个人经历的任意一个字段
     * @param record 具有修改字段和修改id的个人经历对象
     * @return
     */
    int updateByPrimaryKey(@Param("record") Experience record);

}