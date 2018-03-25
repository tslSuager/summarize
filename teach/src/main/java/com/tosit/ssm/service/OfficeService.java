package com.tosit.ssm.service;

import com.tosit.ssm.entity.Office;

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
}
