package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.DormitoryInfo;
import com.tosit.ssm.entity.DormitoryInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DormitoryInfoMapper {
    long countByExample(DormitoryInfoExample example);
    int deleteByExample(DormitoryInfoExample example);
    int deleteByPrimaryKey(String id);
    int insertSelective(DormitoryInfo record);
    List<DormitoryInfo> selectByExample(DormitoryInfoExample example);
    DormitoryInfo selectByPrimaryKey(String id);
    int updateByExampleSelective(@Param("record") DormitoryInfo record, @Param("example") DormitoryInfoExample example);
    int updateByExample(@Param("record") DormitoryInfo record, @Param("example") DormitoryInfoExample example);
    int updateByPrimaryKeySelective(DormitoryInfo record);

    /**
     * 插入物料表
     * @param record  含有id的一个物料表
     * @return
     */
    int insertDormitoryInfo(DormitoryInfo record);

    /**
     * 修改物料表
     * @param record 含有id的一个物料表
     * @return
     */
    int updateByPrimaryKey(DormitoryInfo record);
}