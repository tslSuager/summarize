package com.tosit.ssm.test;

import com.tosit.ssm.entity.Office;
import com.tosit.ssm.mapper.OfficeMapper;
import com.tosit.ssm.service.OfficeService;
import com.tosit.ssm.service.OfficeServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserTest {
    @Autowired
    OfficeServiceImpl officeService;
    @Test
    public void sd() {
        Office office = new Office();
        officeService.createOffice(office);
    }
}
