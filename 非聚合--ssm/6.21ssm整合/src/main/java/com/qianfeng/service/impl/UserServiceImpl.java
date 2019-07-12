package com.qianfeng.service.impl;

import com.qianfeng.mapper.UserMapper;
import com.qianfeng.pojo.User;
import com.qianfeng.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper mapper;


    @Override
    public boolean find(String email) {
        int emai = mapper.findE(email);

        return emai > 0 ? true:false;
    }

    @Override
    public int insertUser(User user) {
        int user1 = mapper.inserU(user);
        return user1;
    }

    @Override
    public User UserLogin(User user) {
        User login = mapper.login(user);
        return login;
    }

    @Override
    public User findInfo() {
        User user = mapper.findAll();
        return user;
    }
}
