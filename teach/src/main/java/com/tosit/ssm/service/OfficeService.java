package com.tosit.ssm.service;

import com.tosit.ssm.entity.Office;

import java.util.List;

public interface OfficeService {
     void createOffice(Office office);
        List<Office> getArea();
        public  List<Office> getAllClass();
}
