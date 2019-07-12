package com.qianfeng.mapper;

import com.qianfeng.pojo.Video;
import com.qianfeng.pojo.VideoVo;

import java.util.List;

public interface VideoMapper {

    public List<Video> selectVideoListAdd();

    public List<Video> selectVideoList(VideoVo videoVo);

    public List<Video> findSave();

    public void addVideo(Video video);

//    @Delete("delete from video where id = #{id}")
    public void deleteVideo(Integer id);
//
//    @SelectProvider(type = SqlProvide.class,method = "findById1")
//    public List<Video> findAll1();

   /* @SelectProvider(type = SqlProvide.class,method = "findByTitle")
    public List<Video> findByTitle(@Param("title") String title, @Param("time") int time);

    @DeleteProvider(type = SqlProvide.class,method = "delte")
    public Video deleteBy();*/

}
