package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.User;
import com.tosit.ssm.entity.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    //获取某个组的人,获取某个班的人
    /**
     *
     * @param officeId
     * @return
     */
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


    //获取某个班没有匹配考勤规则的人
    /**
     *
     * @param officeId
     * @return
     */
    List<User> selectNoKaoqinRuler(@Param("id") String officeId);

    //获取某个班今天以前的迟到人员
    /**
     *
     * @param officeId
     * @return
     */
    List<User> selectChidaoBeforToday(@Param("id") String officeId);

    //获取某个班申诉和请假的人
    /**
     *
     * @param officeId
     * @return
     */
    List<User> seletShensuQingjia(@Param("id") String officeId);
}