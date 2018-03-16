package com.tosit.ssm.test;

import com.tosit.ssm.entity.UserOffice;
import com.tosit.ssm.mapper.UserOfficeMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import java.sql.Timestamp;
import java.util.Scanner;
import java.util.UUID;

/**
 * Created by Benton on 2017/6/28.
 * 配置Spring和jUnit整合，jUnit启动时加载Spring IoC容器
 * spring-test,junit
 */

public class UserOfficeTest {
    @Autowired
    private UserOfficeMapper userOfficeMapper;

    @Test
    public void test1(){
        UserOffice userOffice = new UserOffice();
        userOffice.setId(UUID.randomUUID().toString().replaceAll("-",""));
        userOffice.setUserId("111");
        userOffice.setOfficeId("222");
//        userOffice.setCreateTime();
        userOffice.setCreateBy("骚林");
//        userOffice.setUpdateTime();
        userOffice.setUpdateBy("得到的");
        userOffice.setRemarks("呵呵哒，测试来的");
        userOffice.setIsDel(1);
        userOfficeMapper.insert(userOffice);
        System.out.println("111");
    }

}
