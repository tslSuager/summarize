package com.tosit.ssm.common.handlethread;

import com.tosit.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.*;

public class CheckingThread extends Thread {
    @Autowired
    UserService userService;
    public static CheckingThread checkingThread = null;
//    @Autowired
//    KaoqinResultService kaoqinResultService;
//    @Autowired
//    KaoqinRecordsService kaoqinRecordsService;
//    @Autowired
//    KaoqinRuleService kaoqinRuleService;


    @Override
    public void run() {
        //获取所有昨天未请假的人

        //判断所有昨天未请假的人昨天是否放假（通过这个人的考勤规则）

        //获取所有昨天未请假的人的昨天的考勤记录

        //为所有昨天未请假的人生成昨天的考勤结果
    }


    public static CheckingThread getInstance() {
        synchronized (CheckingThread.class) {
            if (checkingThread == null) {
                checkingThread = new CheckingThread();
            }
        }
        return checkingThread;
    }

    /**
     * 马上执行考勤处理
     */
    public  void startImmediately() {
        start();
    }

    /**
     * 开启按时间循环执行考勤处理(间隔时间为24小时)
     *
     * @param hourTime 几点钟（0-23）
     * @param dayDelay 从今天开始，延后几天执行
     */
    public  void startTiming(Integer hourTime, Integer dayDelay) {
        Timer timer = new Timer();
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.HOUR_OF_DAY, hourTime); // 控制时
        calendar.set(Calendar.MINUTE, 1);    // 控制分
        calendar.set(Calendar.SECOND, 0);    // 控制秒
        calendar.add(GregorianCalendar.DATE, dayDelay);
        Date time = calendar.getTime();
        timer.scheduleAtFixedRate(new TimerTask() {
            public void run() {
                startImmediately();
            }
        }, time, 1000 * 60 * 60 * 24);
    }
}
