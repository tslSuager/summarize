package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.UserOffice;
import com.tosit.ssm.entity.UserOfficeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserOfficeMapper {
    long countByExample(UserOfficeExample example);

    int deleteByExample(UserOfficeExample example);

    int deleteByPrimaryKey(String id);

    int insert(UserOffice record);

    int insertSelective(UserOffice record);

    List<UserOffice> selectByExample(UserOfficeExample example);

    UserOffice selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") UserOffice record, @Param("example") UserOfficeExample example);

    int updateByExample(@Param("record") UserOffice record, @Param("example") UserOfficeExample example);

    int updateByPrimaryKeySelective(UserOffice record);

    int updateByPrimaryKey(UserOffice record);
}