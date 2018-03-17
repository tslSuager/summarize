package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.Office;
import com.tosit.ssm.entity.User;
import com.tosit.ssm.entity.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {



    long countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(String id);

    int insert(User record);

//    int insertSelective(User record);

    List<User> selectByExample(UserExample example);



    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

//    int updateByPrimaryKeySelective(User record);

//    int updateByPrimaryKey(User record);



    /**
     *  获取某个组或者某个班的人
     * @param officeId
     * @return
     */
    List<User> selectUserByOfficeId(@Param("id") String officeId);

    /**
     * 植入一个用户
     * @param record 植入的用户的对象
     * @return
     */
    int insertUser(User record);



    /**
     * 修改任意用户的任意一个字段
     * @param user 具有修改字段和修改id的用户对象
     * @return
     */
    int updateByPrimaryKey(User user);


    /**
     * 通过user.id 获取一user
     * @param id
     * @return
     */
    User selectByPrimaryKey(String id);

    /**
     * 获取所有未分班和考勤规则未关联的人
     * @return
     */
    List<User> selectByClassAndKRule();

}