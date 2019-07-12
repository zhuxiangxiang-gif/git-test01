package com.qianfeng.controller;

import com.github.pagehelper.PageInfo;
import com.qianfeng.pojo.Course;
import com.qianfeng.pojo.Spearker;
import com.qianfeng.pojo.Video;
import com.qianfeng.pojo.VideoVo;
import com.qianfeng.service.CourseService;
import com.qianfeng.service.SpearkerService;
import com.qianfeng.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class controller {

    @Autowired
    VideoService videoService;
    @Autowired
    CourseService courseService;
    @Autowired
    SpearkerService spearkerService;



    //查询所有，可以用，
    @RequestMapping("/listvideo.do")
    public String selectVideo(VideoVo videoVo, Model model, @RequestParam(name = "page",required = false,defaultValue = "1") int page, @RequestParam(name = "pageSize",required = false,defaultValue = "5") int pageSize){

        List<Video> video = videoService.selectList(page,pageSize,videoVo);
        PageInfo<Video> pageInfo = new PageInfo<Video>(video);
        model.addAttribute("pageInfo",pageInfo);

        System.err.println("hnfeughbjhsdghj");
        List<Spearker> all = spearkerService.findAll();
//        System.out.println(all.get(1).getSpeakerName());
//        System.out.println(all.get(5).getId());
        List<Course> list = courseService.find();
        model.addAttribute("lists",all);
        model.addAttribute("listc",list);
//        System.out.println(video.get(0).getSpearker().getSpeakerName());
        System.out.println("显示所有");

        return "listVideo";
    }


    //页面上的查询，没写完
    @RequestMapping("/findSpeaker.do")
    public String findSpeakerById(Model model, int id, @RequestParam(name = "page",required = false,defaultValue = "1") int page, @RequestParam(name = "pageSize",required = false,defaultValue = "5") int pageSize){

        Spearker speark = spearkerService.findSpeark(id);
        PageInfo<Spearker> pageInfo = new PageInfo<Spearker>((List<Spearker>) speark);
        model.addAttribute("pageInfo", pageInfo);
        System.out.println("显示所有");

        return "listVideo";
    }


    @RequestMapping("/listvideoSave.do")
    public String selectVideoSave(Model model){


        List<Video> video = videoService.findVideoAdd();
        System.out.println(video);
        model.addAttribute("videoList",video);

//        List<Spearker> all = spearkerService.findAll();
//        System.out.println(all);
        List<Course> list = courseService.find();
        System.out.println(list);
//        model.addAttribute("lists",all);
        model.addAttribute("listc",list);
        System.out.println(video.get(0).getSpearker().getSpeakerName());
        System.out.println("显示所有");

        return "addVideolaoyan";
    }



    //添加视频
    @RequestMapping("/addVideo.do")
    public String addVideo(Video video){
        System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%");

        videoService.addVideo(video);


        System.out.println("添加成功");

        System.out.println("womendehaooengyou");
        return "redirect:/listvideo.do";
    }

//    @RequestMapping("/add.do")
//    public String add(Video video){
//        System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%");
//
//        videoService.addVideo(video);
////        mapper.addVideo(video);
//
//        System.out.println("添加成功");
//
//        System.out.println("womendehaooengyou");
//        return "redirect:/listvideo.do";
//    }

    //添加视频,之前先查询
    @RequestMapping("/findVideoAndAdd")
    public String findAllVideo(Model model){
        List<Video> list = videoService.findVideoAdd();
        model.addAttribute("video",list);

        List<Course> courses = courseService.find();
        model.addAttribute("courseList",courses);

        List<Spearker> all = spearkerService.findAll();
        model.addAttribute("speakerList",all);

        return "addVideo";
    }



    @RequestMapping("/deleteBy.do")
    public String deleteVideoById(Integer id){
        System.out.println("删除&&&&&&&&");
        videoService.delete(id);

//        mapper.deleteVideo(id);
        System.out.println("@@@@@@@@@@@@@@@@@@@@");
        System.out.println("删除成功");

        return "redirect:/listvideo.do";
    }





    @RequestMapping("/showCourse.do")
    public String listCourse(Model model){
        List<Course> list = courseService.find();
        Model listc = model.addAttribute("listc", list);
        return "#";
    }
}
