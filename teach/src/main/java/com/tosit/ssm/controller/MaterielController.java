package com.tosit.ssm.controller;

import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.entity.DormitoryInfoVO;
import com.tosit.ssm.entity.Materiel;
import com.tosit.ssm.service.MaterielService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/materiel")
public class MaterielController {
    @Autowired
    private MaterielService materielService;

    /**
     * 通过寝室id获得寝室物料信息
     * @param
     * @return
     */
    @RequestMapping("/getMaterielById")
    @ResponseBody
    public Object getMaterielById(String id){
        List<DormitoryInfoVO> dormitoryInfos = materielService.selectMaterielById(id);
        return dormitoryInfos;
    }

    /**
     * 获得寝室物料信息
     * @param
     * @return
     */
    @RequestMapping("/getMateriel")
    @ResponseBody
    public Object getMateriel(){
        List<Materiel> materielName = materielService.selectMaterielType();
        List<DormitoryInfoVO> dormitoryInfos = materielService.selectMateriels();
        JSONModel.put("materielName",materielName);
        JSONModel.put("dormitoryInfos",dormitoryInfos);
        return JSONModel.put();
    }

    /**
     * 添加物料信息(不返回,不跳转)
     * @param materiel
     */
    @RequestMapping("/addMateriel")
    @ResponseBody
    public void addMateriel(Materiel materiel){
        materiel.setId(UUID.randomUUID().toString().replaceAll("-",""));
        materiel.setCreateTime(new Date());
        materielService.insertMateriel(materiel);
        return ;
    }

    @RequestMapping("/appendMateriel")
    public String appendMateriel(Materiel materiel){
        materiel.setId(UUID.randomUUID().toString().replaceAll("-",""));
        if(!"".equals(materiel.getName()) && materiel.getCount()!=null){
            materielService.insertMateriel(materiel);
        }
        return "redirect:/page/materiel_info";
    }

    /**
     * 更新物料信息(不返回,不跳转)
     * @param materiel
     */
    @RequestMapping("/updateMateriel")
    @ResponseBody
    public void updateMateriel(Materiel materiel){
        materiel.setUpdateTime(new Date());
        materielService.updateMateriel(materiel);
        return ;
    }
}
