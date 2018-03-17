package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.KaoqinUser;
import com.tosit.ssm.entity.KaoqinUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface KaoqinUserMapper {
    long countByExample(KaoqinUserExample example);

    int deleteByExample(KaoqinUserExample example);

    int insert(KaoqinUser record);

    int insertSelective(KaoqinUser record);

    List<KaoqinUser> selectByExample(KaoqinUserExample example);

    int updateByExampleSelective(@Param("record") KaoqinUser record, @Param("example") KaoqinUserExample example);

    int updateByExample(@Param("record") KaoqinUser record, @Param("example") KaoqinUserExample example);


    /**
     *植入一个的考勤规则个人关联
     * @param record 植入的勤规则个人关联的对象
     * @return
     */
    int insertKaoqinUser(KaoqinUser record);
    /**
     * 修改任意一个考勤规则个人关联的任意一个字段
     * @param record 具有修改字段和修改id的考勤规则个人关联对象
     * @return
     */
    int updateByPrimaryKey(@Param("record") KaoqinUser record);
}