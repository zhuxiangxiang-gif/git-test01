package com.qianfeng.service;

import com.qianfeng.pojo.Spearker;

import java.util.List;

public interface SpearkerService {

    public List<Spearker> findAll();

    public Spearker findSpeark(int id);

    public void deleteSpeaker(int id);


    //添加讲师
    public void addSpearke(Spearker spearker);

    public boolean updateVide0(Spearker spearker);
}
