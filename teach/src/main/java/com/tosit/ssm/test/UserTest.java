package com.tosit.ssm.test;

import com.tosit.ssm.entity.Office;
import com.tosit.ssm.entity.User;
import com.tosit.ssm.mapper.OfficeMapper;
import com.tosit.ssm.mapper.UserMapper;
import com.tosit.ssm.service.OfficeService;
import com.tosit.ssm.service.OfficeServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

public class UserTest {
    @Autowired
    private UserMapper userMapper;

}
