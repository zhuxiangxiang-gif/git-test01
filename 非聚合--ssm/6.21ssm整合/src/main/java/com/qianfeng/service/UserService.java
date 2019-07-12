package com.qianfeng.service;

import com.qianfeng.pojo.User;

public interface UserService {
    //验证邮箱
    public boolean find(String email);
    // 注册
    int insertUser(User user);

    public User UserLogin(User user);

    User findInfo();
}
