package com.tosit.ssm.controller;

import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.entity.*;
import com.tosit.ssm.service.CheckingService;
import com.tosit.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Timestamp;
import java.util.List;

@Controller
@RequestMapping("/checking")
public class CheckingController {
    @Autowired
    private CheckingService checkingService;
    @Autowired
    private UserService userService;

    /**
     * 添加考勤规则  当为方案三方案四的时候第一条记录不要
     * @return 返回成功或者失败（具体的返回值到时候常量类定义了再说）
     */
    @RequestMapping(value = "/addKaoQinRule")
    @ResponseBody
    public Object addKaoQinRule(KaoqinRule kaoqinRule,KaoqindetailVO kaoqindetailList){
                checkingService.addKaoQinRule(kaoqinRule,kaoqindetailList);
        return "success";
    }


    /**
     * 获取某人当天的考勤记录，和以前的考勤的结果（包括请假和备注）
     * @return
     */
    @RequestMapping("/ShowAllRecordsByIdByDate")
    @ResponseBody
    public Object ShowRecords(String user_id,Timestamp brushTime){
        //某个人的所有考勤记录
        KaoqinRecords kaoqinRecords = new KaoqinRecords();
        kaoqinRecords.setUserId(user_id);
        kaoqinRecords.setBrushtime(brushTime);
        System.out.println(checkingService.toString());
        List<KaoqinRecords> kaoqinRecordsByIdByDate = checkingService.findKaoqinRecordsByIdByDate(kaoqinRecords);
        System.out.println(kaoqinRecordsByIdByDate.toString());
        JSONModel.put("records",kaoqinRecordsByIdByDate);

        //某个人的所有考勤结果
        List<KaoqinResult> kaoqinresults = checkingService.findOneById("u001");
        JSONModel.put("result",kaoqinresults);



        //某个人的所有信息
        User user = userService.selectByPrimaryKey("u001");
        JSONModel.put("user",user);

        //某个人的表现分的经历
        List<Experience> experiences = userService.selectByIdToType("u001");
        JSONModel.put("experiences",experiences);


        return JSONModel.getMap();
    }

    /**
     * 添加  请假，备注，给某个人的该天添加一考勤结果  （这个考勤结果就是备注和请假）
     * @param create_time
     * @param kaoqin_remark_type
     * @param kaoqin_remark_content
     * @return
     */
    @RequestMapping("/addKaoqinResult")
    @ResponseBody
    public String AddKaoqinResultById(Timestamp create_time, Integer kaoqin_remark_type, String kaoqin_remark_content,String kaoqin_shenshu_content){
        //某个人新添加的请假或申诉  还需要判断类型  未写
        KaoqinResult kaoqinResult = new KaoqinResult();
//        kaoqinResult.setCreateTime(create_time);
        kaoqinResult.setKaoqinRemarkType(kaoqin_remark_type);
        kaoqinResult.setKaoqinRemarkContent(kaoqin_remark_content);
        kaoqinResult.setKaoqinShenshuContent(kaoqin_shenshu_content);
        checkingService.addKaoqinResultById(kaoqinResult);
        return null;
    }

    /**
     *查找某班今天以前的迟到人员
     * @param officeId 班级id
     * @param name 班级名
     * @return
     */
    @RequestMapping("/viewKaoqin")
    @ResponseBody
    public Object ViewKaoqin(String officeId, String name, Model model){
        //老师查看某个班的考勤迟到人员
        List<User> users = userService.selectChidaoBeforToday(officeId);
        JSONModel.put("users",users);

        //查看某个班迟到的考勤结果
        List<KaoqinResult> kaoqinResults = checkingService.selectByClassLate(officeId);
        JSONModel.put("kaoqinResults",kaoqinResults);

        //查找某个教员管理的某个班级
        List<Office> offices = checkingService.selectOfficeByManage(name);
        JSONModel.put("offices",offices);

        //获取某个班的申诉或请假的考勤结果的数量
        Integer counts = checkingService.countByClass(officeId);
        model.addAttribute("counts",counts);

        return JSONModel.getMap();
    }

    /**
     * 点击“迟到人员名单”进入名单详情,可以修改其考勤状态
     * @param
     * @return
     */
    @RequestMapping("/xiugaiKaoqin")
    public String XiugaiKaoqin(String user_Id){
        KaoqinResult kaoqinResult = new KaoqinResult();
        kaoqinResult.setUserId(user_Id);
        kaoqinResult.setStatus(1);
        checkingService.updateByPrimaryKey(kaoqinResult);

        return null;
    }



    /**
     * 进入处理信息页面
     * @param officeId 班级ID
     * @return
     */
    @RequestMapping("/dealKaoqin")
    @ResponseBody
    public Object DealKaoqin(String officeId,String user_Id,Integer stauts,String kaoqin_remark_content,Integer kaoqin_remark_dispose_Result,Integer kaoqin_remark_type){
        //获取某个班的申诉或请假的考勤结果
        List<KaoqinResult> kaoqinResults = checkingService.selectByClass(officeId);
        JSONModel.put("kaoqinResults",kaoqinResults);

        //修改某人申述请假的状态和回复的字段
        KaoqinResult kaoqinResult = new KaoqinResult();
        kaoqinResult.setUserId(user_Id);
        if(kaoqin_remark_type==1){
            //数据库问题没写完
        }
        kaoqinResult.setKaoqinRemarkDisposeResult(kaoqin_remark_dispose_Result);
        kaoqinResult.setKaoqinRemarkContent(kaoqin_remark_content);
        checkingService.updateByPrimaryKey(kaoqinResult);

        return JSONModel.getMap();
    }



}
