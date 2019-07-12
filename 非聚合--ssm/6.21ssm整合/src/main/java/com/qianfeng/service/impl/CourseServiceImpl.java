package com.qianfeng.service.impl;

import com.qianfeng.mapper.CourseMapper;
import com.qianfeng.pojo.Course;
import com.qianfeng.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    CourseMapper mapper;
    @Override
    public List<Course> find() {

        List<Course> listc = mapper.findAll();
        return listc;
    }

    @Override
    public int insert(Course course) {
        int c = mapper.insertC(course);
        return c;
    }
}
