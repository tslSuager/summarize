package com.tosit.ssm.controller;

import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.entity.Office;
import com.tosit.ssm.service.OfficeService;
import com.tosit.ssm.service.OfficeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/office")
public class OfficecController {
    @Autowired
    OfficeServiceImpl officeService;
    @GetMapping("/createOffice")
    @ResponseBody
    public void createOffice(Office office, HttpServletRequest servletRequest) {
        if (office.getName().contains(",")){
            office.setName(office.getName().replace(",",""));
        }
        if (office.getOfficeType() == null) {
            if (office.getParentId()==null) {
                office.setOfficeType(1);
            }else {
                office.setOfficeType(2);
            }
        }
        office.setId(UUID.randomUUID().toString().replaceAll("-",""));
        officeService.createOffice(office);
    }

    /**
     *  获取所有区域
     * @return
     */
    @GetMapping("/getAllArea")
    @ResponseBody
    public Object getAllArea() {
        System.out.println("我执行了");
        List<Office> area = officeService.getAllArea();

        JSONModel.put("allArea",area);
        return JSONModel.put();
    }



}
