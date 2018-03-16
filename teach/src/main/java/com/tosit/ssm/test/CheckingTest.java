package com.tosit.ssm.test;

import com.tosit.ssm.entity.KaoqinRecords;
import com.tosit.ssm.mapper.KaoqinRecordsMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
@Service
public class CheckingTest {
    @Autowired
    private KaoqinRecordsMapper kaoqinRecordsMapper ;
    @Test
    public void test1(){
        KaoqinRecords test = new KaoqinRecords("101","keyNumber","java考情",101,new Date(),"type01","mach101","machhrq","454",1,"haha",1,"1010");
        kaoqinRecordsMapper.insert(test);
    }
}
