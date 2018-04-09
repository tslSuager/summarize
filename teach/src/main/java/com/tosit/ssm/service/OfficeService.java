package com.tosit.ssm.service;

import com.tosit.ssm.entity.Office;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OfficeService {
     void createOffice(Office office);

    List<Office> getArea();

    /**
     * 查询某个教员某个时间段内的所有班级
     * @param office
     * @return
     */
    List<Office> findClassByTeacherAndDate(Office office);

    /**
     * 查询某个教员某个学校的班
     * @param office
     * @return
     */
    List<Office> findClassByTeacherAndSchool(Office office);

    /**
     * 新建一个office
     * @param office
     */
    void addOffice(Office office);
    List<Office> getAllArea();

    /**
     * 查询某个班的所有组
     * @param id
     * @return
     */
    List<Office> findGroupByClassId(String id);
        public  List<Office> getAllClass();

    /**
     * 删除某个组织
     * @param office
     */
    int deleteOffice(Office office);

    /**
     *通过Id查找某组织
     * @param id
     * @return
     */
    Office findOfficeById(String id);

    /**
     * 查找某组织的子Id
     * @param office
     * @return
     */
    List<Office> findIdByParent(Office office);

    /**
     * 查找某个教员管理的某个班级
     * @param userId 用户id
     * @return
     */
    List<Office> selectOfficeByManage(@Param("userId")String userId);

    /**
     * 查询某个学生所在的班级
     * @param userId 学生id
     * @return 返回满足条件的班级
     */
    List<Office> selectOfficeByUserId(@Param("userId") String userId);

    /**
     * 查询某个学生所在的小组
     * @param userId
     * @return
     */
    List<Office> selectGroupByUserId(@Param("userId")String userId);
}
