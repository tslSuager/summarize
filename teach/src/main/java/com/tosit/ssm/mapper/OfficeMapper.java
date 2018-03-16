package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.Office;
import com.tosit.ssm.entity.OfficeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface OfficeMapper {
//    long countByExample(OfficeExample example);
//
//    int deleteByExample(OfficeExample example);
//
//    int deleteByPrimaryKey(String id);
//
//    int insert(Office record);
//
//    int insertSelective(Office record);
//
//    List<Office> selectByExample(OfficeExample example);
//
//    Office selectByPrimaryKey(String id);
//
//    int updateByExampleSelective(@Param("record") Office record, @Param("example") OfficeExample example);
//
//    int updateByExample(@Param("record") Office record, @Param("example") OfficeExample example);
//
//    int updateByPrimaryKeySelective(Office record);
//

    //通过id动态的改变该office的值
    int updateByPrimaryKey(Office record);
    //动态的添加入office
    void insertOffice(Office office);

    List<Office> selectArea();
}