package com.qianfeng.service.impl;

import com.qianfeng.mapper.SpearkerMapper;
import com.qianfeng.pojo.Spearker;
import com.qianfeng.service.SpearkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpearkerServiceImpl implements SpearkerService {
    @Autowired
    SpearkerMapper mapper;

    @Override
    public List<Spearker> findAll() {

        List<Spearker> spearkers = mapper.FindAllSpearker();

        return spearkers;
    }

    @Override
    public Spearker findSpeark(int id) {

        Spearker info = mapper.findById(id);
        return info;
    }

    @Override
    public void deleteSpeaker(int id) {
        mapper.deleteS(id);
    }

    @Override
    public void addSpearke(Spearker spearker) {

        mapper.add(spearker);
    }

    @Override
    public boolean updateVide0(Spearker spearker) {

        int i = mapper.update1(spearker);

        return i >0 ? true :false;
    }
}
