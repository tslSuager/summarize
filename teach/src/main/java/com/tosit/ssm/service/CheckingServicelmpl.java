package com.tosit.ssm.service;

import com.tosit.ssm.entity.*;
import com.tosit.ssm.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class CheckingServicelmpl implements CheckingService {
    @Autowired
    private KaoqinRecordsMapper kaoqinRecordsMapper;
    @Autowired
    private KaoqinResultMapper kaoqinResultMapper;
    @Autowired
    private OfficeMapper officeMapper;

    @Override
    public List<KaoqinRecords> findKaoqinRecordsByIdByDate(KaoqinRecords kaoqinRecords) {
        return kaoqinRecordsMapper.selectByIdByDate(kaoqinRecords);
    }

    @Override
    public List<KaoqinResult> findOneById(String userId) {
        return kaoqinResultMapper.selectByOne(userId);
    }

    @Override
    public int addKaoqinResultById(KaoqinResult record) {
        kaoqinResultMapper.insertKaoqinResult(record);
        return 0;
    }

    @Override
    public List<KaoqinResultVO> selectByClassLate(String officeId) {
        return kaoqinResultMapper.selectByClassLate(officeId);
    }

    @Override
    public List<Office> selectOfficeByManage(String name) {
        return officeMapper.selectOfficeByManage(name);
    }

    @Override
    public Integer countByClass(String officeId) {
        return kaoqinResultMapper.countByClass(officeId);
    }

    @Override
    public List<KaoqinResultVO> selectByClass(String officeId) {
        List<KaoqinResultVO> kaoqinResults = kaoqinResultMapper.selectByClass(officeId);

        //排序
        Collections.sort(kaoqinResults,new Comparator<KaoqinResultVO>(){
            public int compare(KaoqinResultVO arg0, KaoqinResultVO arg1) {
                if ((arg0.getKaoqinRemarkStatus() !=null && arg0.getKaoqinRemarkStatus() ==0) || (arg0.getKaoqinShenshuStatus() !=null&& arg0.getKaoqinShenshuStatus() ==2)){
                    return -1;
                }else if ((arg1.getKaoqinRemarkStatus() !=null && arg1.getKaoqinRemarkStatus() ==0) || (arg1.getKaoqinShenshuStatus() !=null&& arg1.getKaoqinShenshuStatus() ==2)){
                    return 1;
                }else {
                    Date d1= arg0.getKaoqinShenshuReqtime()==null?arg0.getKaoqinRemarkReqtime(): arg0.getKaoqinShenshuReqtime();
                    Date d2= arg1.getKaoqinShenshuReqtime()==null?arg1.getKaoqinRemarkReqtime(): arg1.getKaoqinShenshuReqtime();
                    return d2.compareTo(d1);
                }

            }
        });

        return kaoqinResults;
    }

    @Override
    public int updateByPrimaryKey(KaoqinResult record) {
        kaoqinResultMapper.updateByPrimaryKey(record);
        return 0;
    }
    @Autowired
    private KaoqinRuleMapper kaoqinRuleMapper;
    @Autowired
    private KaoqinRuleDetailMapper kaoqinRuleDetailMapper;
    /**
     * 添加考勤规则和规则详情
     * @param kaoqinRule 待插入的考情规则
     * @param kaoqindetailVO 带插入的考勤详情
     * @return
     */
    @Override
    public void addKaoQinRule(KaoqinRule kaoqinRule, KaoqindetailVO kaoqindetailVO) {
        String ruleId = UUID.randomUUID().toString().replaceAll("-", "");
        kaoqinRule.setId(ruleId);
        //首先再考勤规则表插入信息
         kaoqinRuleMapper.insert(kaoqinRule);
        //然后再考勤规则详情中插入详情信息
        List<KaoqinRuleDetail> kaoqinRuleDetails = kaoqindetailVO.getKrd();
        for (/*int i=( kaoqinRuleDetails.get(0).getWeekDay()==null?1:0)*/int i = 0; i < kaoqinRuleDetails.size(); i++) {
            KaoqinRuleDetail k = kaoqinRuleDetails.get(i);
            if (k.getBrushEndtime1() == null) {
                continue;
            }
            k.setKaoqinRuleId(ruleId);
            String detailId = UUID.randomUUID().toString().replaceAll("-", "");
            k.setId(detailId);
            int row = kaoqinRuleDetailMapper.insertKaoqinRuleDetail(k);
        }
//        kaoqinRuleDetailMapper.insert();
    }

    @Override
    public String modifyChecking(KaoqinResult data) {
        Integer i = kaoqinResultMapper.updateByPrimaryKey(data);
        String status="success";
        if (i == null) {
            status="fail";
        }
        return status;
    }

    @Override
    public String createLeave(KaoqinResult kaoqinResult) {
        Integer i = kaoqinResultMapper.insertKaoqinResult(kaoqinResult);
        String status="success";
        if (i == null) {
            status="fail";
        }
        return status;
    }

    public List<KaoqinRule> selectAllRule(String id) {
        return kaoqinRuleMapper.selectRule(id);
    }

    /**
     * 获取某个班的申述或请假记录的集合
     *
     * @param officeId
     * @return 返回值是一个考勤结果集合
     */
    @Override
    public List<KaoqinResultVO> findKaoqinRemarkAndQingJiaRecord(String officeId) {
        List<KaoqinResultVO> kaoqinResults = kaoqinResultMapper.selectByClass(officeId);
        Collections.sort(kaoqinResults, new Comparator<KaoqinResult>() {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            @Override
            public int compare(KaoqinResult arg0, KaoqinResult arg1) {
                int rs = 1;
                Date date0 = arg0.getKaoqinRemarkReqtime() == null ? arg0.getKaoqinShenshuReqtime() : arg0.getKaoqinRemarkReqtime();
                Date date1 = arg1.getKaoqinRemarkReqtime() == null ? arg1.getKaoqinShenshuReqtime() : arg1.getKaoqinRemarkReqtime();
                if(date0.getTime() > date1.getTime()){
                    rs =  -1;
                }
                if(date0.getTime() == date1.getTime()){
                    rs =  0;
                }
                return rs;
            }
        });
        return kaoqinResults;
    }

    /**
     * 获取所有的考勤规则和相关详情
     *
     * @return
     */
    @Override
    public List<KaoqinRule> findKaoqinRulesIncludeDetail() {
        return kaoqinRuleMapper.selcetKaoqinRuleAndDetails();
    }

    /**
     * 添加考勤详情
     *
     * @param kaoqinRule 属性id 不能为空
     */
    @Override
    public void addKaoQinRuleDetail(KaoqinRule kaoqinRule) {
        kaoqinRuleDetailMapper.insertKaoqinRuleDetail(kaoqinRule.getKaoqinRuleDetails().get(0));
    }

    /**
     * 更新考勤详情（根据id）
     *
     * @param kaoqinRuleDetail
     */
    @Override
    public int updateKaoqinDetail(KaoqinRuleDetail kaoqinRuleDetail) {
        return kaoqinRuleDetailMapper.updateByPrimaryKey(kaoqinRuleDetail);
    }

    @Override
    public Integer createCheckingResult(KaoqinResult kaoqinResult) {
        return kaoqinResultMapper.insertKaoqinResult(kaoqinResult);
    }


}
