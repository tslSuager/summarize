package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.Office;
import com.tosit.ssm.entity.OfficeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface OfficeMapper {
    long countByExample(OfficeExample example);

    int deleteByExample(OfficeExample example);

    int deleteByPrimaryKey(String id);

    int insert(Office record);

    int insertSelective(Office record);

    List<Office> selectByExample(OfficeExample example);

    Office selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Office record, @Param("example") OfficeExample example);

    int updateByExample(@Param("record") Office record, @Param("example") OfficeExample example);


    /**
     * 修改任意区域的任意一个字段
     * @param office 具有修改字段和修改id的区域对象
     * @return
     */
    int updateByPrimaryKey(Office office);
    /**
     *植入一个的区域
     * @param office 植入的区域的对象
     * @return
     */
    void insertOffice(Office office);

    List<Office> selectArea();
}