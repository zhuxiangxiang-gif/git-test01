package com.qianfeng.controller;

import com.qianfeng.pojo.Spearker;
import com.qianfeng.service.SpearkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/spearker")

public class SpearkerController {
    @Autowired
    SpearkerService spearkerService;





    @RequestMapping("/showvideo.do")

    public String selectVideo(Model model){

        List<Spearker> all = spearkerService.findAll();
        model.addAttribute("list",all);

        System.out.println("主讲人");

        return "showSpearker";
    }

    @RequestMapping("/deleteBy.do")
    public String deleteSpeaker(int id){
        spearkerService.deleteSpeaker(id);
        return "redirect:/spearker/showvideo.do";
    }

    @RequestMapping("/addSpeaker.do")

    public String addSpeaker(Spearker spearker){

        spearkerService.addSpearke(spearker);

        return "redirect:/spearker/showvideo.do";
    }

    //添加之前先查询一下
    @RequestMapping("/findAllSpeaker.do")

    public String findSperker(Model model,int id){
        Spearker speark = spearkerService.findSpeark(id);
        model.addAttribute("speark",speark);
        System.out.println(speark);
        System.out.println(speark.getId());
        return "addAndSaveSpeaker";
    }


//    @RequestMapping("/updateSpeaker.do")
//    @ResponseBody
//    public String update(Model model){
//        List<Spearker> all = spearkerService.findAll();
//        model.addAttribute("list",all);
//        return "updateVideo";
//    }
    //修改
    @RequestMapping("/updateSpeaker.do")
    public String updateVideo(Spearker spearker){
        boolean s = spearkerService.updateVide0(spearker);
        System.out.println(s);
        if (s){
            return "redirect:/spearker/showvideo.do";
        }else {
            return "false";
        }
    }
    //ajax修改
    /*@RequestMapping("/updateSpeaker.do")
    public JsonBean updateVideo(Spearker spearker){
        boolean s = spearkerService.updateVide0(spearker);
        System.out.println(s);
        if (s){
            return new JsonBean(1,null);
        }else {
            return new JsonBean(0,null);
        }
    }*/

}
