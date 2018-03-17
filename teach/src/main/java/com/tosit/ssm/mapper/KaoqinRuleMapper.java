package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.entity.KaoqinRuleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface KaoqinRuleMapper {
    /**
     *
     * 注：！！！！！！！！还没有写完
     * 插入考勤规则
     * @param record 待插入的考情记录，如果record的属性为空那就该字段就为空，注意： id属性不能为空
     * @return 影响的行数
     */
    /*int insert(KaoqinRule record);*/

/*    int insertSelective(KaoqinRule record);

    List<KaoqinRule> selectByExample(KaoqinRuleExample example);*/

    /**
     * 查询规则
     * @param id  规则id号,如果id为空，则查询所有规则
     * @return  返回若干个规则详情
     */
    List<KaoqinRule>  selectRule(@Param("id") String id);

   /* long countByExample(KaoqinRuleExample example);

    int deleteByExample(KaoqinRuleExample example);

    int deleteByPrimaryKey(String id);

    int insert(KaoqinRule record);

    int insertSelective(KaoqinRule record);

    List<KaoqinRule> selectByExample(KaoqinRuleExample example);

    KaoqinRule selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") KaoqinRule record, @Param("example") KaoqinRuleExample example);

    int updateByExample(@Param("record") KaoqinRule record, @Param("example") KaoqinRuleExample example);

    int updateByPrimaryKeySelective(KaoqinRule record);

    int updateByPrimaryKey(KaoqinRule record);*/
}