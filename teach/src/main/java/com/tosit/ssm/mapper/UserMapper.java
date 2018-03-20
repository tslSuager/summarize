package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.entity.Office;
import com.tosit.ssm.entity.User;
import com.tosit.ssm.entity.UserExample;

import java.util.Date;
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
     * 获取某个组或者某个班的人
     *
     * @param officeId
     * @return
     */
    List<User> selectUserByOfficeId(@Param("id") String officeId);

    /**
     * 植入一个用户
     *
     * @param record 植入的用户的对象
     * @return
     */
    int insertUser(User record);


    /**
     * 修改任意用户的任意一个字段
     *
     * @param user 具有修改字段和修改id的用户对象
     * @return
     */
    int updateByPrimaryKey(User user);


    /**
     * 通过user.id 获取一user
     *
     * @param id
     * @return
     */
    User selectByPrimaryKey(String id);

    /**
     * 获取所有未分班和考勤规则未关联的人
     *
     * @return
     */
    List<User> selectByClassAndKRule();


    /**
     * 获取某个班未关联考勤规则的人
     *
     * @param officeId
     * @return
     */
    List<User> selectNoGuize(@Param("id") String officeId);


    /**
     * 获取某个班今天之前迟到的人
     *
     * @param officeId
     * @return
     */
    List<User> selectChidaoBeforToday(@Param("id") String officeId);

    /**
     * 获取某个班今天申诉或请假的人
     *
     * @param officeId 某个班的id
     * @return
     */
    List<User> selectKaoqinOrShensu(@Param("id") String officeId);




    /**
     * 查看未分班但与某个考勤规则关联了的人
     * @param kaoqinRule 包括考勤规则id的kaoqinRule对象
     * @return
     */
    List<User> selectByNClassChecking(KaoqinRule kaoqinRule);


    /**
     *  获取某个班关联了考勤规则的人
     * @param office 包括班级id的office对象
     * @return
     */
    List<User> selectByClassChecking(Office office);



    /**
     *  获取某个班未关联考勤工号的人
     * @param office 包括班级id的office对象
     * @return
     */
    List<User> selectByClassNGH(Office office);

    /**
     *  获取未分班某个区域的人
     * @param office 包括学校id的office对象
     * @return
     */
    List<User> selectByAreaNClass(Office office);

    /**
     *  获取未分班某个时间某个区域的人
     * @param startDate
     * @param endDate
     * @param office 包括学校id的office对象
     * @return
     */
    List<User> selectByTimeAreaNClass(@Param("startDate") Date startDate, @Param("endDate") Date endDate,@Param("office") Office office);



    /**
     * 获取某个班未分组的人
     *
     * @param office 包括学校id的office对象
     * @return
     */
    List<User> selectByClassGroup(Office office);


    /**
     * 获取某个班的人
     *
     * @param office 包括班级id的office对象
     * @return
     */
    List<User> selectByClass(Office office);

    /**
     * 获取某个组的人
     *
     * @param office 包括组id的office对象
     * @return
     */
    List<User> selectByGroup(Office office);


}