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
     *
     * 插入考勤规则
     * @param record 待插入的考情记录，如果record的属性为空那就该字段就为空，注意： id属性不能为空
     * @return 影响的行数
     */
    int insert(KaoqinRule record);

    /**
     * 修改记录（删除也在这里is_del字段）
     * @param record  参数的id属性必须不为空
     * @return 修改成功的行数
     */
    int update(KaoqinRule record);
    /**
     * 查询规则
     * @param id  规则id号,如果id为空，则查询所有规则
     * @return  返回若干个规则详情
     */
    List<KaoqinRule>  selectRule(@Param("id") String id);
/*    int insertSelective(KaoqinRule record);

    List<KaoqinRule> selectByExample(KaoqinRuleExample example);*/

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