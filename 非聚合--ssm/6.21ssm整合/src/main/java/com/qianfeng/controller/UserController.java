package com.qianfeng.controller;

import com.qianfeng.pojo.User;
import com.qianfeng.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    //注册验证-邮箱
    @RequestMapping("/validateEmail")
    @ResponseBody
    public String findEmail(String email){
        boolean email1 = userService.find(email);
        System.out.println(email);
        return email1 ? "false": "success";
    }
    //注册
    @RequestMapping("/insertUser")
    @ResponseBody
    public String regist(User user){

        int insertUser = userService.insertUser(user);
        System.out.println(insertUser);
        return "success";
    }

    @RequestMapping("/loginUser")
    @ResponseBody
    public String login(User user, HttpSession session) {
        User login = userService.UserLogin(user);

        System.out.println(login.getPassword());
        System.out.println(login.getEmail());
        if (user != null && login.getEmail().equals(user.getEmail()) && login.getPassword().equals(user.getPassword())) {
            session.setAttribute("userAccount",user.getEmail());
            return "success";
        } else {
            return "错误";
        }
    }

    //展示个人信息
    @RequestMapping("/showMyProfile.action")
    public String myCount(HttpSession session, Model model){
        String email = (String) session.getAttribute("userAccount");


        User info = userService.findInfo();
        model.addAttribute("user",info);

        return "my_profile";
    }
}

