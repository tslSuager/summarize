package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.KaoqinRecords;
import com.tosit.ssm.entity.KaoqinRecordsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface KaoqinRecordsMapper {
/*    long countByExample(KaoqinRecordsExample example);

    int deleteByExample(KaoqinRecordsExample example);*/

    int insert(KaoqinRecords record);
    int update(KaoqinRecords records);
    /*int insertSelective(KaoqinRecords record);

    List<KaoqinRecords> selectByExample(KaoqinRecordsExample example);

    int updateByExampleSelective(@Param("record") KaoqinRecords record, @Param("example") KaoqinRecordsExample example);

    int updateByExample(@Param("record") KaoqinRecords record, @Param("example") KaoqinRecordsExample example);*/
}