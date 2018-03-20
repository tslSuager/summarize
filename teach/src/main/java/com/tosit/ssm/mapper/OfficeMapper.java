package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.Office;
import com.tosit.ssm.entity.OfficeExample;

import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface OfficeMapper {
    long countByExample(OfficeExample example);

    int deleteByExample(OfficeExample example);

    int deleteByPrimaryKey(String id);

    int insert(Office record);

    int insertSelective(Office record);

    List<Office> selectByExample(OfficeExample example);

    Office selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Office record, @Param("example") OfficeExample example);

    int updateByExample(@Param("record") Office record, @Param("example") OfficeExample example);



    /**
     * 修改任意区域的任意一个字段
     * @param office 具有修改字段和修改id的区域对象
     * @return
     */
    int updateByPrimaryKey(Office office);
    /**
     *植入一个的区域
     * @param office 植入的区域的对象
     * @return
     */
    void insertOffice(Office office);

    /**
     *  查询所有的区域和学校（未测试）
     * @return  返回所有的学校和区域，后续要区分学校和区域通过office_type属性进行标识
     */
    List<Office> selectArea();

    /**
     * 按照时间获取所有的班（未测试）
     * @param createTime  班的创建时间
     * @return 返回该时间创建的所有班级
     */
    List<Office> selectClassByDate(@Param("createTime") Date createTime);
    /**
     * 根据学校查询属于该学校的班级（未测试）
     * @param schoolId  学校id
     * @return 返回该学校的所有班级
     */
    List<Office> selectClassBySchool(@Param("schoolId") String schoolId);

    /**
     * 查询属于某个区域的所有班及
     * @param areaId 区域id
     * @return 返回属于该区域的所有班级
     */
    List<Office> selectClassByAreaId(@Param("areaId") String areaId);

    /**
     * 查询属于某个班的所有组
     * @param classId 班级id
     * @return 返回属于该班级的所有组
     */
    List<Office> selectGroupByClassId(@Param("classId") String classId);

    /**
     * 获取所有区域或学校或班级
     * @param officeType 区域或学校或班级的id
     * @return 满足条件的组织
     */
    List<Office> selectOfficeByOfficeType(@Param("officeType") String officeType);

    /**
     * 查找某个教员管理的某个班级
     * @param name
     * @return
     */
    List<Office> selectOfficeByManage(@Param("name")String name);
}