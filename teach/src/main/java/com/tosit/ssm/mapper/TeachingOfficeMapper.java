package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.Teaching;
import com.tosit.ssm.entity.TeachingOffice;
import com.tosit.ssm.entity.TeachingOfficeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TeachingOfficeMapper {
    long countByExample(TeachingOfficeExample example);
    int deleteByExample(TeachingOfficeExample example);
    int deleteByPrimaryKey(String id);
    int insertSelective(TeachingOffice record);
    List<TeachingOffice> selectByExample(TeachingOfficeExample example);
    TeachingOffice selectByPrimaryKey(String id);
    int updateByExampleSelective(@Param("record") TeachingOffice record, @Param("example") TeachingOfficeExample example);
    int updateByExample(@Param("record") TeachingOffice record, @Param("example") TeachingOfficeExample example);
    int updateByPrimaryKeySelective(TeachingOffice record);


    /**
     * 插入教学组织关联表
     * @param record 一个包含id的教学组织关联表对象
     * @return
     */
    int insertTeachingOffice(TeachingOffice record);

    /**
     * 根据主键id修改教学组织关联表
     * @param record 一个包含id的教学组织关联表对象
     * @return
     */
    int updateByPrimaryKey(TeachingOffice record);

    /**
     * 根据教学计划id修改教学组织关联表
     * @param
     * @return
     */
    int updateByTeachingId(@Param("teachingId") String teachingId);

}