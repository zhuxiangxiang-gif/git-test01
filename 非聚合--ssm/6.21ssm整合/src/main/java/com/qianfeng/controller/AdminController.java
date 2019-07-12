package com.qianfeng.controller;

import com.qianfeng.pojo.Admin;
import com.qianfeng.service.AdminService;
import com.qianfeng.util.JsonBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller

public class AdminController {

    @Autowired
    AdminService adminService;

//    @RequestMapping("/loginUser.do")
//    @ResponseBody
//    public  AdminLogin(String username, String password) {
//
//        System.out.println("登陆中。。。。。。。。。。");
//        String findlogin = adminService.findlogin(username, password);
//
//
//        if (findlogin != null){
//            return new JsonBean(1,findlogin);
//        }
//        return null;
//    }



    @RequestMapping("/loginUser.do")
    @ResponseBody
    public JsonBean AdminLogin(Admin admin){
        boolean findlogin = adminService.findlogin(admin);
        System.out.println(findlogin);
        if (findlogin){
            return new JsonBean(1,null);
        }
        return new JsonBean(0,null);
    }

}

