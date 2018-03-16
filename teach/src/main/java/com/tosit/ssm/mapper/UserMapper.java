package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.User;
import com.tosit.ssm.entity.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    //获取某个组的人,获取某个班的人,
    List<User> selectUserByOfficeId(@Param("id") String officeId);

    long countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(String id);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}