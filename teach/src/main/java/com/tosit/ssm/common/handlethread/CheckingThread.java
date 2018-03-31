package com.tosit.ssm.common.handlethread;

import com.tosit.ssm.entity.KaoqinResult;
import com.tosit.ssm.mapper.KaoqinRecordsMapper;
import com.tosit.ssm.mapper.UserMapper;
import com.tosit.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

public class CheckingThread extends Thread{
    @Autowired
    UserService userService;
//    @Autowired
//    KaoqinResultService kaoqinResultService;
//    @Autowired
//    KaoqinRecordsService kaoqinRecordsService;


    @Override
    public void run() {
        //判断昨天是否放假


        //获取所有昨天未请假的人

        //获取所有昨天未请假的人的昨天的考勤记录

        //为所有昨天未请假的人生成昨天的考勤结果
    }
}
