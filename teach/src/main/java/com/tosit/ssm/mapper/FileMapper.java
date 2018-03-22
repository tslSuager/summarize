package com.tosit.ssm.mapper;

import com.tosit.ssm.entity.File;
import com.tosit.ssm.entity.FileExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FileMapper {
    long countByExample(FileExample example);

    int deleteByExample(FileExample example);

    int deleteByPrimaryKey(String id);

    int insert(File record);

    int insertSelective(File record);

    List<File> selectByExample(FileExample example);

    File selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") File record, @Param("example") FileExample example);

    int updateByExample(@Param("record") File record, @Param("example") FileExample example);

    int updateByPrimaryKeySelective(File record);

//    int updateByPrimaryKey(File record);

    /**
     *  插入一个文件
     * @param record  拥有id的文件对象
     * @return
     */
    int insertFile(File record);


    /**
     *  修改一个文件的任意字段
     * @param record 拥有文件id的文件对象
     * @return
     */
    int updateByPrimaryKey(File record);



}