package com.qianfeng.mapper;

import com.qianfeng.pojo.Course;

import java.util.List;

public interface CourseMapper {

    public List<Course> findAll();

    public int insertC(Course course);
}
