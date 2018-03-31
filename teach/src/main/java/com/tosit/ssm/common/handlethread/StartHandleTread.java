package com.tosit.ssm.common.handlethread;

import java.util.*;

public class StartHandleTread {
    public static CheckingThread checkingThread = null;

    public static CheckingThread getInstance() {
        synchronized (StartHandleTread.class) {
            if (checkingThread == null) {
                checkingThread = new CheckingThread();
            }
        }
        return checkingThread;
    }

    /**
     * 马上执行考勤处理
     */
    public static void startImmediately() {
        getInstance().start();
    }

    /**
     * 开启按时间循环执行考勤处理(间隔时间为24小时)
     * @param hourTime 几点钟（0-23）
     * @param dayDelay 从今天开始，延后几天执行
     */
    public static void startTiming(Integer hourTime,Integer dayDelay) {
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

    public static void main(String[] args) {
        startTiming(0,1);
    }
}
