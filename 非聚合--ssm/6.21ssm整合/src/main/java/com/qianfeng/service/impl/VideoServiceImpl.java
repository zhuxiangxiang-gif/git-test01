package com.qianfeng.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.mapper.VideoMapper;
import com.qianfeng.pojo.Video;
import com.qianfeng.pojo.VideoVo;
import com.qianfeng.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VideoServiceImpl implements VideoService {

    @Autowired
    VideoMapper mapper;


    @Override
    public List<Video> selectList(int page, int pageSize, VideoVo videoVo) {

        PageHelper.startPage(page,pageSize);
        List<Video> list = mapper.selectVideoList(videoVo);

        return list;
    }

    @Override
    public List<Video> findVideoAdd() {

        List<Video> save = mapper.findSave();
        return save;
    }



//    @Override
//    public List<Video> findVideoAdd() {
//        return null;
//    }

    @Override
    public void addVideo(Video video) {

        mapper.addVideo(video);

    }

    @Override
    public void delete(int id) {

        mapper.deleteVideo(id);
    }


}
