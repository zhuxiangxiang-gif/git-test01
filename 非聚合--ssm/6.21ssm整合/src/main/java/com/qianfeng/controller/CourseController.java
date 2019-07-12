package com.qianfeng.controller;

import com.qianfeng.pojo.Course;
import com.qianfeng.service.CourseService;
import com.qianfeng.util.JsonBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/course")
public class CourseController {

    @Autowired
    CourseService courseService;

    @RequestMapping("/listCourse")
    @ResponseBody
    public JsonBean findAllCourse(Model model){
        List<Course> list = courseService.find();
        model.addAttribute("course",list);
        return new JsonBean(1,list);
    }

    @RequestMapping("/insertCourse")
    @ResponseBody
    public JsonBean inserCourse(Course course){

        int insert = courseService.insert(course);
        if (insert == 1){
            return new JsonBean(1,null);
        }
            return new JsonBean(0,null);
    }
}
