package com.qianfeng.service;

import com.qianfeng.pojo.Video;
import com.qianfeng.pojo.VideoVo;

import java.util.List;

public interface VideoService {

//    public List<Video> selectList();
    public List<Video> selectList(int page, int pageSize, VideoVo videoVo);


    //添加前，先查询
    public List<Video> findVideoAdd();

    public void addVideo(Video video);

    public void delete(int id);
}
