package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.DormitoryInfo;
import com.tosit.ssm.entity.DormitoryInfoExample;
import java.util.List;

import com.tosit.ssm.entity.DormitoryInfoVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
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
     * 插入寝室表
     * @param record  含有id的一个寝室表
     * @return
     */
    int insertDormitoryInfo(DormitoryInfo record);

    /**
     * 修改寝室表
     * @param record 含有id的一个寝室表
     * @return
     */
    int updateByPrimaryKey(DormitoryInfo record);

    /**
     * 获取某个寝室的物料详情
     * @param id 寝室id
     * @return
     */
    List<DormitoryInfoVO> selectDormitoryInfoById(String id);

    /**
     * 获取所有寝室的物料详情
     * @return
     */
    List<DormitoryInfoVO> selectDormitorys();
}