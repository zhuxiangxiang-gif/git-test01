package com.qianfeng.service.impl;

import com.qianfeng.mapper.LoginMapper;
import com.qianfeng.pojo.Admin;
import com.qianfeng.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class LoginServiceImpl implements LoginService{

    @Autowired
    LoginMapper mapper;

    @Override
    public List<Admin> login1() {
        List<Admin> login = mapper.login();
        return login;
    }
}
