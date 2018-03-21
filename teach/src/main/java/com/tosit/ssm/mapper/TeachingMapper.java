package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.Teaching;
import com.tosit.ssm.entity.TeachingExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TeachingMapper {
    long countByExample(TeachingExample example);

    int deleteByExample(TeachingExample example);

    int deleteByPrimaryKey(String id);

    int insert(Teaching record);

    int insertSelective(Teaching record);

    List<Teaching> selectByExample(TeachingExample example);

    Teaching selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Teaching record, @Param("example") TeachingExample example);

    int updateByExample(@Param("record") Teaching record, @Param("example") TeachingExample example);

    int updateByPrimaryKeySelective(Teaching record);

    int updateByPrimaryKey(Teaching record);
}