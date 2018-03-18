package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.User;
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


    /**
     * 植入一个用户区域关联
     *
     * @param record 植入的用户区域关联的对象
     * @return
     */
    int insertUserOffice(UserOffice record);

    /**
     * 修改任意用户区域关联表的任意一个字段
     *
     * @param record 具有修改字段和修改id的用户区域关联对象
     * @return
     */
    int updateByPrimaryKey(UserOffice record);


}