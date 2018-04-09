package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.SysRoleUserId;
import com.tosit.ssm.entity.SysRoleUserIdExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysRoleUserIdMapper {
    long countByExample(SysRoleUserIdExample example);

    int deleteByExample(SysRoleUserIdExample example);

    int deleteByPrimaryKey(String id);

    int insert(SysRoleUserId record);

    int insertSelective(SysRoleUserId record);

    List<SysRoleUserId> selectByExample(SysRoleUserIdExample example);

    SysRoleUserId selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") SysRoleUserId record, @Param("example") SysRoleUserIdExample example);

    int updateByExample(@Param("record") SysRoleUserId record, @Param("example") SysRoleUserIdExample example);

    int updateByPrimaryKeySelective(SysRoleUserId record);

    int updateByPrimaryKey(SysRoleUserId record);
}