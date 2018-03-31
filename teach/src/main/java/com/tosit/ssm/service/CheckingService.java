package com.tosit.ssm.service;

import com.tosit.ssm.entity.*;

import java.util.List;

public interface CheckingService {
    /**
     * 添加考勤规则和规则详情
     * @param kaoqinRule 待插入的考情规则
     * @param kaoqindetailVO 带插入的考勤详情
     * @return
     */
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
    List<KaoqinResultVO> selectByClassLate(String officeId);

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

    String modifyChecking(KaoqinResult data);

    String createLeave(KaoqinResult kaoqinResult);
}
