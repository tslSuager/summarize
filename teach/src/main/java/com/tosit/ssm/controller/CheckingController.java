package com.tosit.ssm.controller;

import com.google.common.collect.Lists;
import com.tosit.ssm.common.util.excel.ExportExcel;
import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.entity.*;
import com.tosit.ssm.service.CheckingService;
import com.tosit.ssm.service.CheckingServicelmpl;
import com.tosit.ssm.service.OfficeService;
import com.tosit.ssm.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.apache.poi.ss.usermodel.Row;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/checking")
public class CheckingController {
    @Autowired
    private CheckingService checkingService;
    @Autowired
    private UserService userService;
    @Autowired
    private OfficeService officeService;
    private SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
    private String Ext_Name = "xls,xlsx";
    /**
     * 提交申诉 请求
     * @param userId 申诉人id
     * @param data 申诉理由
     * @param kaoqinShenSuReqtime 提交申诉时间
     * @return
     */
    @RequestMapping(value = "/commitChecking")
    @ResponseBody
    public Object commitChecking(String userId,String data,Date kaoqinShenSuReqtime) {
        KaoqinResult kaoqinResult = new KaoqinResult();
        kaoqinResult.setId(userId);
        kaoqinResult.setKaoqinShenshuStatus(2);
        kaoqinResult.setKaoqinShenshuContent(data);
        kaoqinResult.setKaoqinRemarkReqtime(kaoqinShenSuReqtime);
        String status=checkingService.modifyChecking(kaoqinResult);
        return JSONModel.put("status",status);
    }

    /**
     *  提交请假请求
     * @param kaoqinResult 包括 请假人，请求时间，请假理由，请假时间，请求类型
     * @return
     */
    @RequestMapping(value = "/commitLeave")
    @ResponseBody
    public Object commitLeave( KaoqinResult kaoqinResult) {
        kaoqinResult.setKaoqinShenshuStatus(0);
        kaoqinResult.setId(UUID.randomUUID().toString().replaceAll("-",""));
        kaoqinResult.setIsDel(1);
        String status=checkingService.createLeave(kaoqinResult);
        return JSONModel.put("status",status);
    }



    /**
     * 添加考勤规则
     * @return 返回成功或者失败（具体的返回值到时候常量类定义了再说）
     */
    @RequestMapping(value = "/addKaoQinRule")
    public String  addKaoQinRule(KaoqinRule kaoqinRule,KaoqindetailVO kaoqindetailList){
                checkingService.addKaoQinRule(kaoqinRule,kaoqindetailList);
        return "kaoqin_rule_display";
    }


    /**
     * 获取某人某天的考勤记录，和以前的考勤的结果（包括请假和备注）
     *   @param   kaoqinRecords 包括请求人id，考勤时间
     * @return
     */
    @RequestMapping(value = "/ShowAllRecordsByIdByDate")
    @ResponseBody
    public Object ShowRecords(KaoqinRecords kaoqinRecords){
        Subject subject = SecurityUtils.getSubject();
        System.out.println(kaoqinRecords);
        kaoqinRecords.setId((String) subject.getSession().getAttribute("userId"));
        //某个人的表现分的经历
        List<Experience> experiences = userService.selectByIdToType(kaoqinRecords.getUserId());
        JSONModel.put("experiences",experiences);


        List<KaoqinRecords> kaoqinRecordsByIdByDate = checkingService.findKaoqinRecordsByIdByDate(kaoqinRecords);
        JSONModel.put("records",kaoqinRecordsByIdByDate);

        //某个人的所有考勤结果
        List<KaoqinResult> kaoqinresults = checkingService.findOneById(kaoqinRecords.getUserId());
        JSONModel.put("result",kaoqinresults);



        //某个人的所有信息
        User user = userService.selectByPrimaryKey(kaoqinRecords.getUserId());
        JSONModel.put("user",user);

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
     * @return
     */
    @RequestMapping("/viewKaoqin")
    @ResponseBody
    public Object ViewKaoqin(String officeId,/* String uId,*/ Model model){
        User u=(User)SecurityUtils.getSubject().getSession().getAttribute("user");
        String uId = u.getId();
        //查看某个班迟到和旷工的考勤结果
        List<KaoqinResultVO> kaoqinResults = checkingService.selectByClassLate(officeId);
        JSONModel.put("kaoqinResults",kaoqinResults);
        //查找某个教员管理的所有班级
        List<Office> offices = checkingService.selectOfficeByManage(uId);
        if (offices!=null){
            JSONModel.put("offices",offices);
        }
        //获取某个班的申诉或请假的考勤结果的数量
        Integer counts = checkingService.countByClass(officeId);
        if (counts!=null){
            model.addAttribute("counts",counts);
        }
        return JSONModel.getMap();
    }

    /**
     * 得到指定的某教员负责的某班某天的用户名单（迟到还是旷工）
     * @param isAbsenteeism
     * @return
     */
    @RequestMapping("/getMingDan")
    public Object getMingdan(Boolean isAbsenteeism,String officeId, String date,Model model){
        //这个时得到迟到的和矿工的所有人数
        List<KaoqinResultVO> kaoqinResults = checkingService.selectByClassLate(officeId);
        List<KaoqinResultVO> rs=new ArrayList<>();
        for (KaoqinResultVO k:kaoqinResults){
            if (date.equals(simpleDateFormat.format(k.getDate()))){
                //得到指定条件下迟到的名单
                if (!isAbsenteeism && k.getStatus()==0){
                    rs.add(k);
                }else if (isAbsenteeism && k.getStatus()==2){//矿工的名单
                    rs.add(k);
                }
            }
        }

        JSONModel.put("mingdan",rs);
        model.addAttribute("mingdan",rs);
        return "list_late";
    }
    /**
     * 点击“迟到人员名单”进入名单详情,可以修改其考勤状态
     * @param
     * @return
     */
    @RequestMapping(value = "/xiugaiKaoqin",method = RequestMethod.POST)
    @ResponseBody
    public Object XiugaiKaoqin(@RequestBody List<String> ids){
        for (String user_Id:
             ids) {
            KaoqinResult kaoqinResult = new KaoqinResult();
            kaoqinResult.setId(user_Id);
            kaoqinResult.setStatus(1);
            checkingService.updateByPrimaryKey(kaoqinResult);
        }
        return "success";
    }

    /**
     * 进入处理信息页面
     * @return
     */
    @RequestMapping("/dealKaoqin")
    @ResponseBody
    public Object DealKaoqin(/*String officeId*/){
        String officeId=(String)SecurityUtils.getSubject().getSession().getAttribute("officeId");
        //获取某个班的申诉或请假的考勤结果
        List<KaoqinResultVO> kaoqinResults = checkingService.selectByClass(officeId);

        JSONModel.put("kaoqinResults",kaoqinResults);
        //修改某人申述请假的状态和回复的字段
       /* KaoqinResult kaoqinResult = new KaoqinResult();
        checkingService.updateByPrimaryKey(kaoqinResult);*/
        return JSONModel.getMap();
    }
    /**
     * 进入处理信息页面,对请求进行处理
     * @param kaoqinResult 班级ID
     * @return
     */
    @RequestMapping(value = "/dealRequest",method = RequestMethod.POST)
    public String dealRequest(KaoqinResult kaoqinResult){
        //修改某人申述请假的状态和回复的字段
        if (kaoqinResult.getKaoqinRemarkDisposeResult() !=null){
            kaoqinResult.setKaoqinRemarkDisposetime(new Date());
        }else if (kaoqinResult.getKaoqinShenshuDisposeresult() !=null){
            kaoqinResult.setKaoqinShenshuDisposetime(new Date());
        }
        checkingService.updateByPrimaryKey(kaoqinResult);
        return "table_bootstrap";
    }

    /**
     * 查询所有的考勤规则和详情
     * @return
     */
    @RequestMapping("/getKaoqinAllRules")
    @ResponseBody
    public Object getKaoqinAllRules(){
        List<KaoqinRule> kaoqinRulesIncludeDetail = checkingService.findKaoqinRulesIncludeDetail();
        return kaoqinRulesIncludeDetail;
    }

    /**
     * 为指定得考勤规则添加考勤详情
     * @return
     */
    @RequestMapping("/addKaoqinDetail")
    public String addKaoqinDetail(KaoqinRule kaoqinRule){
        kaoqinRule.getKaoqinRuleDetails().get(0).setKaoqinRuleId(kaoqinRule.getId());
        kaoqinRule.getKaoqinRuleDetails().get(0).setId(UUID.randomUUID().toString());
        checkingService.addKaoQinRuleDetail(kaoqinRule);
       return "/kaoqin_rule_display";
    }
    @RequestMapping(value = "/updateKaoqinDetail" ,method = RequestMethod.POST)
    @ResponseBody
    public Object updateKaoqinDetail(KaoqinRuleDetail kaoqinRuleDetail){
        checkingService.updateKaoqinDetail(kaoqinRuleDetail);
        return "success";
    }

    /**
     * 得到所有的考勤规则
     * @return
     */
    @RequestMapping("/getAllRule")
    @ResponseBody
    public Object getAllRule(){
        String id = null;
        List<KaoqinRule> kaoqinRules = checkingService.selectAllRule(id);
        JSONModel.put("Rules",kaoqinRules);
        return JSONModel.put();
    }

    /**
     * 下载未关联考勤工号的名单模板
     * @param response
     * @param officeId 班级id
     */
    @RequestMapping("/downloadKaoqinNUmberFile")
    public void downloadKaoqinNUmberFile(HttpServletResponse response, String officeId,HttpServletRequest request) throws UnsupportedEncodingException {
        String fileName = "mingdan.xls";
//        String userAgent = request.getHeader("User-Agent");
        /*String formFileName=fileName;
        // 针对IE或者以IE为内核的浏览器：
        if (userAgent.contains("MSIE") || userAgent.contains("Trident")) {
            formFileName = java.net.URLEncoder.encode(formFileName, "UTF-8");
        } else {
            // 非IE浏览器的处理：
            formFileName = new String(formFileName.getBytes("UTF-8"), "ISO-8859-1");
        }
        response.setHeader("Content-disposition",
                String.format("attachment; filename=\"%s\"", formFileName));
        response.setContentType("application/vnd.ms-excel;charset=utf-8");
        response.setCharacterEncoding("UTF-8");*/
        List<User> users = userService.findUserByClassIdNoKaoqinNum(officeId);
        List<String> headerList = Lists.newArrayList();
        headerList.add("学号");
        headerList.add("姓名");
        headerList.add("考勤工号");
        ExportExcel excel = new ExportExcel("未关联考勤工号名单", headerList);
        for (int i = 0; i < users.size(); i++) {
            Row row = excel.addRow();
            excel.addCell(row, 0, users.get(i).getId());
            excel.addCell(row, 1, users.get(i).getName());
            excel.addCell(row, 2,"");
        }
//        excel.setDataList(users);
        try {
            excel.write(response, fileName);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 上传考勤工号关联文件
     * @param uploadFile
     * @param request
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/uploadKaoqinNUmberFile",method = RequestMethod.POST)
    @ResponseBody
    public Object addTeacher(@RequestParam("file") MultipartFile uploadFile, HttpServletRequest request) throws IOException {
        //文件上传
        if (!uploadFile.isEmpty()){
            //文件名
            String originalFilename = uploadFile.getOriginalFilename();
            String[] split = originalFilename.split("\\.");
            if (Ext_Name.contains(split[split.length-1])){
                //修改文件名
                String fileName=originalFilename;
                String realPath = request.getServletContext().getRealPath("/WEB-INF/upload/" + fileName);
                File file = new File(realPath);
                //将文件存入服务器
                uploadFile.transferTo(file);
//                file
                userService.entryKaoqinId(file);
                file.delete();
                return "The KaoqinId entry success!";
            }else {
                return "isn't excel file";
            }
        }else {
            return "the file is nothing";
        }

    }

}
