package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.DormitoryInfo;
import com.tosit.ssm.entity.Materiel;
import com.tosit.ssm.entity.MaterielExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MaterielMapper {
    long countByExample(MaterielExample example);

    int deleteByExample(MaterielExample example);

    int deleteByPrimaryKey(String id);

    int insert(Materiel record);

    int insertSelective(Materiel record);

    List<Materiel> selectByExample(MaterielExample example);

    Materiel selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Materiel record, @Param("example") MaterielExample example);

    int updateByExample(@Param("record") Materiel record, @Param("example") MaterielExample example);

    int updateByPrimaryKeySelective(Materiel record);





    /**
     * 插入物料表
     * @param record  含有id的一个物料表
     * @return
     */
    int insertMateriel(Materiel record);

    /**
     * 修改物料表
     * @param record 含有id的一个物料表
     * @return
     */
    int updateByPrimaryKey(Materiel record);
    /**
     * 查询有几种不同物料类型名字
     * @return
     */
    List<Materiel> selectAllMaterType();
}