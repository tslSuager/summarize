package com.tosit.ssm.service;

import com.tosit.ssm.entity.Experience;

import java.util.List;

public interface ExperienceService {
    /**
     * 根据id获取该用户所有的经历
     * @param id
     * @return
     */
    List<Experience> allUserExperience(String id);
}
