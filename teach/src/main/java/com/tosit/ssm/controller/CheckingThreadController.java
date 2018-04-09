package com.tosit.ssm.controller;

import com.tosit.ssm.common.util.SysUtil;
import com.tosit.ssm.common.util.json.JSONModel;
import com.tosit.ssm.entity.KaoqinRecords;
import com.tosit.ssm.entity.KaoqinResult;
import com.tosit.ssm.entity.KaoqinRuleDetail;
import com.tosit.ssm.entity.UserCkRuleRecord;
import com.tosit.ssm.mapper.KaoqinRecordsMapper;
import com.tosit.ssm.service.CheckingService;
import com.tosit.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.*;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

@Controller
@RequestMapping("/thread")
public class CheckingThreadController {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Autowired
    KaoqinRecordsMapper kaoqinRecordsMapper;
    @Autowired
    UserService userService;
    @Autowired
    CheckingService checkingService;
    Timer handRecordTimer = new Timer();
    Timer readRecordTimer = new Timer();

    /**
     * 考勤处理
     */
    public void handle() {
        //获取所有昨天请假的人，他的考勤规则和对应他的昨天的考勤记录的集合
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.DATE, -1);
        List<UserCkRuleRecord> users = userService.findAllLeaveByTime(calendar.getTime());
        //为所有昨天未请假的人生成昨天的考勤结果
        for (int i = 0; i < users.size(); i++) {
            UserCkRuleRecord ckRuleRecord = users.get(i);
            KaoqinRuleDetail ruleDetails = ckRuleRecord.getKaoqinRuleDetails();
            List<KaoqinRecords> records = ckRuleRecord.getRecords();
            for (int j = 0; j < ruleDetails.getBrushCount(); j++) {
                KaoqinResult kaoqinResult = new KaoqinResult();
                try {
                    kaoqinResult.setDate(simpleDateFormat.parse(simpleDateFormat.format(calendar.getTime())));
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                kaoqinResult.setUserId(ckRuleRecord.getId());
                kaoqinResult.setId(SysUtil.getID());
                kaoqinResult.setIsDel(1);
                kaoqinResult.setCreateTime(new Date());
                kaoqinResult.setCreateresulttime(new Date());
                Integer status = 2;
                Date lastTime = null;
//                Collections.sort(records, new Comparator<KaoqinRecords>() {
//                    @Override
//                    public int compare(KaoqinRecords o1, KaoqinRecords o2) {
//                        return (int) (o1.getBrushtime().getTime()-o2.getBrushtime().getTime());
//                    }
//                });
                handleS:
                for (int k = 0; k < records.size(); k++) {
                    KaoqinRecords records1 = records.get(k);
                    Date startTime = null;
                    Date endTime = null;
                    Integer errorTime = null;
                    switch (i) {
                        case 1:
                            endTime = ruleDetails.getBrushEndtime1();
                            startTime = ruleDetails.getBrushStarttime1();
                            errorTime = ruleDetails.getTime1Wucha();
                            if (records1.getBrushtime().getTime() <= endTime.getTime() && records1.getBrushtime().getTime() >= startTime.getTime()) {
                                status = 1;
                                lastTime = records1.getBrushtime();
                                break handleS;
                            } else if (records1.getBrushtime().getTime() - endTime.getTime() <= errorTime * 1000 * 60) {
                                lastTime = records1.getBrushtime();
                                status = 0;
                                break handleS;
                            }
                            break;
                        case 2:
                            endTime = ruleDetails.getBrushEndtime2();
                            startTime = ruleDetails.getBrushStarttime2();
                            errorTime = ruleDetails.getTime1Wucha2();
                            if (records1.getBrushtime().getTime() <= endTime.getTime() && records1.getBrushtime().getTime() >= startTime.getTime()) {
                                status = 1;
                                lastTime = records1.getBrushtime();
                                break handleS;
                            } else if (records1.getBrushtime().getTime() - endTime.getTime() <= errorTime * 1000 * 60) {
                                lastTime = records1.getBrushtime();
                                status = 0;
                                break handleS;
                            }
                            break;
                        case 3:
                            endTime = ruleDetails.getBrushEndtime3();
                            startTime = ruleDetails.getBrushStarttime3();
                            errorTime = ruleDetails.getTime1Wucha3();
                            if (records1.getBrushtime().getTime() <= endTime.getTime() && records1.getBrushtime().getTime() >= startTime.getTime()) {
                                status = 1;
                                lastTime = records1.getBrushtime();
                                break handleS;
                            } else if (records1.getBrushtime().getTime() - endTime.getTime() <= errorTime * 1000 * 60) {
                                lastTime = records1.getBrushtime();
                                status = 0;
                                break handleS;
                            }
                            break;
                        case 4:
                            endTime = ruleDetails.getBrushEndtime4();
                            startTime = ruleDetails.getBrushStarttime4();
                            errorTime = ruleDetails.getTime1Wucha4();
                            if (records1.getBrushtime().getTime() <= endTime.getTime() && records1.getBrushtime().getTime() >= startTime.getTime()) {
                                status = 1;
                                lastTime = records1.getBrushtime();
                                break handleS;
                            } else if (records1.getBrushtime().getTime() - endTime.getTime() <= errorTime * 1000 * 60) {
                                lastTime = records1.getBrushtime();
                                status = 0;
                                break handleS;
                            }
                            break;
                    }
                }
                kaoqinResult.setStatus(status);
                kaoqinResult.setLastTime(lastTime);
                Integer count = checkingService.createCheckingResult(kaoqinResult);
            }
        }
    }

    /**
     * 马上执行考勤处理
     */
    @RequestMapping("/startHandleImmediately")
    public void startHandleImmediately() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                handle();
            }
        }).start();
    }

    /**
     * 关闭处理考勤线程
     */
    @RequestMapping("/closeHandle")
    @ResponseBody
    public void closeHandle() {
        handRecordTimer.cancel();
    }

    /**
     * 开启按时间循环执行考勤处理(间隔时间为24小时)
     *
     * @param hourTime 几点钟（0-23）
     * @param dayDelay 从今天开始，延后几天执行
     */
    @RequestMapping("/startHandRecord")
    public void startHandRecord(Integer hourTime, Integer dayDelay) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.HOUR_OF_DAY, hourTime); // 控制时
        calendar.set(Calendar.MINUTE, 1);    // 控制分
        calendar.set(Calendar.SECOND, 0);    // 控制秒
        calendar.add(GregorianCalendar.DATE, dayDelay);
        Date time = calendar.getTime();
        handRecordTimer.scheduleAtFixedRate(new TimerTask() {
            public void run() {
                handle();
            }
        }, time, 1000 * 60 * 60 * 24);
    }


    /**
     * 关闭读取记录线程
     */
    @RequestMapping("/closeReadRecord")
    public void closeReadRecord() {
        readRecordTimer.cancel();
    }

    /**
     * 马上执行读取记录线程
     */
    @RequestMapping("/startReadImmediately")
    public void startReadImmediately() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                read();
            }
        }).start();
    }

    /**
     * 读取数据库数据,存入本地mysql数据库
     */
    private void read() {
        long readCount;
        long saveCount;
        File savefile = null;
        PrintWriter pw = null;
        ResultSet result = null;
        Connection conn = null;
        Statement statement = null;

        //初始化连接驱动
        Properties prop = new Properties();
        prop.put("charSet", "UTF-8");
//                String dbUr1 = "jdbc:Access:///" + "C:\\Program Files (x86)\\ZKTime5.0\\att2000.mdb";
//                String  dbUr1="jdbc:odbc:driver={Microsoft Access Driver (*.mdb)};DBQ=C:\\Program Files (x86)\\ZKTime5.0\\att2000.mdb";
        String dbUr1 = "jdbc:odbc:chenking";
        try {
//                    Class.forName("com.hxtt.sql.access.AccessDriver").newInstance();
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();
            conn = DriverManager.getConnection(dbUr1);
            statement = conn.createStatement();

            //获取数据库中的总条数
            result = statement.executeQuery("SELECT count(*) FROM CHECKINOUT  ");
            result.next();
            readCount = result.getInt(1);
            //获取保存的总条数
            savefile = new File("G:\\summarize\\teach\\src\\main\\java\\countReCord.txt");
            InputStream resource = new FileInputStream(savefile);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(resource));
            saveCount = Long.parseLong(bufferedReader.readLine());
            bufferedReader.close();

            //是否写入新的数据到数据库
            if (readCount - saveCount >= 1) {
                //      CHECKINOUT        USERID,CHECKTIME
                //      USERINFO          Name,Badgenumber,USERID

                result = statement.executeQuery("select check.USERID,check.CHECKTIME,user.Name,user.Badgenumber " +
                        " from (SELECT top " + (readCount - saveCount) + " * FROM CHECKINOUT  ORDER by CHECKTIME DESC) as check,USERINFO as user where check.USERID=user.USERID");
                while (result.next()) {
//                            System.out.println(result.getObject("CHECKTIME"));
                    String userName = result.getString("Name");
                    String kaoQinId = result.getString("USERID");
                    Object checkTime = result.getObject("CHECKTIME");//打卡时间
                    String checkType = "指纹";//打卡方式
//                            String kaoqinResultId=UUID.randomUUID().toString().replaceAll("-","");//结果ID


                    KaoqinRecords kaoqinRecords = new KaoqinRecords();
                    kaoqinRecords.setName(userName);
                    kaoqinRecords.setKeyNumber(kaoQinId);
                    kaoqinRecords.setBrushtime((Date) checkTime);
                    kaoqinRecords.setCheckType(checkType);
//                            kaoqinRecords.setKaoqinResultId(kaoqinResultId);
                    kaoqinRecords.setId(UUID.randomUUID().toString().replaceAll("-", ""));
                    kaoqinRecordsMapper.insertKaoqinRecords(kaoqinRecords);
                }
                pw = new PrintWriter(new OutputStreamWriter(new FileOutputStream(savefile)));
                pw.print(readCount);
                pw.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (result != null)
                    result.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                if (statement != null)
                    statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }


    }

    /**
     * 开启读取数据库数据，并存入本地mysql数据库的线程
     *
     * @param delay  延迟时间
     * @param period 间隔时间
     */
    @RequestMapping("/readRecord")
    @ResponseBody
    public Object readRecord(Integer delay, Integer period) {
        handRecordTimer.schedule(new TimerTask() {
            public void run() {
                read();
            }
        }, 0, 500);
        JSONModel.put("status", "ok");
        return JSONModel.put();
    }
}
