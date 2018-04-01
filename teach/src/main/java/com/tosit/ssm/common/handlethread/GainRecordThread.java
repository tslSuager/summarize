package com.tosit.ssm.common.handlethread;

import com.tosit.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.*;

public class GainRecordThread extends Thread {
    public static GainRecordThread checkingThread = null;
    Timer timer=null;

    @Autowired
    UserService userService;
//    @Autowired
//    KaoqinResultService kaoqinResultService;
//    @Autowired
//    KaoqinRecordsService kaoqinRecordsService;
//    @Autowired
//    KaoqinRuleService kaoqinRuleService;


    @Override
    public void run() {
        //获取所有考勤记录到数据库


    }


    public static GainRecordThread getInstance() {
        synchronized (GainRecordThread.class) {
            if (checkingThread == null) {
                checkingThread = new GainRecordThread();
            }
        }
        return checkingThread;
    }

    /**
     * 开启读取记录（间隔时间）
     *
     * @param dayDelay 间隔多少毫秒
     */
    public  void startTiming(Integer dayDelay) {
        timer = new Timer();
        Calendar calendar = Calendar.getInstance();
        Date time = calendar.getTime();
        timer.scheduleAtFixedRate(new TimerTask() {
            public void run() {
                start();
            }
        }, time, dayDelay);
    }

    /**
     * 关闭读取进程
     */
    public void close() {
        timer.cancel();
    }
}
