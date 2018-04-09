package com.tosit.ssm.service;

import com.tosit.ssm.entity.Experience;
import com.tosit.ssm.entity.UserExample;
import com.tosit.ssm.mapper.ExperienceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
public class ExperienceServiceImpl implements ExperienceService{
    @Autowired
    private ExperienceMapper experienceMapper;

    /**
     * 根据id获取该用户所有的经历
     * @param id
     * @return
     */
    @Override
    public List<Experience> allUserExperience(String id) {
        List<Experience> experiences = experienceMapper.selectById(id);
        return experiences;
    }

    @Override
    public void addEx(Experience experience) {
        experienceMapper.insertExperience(experience);
    }
}
