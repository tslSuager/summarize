package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.KaoqinResult;
import com.tosit.ssm.entity.KaoqinResultExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface KaoqinResultMapper {
    long countByExample(KaoqinResultExample example);

    int deleteByExample(KaoqinResultExample example);

    int insert(KaoqinResult record);

    int insertSelective(KaoqinResult record);

    List<KaoqinResult> selectByExample(KaoqinResultExample example);

    int updateByExampleSelective(@Param("record") KaoqinResult record, @Param("example") KaoqinResultExample example);

    int updateByExample(@Param("record") KaoqinResult record, @Param("example") KaoqinResultExample example);
}