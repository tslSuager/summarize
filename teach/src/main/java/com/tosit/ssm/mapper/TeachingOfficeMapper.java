package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.TeachingOffice;
import com.tosit.ssm.entity.TeachingOfficeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TeachingOfficeMapper {
    long countByExample(TeachingOfficeExample example);

    int deleteByExample(TeachingOfficeExample example);

    int deleteByPrimaryKey(String id);

    int insert(TeachingOffice record);

    int insertSelective(TeachingOffice record);

    List<TeachingOffice> selectByExample(TeachingOfficeExample example);

    TeachingOffice selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") TeachingOffice record, @Param("example") TeachingOfficeExample example);

    int updateByExample(@Param("record") TeachingOffice record, @Param("example") TeachingOfficeExample example);

    int updateByPrimaryKeySelective(TeachingOffice record);

    int updateByPrimaryKey(TeachingOffice record);
}