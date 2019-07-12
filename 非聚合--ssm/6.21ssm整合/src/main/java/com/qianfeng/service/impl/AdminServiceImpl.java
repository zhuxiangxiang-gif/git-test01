package com.qianfeng.service.impl;

import com.qianfeng.mapper.AdminMapper;
import com.qianfeng.pojo.Admin;
import com.qianfeng.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {


    @Autowired
    AdminMapper mapper;

    @Override
    public boolean findlogin(Admin admin) {
        int lon = mapper.login1(admin);


        return lon > 0 ? true:false;
    }
}
