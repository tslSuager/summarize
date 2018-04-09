package com.tosit.ssm.service;

import com.tosit.ssm.entity.Office;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OfficeService {
     void createOffice(Office office);
        List<Office> getArea();
        public  List<Office> getAllClass();

    List<Office> getAllArea();

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
