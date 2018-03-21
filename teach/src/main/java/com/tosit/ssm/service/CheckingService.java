package com.tosit.ssm.service;

import com.tosit.ssm.entity.KaoqinRecords;
import com.tosit.ssm.entity.KaoqinResult;
import com.tosit.ssm.entity.Office;
import org.apache.ibatis.annotations.Param;

import java.util.List;

import com.tosit.ssm.entity.KaoqinRule;
import com.tosit.ssm.entity.KaoqinRuleDetail;
import com.tosit.ssm.entity.KaoqindetailVO;

public interface CheckingService {
    /**
     * 获取某个人某天的所有考勤记录
     * @param kaoqinRecords 用户考勤记录
     * @return
     */
    List<KaoqinRecords> findKaoqinRecordsByIdByDate(KaoqinRecords kaoqinRecords);

    /**
     * 获取某个人的所有考勤结果
     * @param userId  用户id
     * @return 返回一个考勤结果集合
     */
    List<KaoqinResult> findOneById(String userId);

    /**
     * 给某人植入一次考勤结果(请假或备注)
     * @param record
     * @return
     */
    int addKaoqinResultById(KaoqinResult record);

    /**
     * 获取某个班迟到的考勤结果
     * @param officeId
     * @return 返回一个考勤结果集合
     */
    List<KaoqinResult> selectByClassLate(String officeId);

    /**
     * 查找某个教员管理的某个班级
     * @param name
     * @return
     */
    List<Office> selectOfficeByManage(String name);

    /**
     * 获取某个班的申述或请假总条数
     * @param officeId
     * @return 返回值是一个数字
     */
    Integer countByClass(String officeId);

    /**
     * 获取某个班的申述或请假记录的集合
     * @param officeId
     * @return 返回值是一个考勤结果集合
     */
    List<KaoqinResult> selectByClass(String officeId);

    /**
     * 修改考勤结果的考勤状态为正常
     * @param record 具有修改字段和修改id的考勤结果对象
     * @return
     */
    int updateByPrimaryKey(KaoqinResult record);
    public void addKaoQinRule(KaoqinRule kaoqinRule, KaoqindetailVO kaoqindetailVO);
}
