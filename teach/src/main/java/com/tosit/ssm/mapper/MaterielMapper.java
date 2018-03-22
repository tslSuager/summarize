package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.Materiel;
import com.tosit.ssm.entity.MaterielExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

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

    int updateByPrimaryKey(Materiel record);
}