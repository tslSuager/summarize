package com.tosit.ssm.service;


import com.tosit.ssm.entity.DormitoryInfoVO;
import com.tosit.ssm.entity.Materiel;
import com.tosit.ssm.mapper.DormitoryInfoMapper;
import com.tosit.ssm.mapper.MaterielMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaterielServiceImpl implements MaterielService {
    @Autowired
    private DormitoryInfoMapper dormitoryInfoMapper;
    @Autowired
    private MaterielMapper materielMapper;
    /**
     * 根据寝室id查询所有的寝室物料信息
     * @param id 寝室id
     * @return
     */
    @Override
    public List<DormitoryInfoVO> selectMaterielById(String id) {
        return dormitoryInfoMapper.selectDormitoryInfoById(id);
    }

    /**
     * 查所有的寝室物料信息
     * @return
     */
    @Override
    public List<DormitoryInfoVO> selectMateriels() {
        return dormitoryInfoMapper.selectDormitorys();
    }

    /**
     * 插入一条物料数据
     */
    @Override
    public int insertMateriel(Materiel materiel) {
        return materielMapper.insertMateriel(materiel);
    }

    /**
     * 修改一条物料数据
     */
    @Override
    public int updateMateriel(Materiel materiel) {
        return materielMapper.updateByPrimaryKey(materiel);
    }

    /**
     * 查询所有的物料类型名字
     * @return
     */
    @Override
    public List<Materiel> selectMaterielType() {
        return materielMapper.selectAllMaterType();
    }
}
