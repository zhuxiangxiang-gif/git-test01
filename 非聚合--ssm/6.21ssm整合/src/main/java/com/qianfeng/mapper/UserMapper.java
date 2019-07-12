package com.qianfeng.mapper;

import com.qianfeng.pojo.User;

public interface UserMapper {

    public int findE(String email);

    int inserU(User user);


    public User login(User user);


    User findAll();
}
