package com.tosit.ssm.service;

import com.tosit.ssm.entity.Office;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OfficeService {
     void createOffice(Office office);

    List<Office> getAllArea();

    /**
     * 查找某个教员管理的某个班级
     * @param userId 用户id
     * @return
     */
    List<Office> selectOfficeByManage(@Param("userId")String userId);
}
