package com.qianfeng.mapper;

import com.qianfeng.pojo.Spearker;

import java.util.List;

public interface SpearkerMapper {

    public List<Spearker> FindAllSpearker();

    public Spearker findById(int id);

    public void deleteS(int id);

    public void add(Spearker spearker);

    public int update1(Spearker spearker);


}
