package com.tosit.ssm.service;

import com.tosit.ssm.entity.DormitoryInfo;
import com.tosit.ssm.entity.DormitoryInfoVO;
import com.tosit.ssm.entity.Materiel;
import org.springframework.stereotype.Service;

import java.util.List;


public interface MaterielService {

    /**
     * 根据寝室id查该的寝室物料信息
     * @param id 寝室id
     * @return
     */
    List<DormitoryInfoVO> selectMaterielById(String id);

    /**
     * 查所有的寝室物料信息
     * @return
     */
    List<DormitoryInfoVO> selectMateriels();

    /**
     * 插入一条物料数据
     */
    int insertMateriel(Materiel materiel);

    /**
     * 修改一条物料数据
     */
    int updateMateriel(Materiel materiel);


    /**
     * 查询所有的物料类型名字(有几个)
     * @return
     */
    List<Materiel> selectMaterielType();
}
