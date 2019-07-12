package com.qianfeng.service;

import com.qianfeng.pojo.Course;

import java.util.List;

public interface CourseService {
    public List<Course> find();

    public int insert(Course course);


}
