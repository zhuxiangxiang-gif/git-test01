package test;

import com.qianfeng.mapper.VideoMapper;
import com.qianfeng.service.VideoService;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration("/spring/applicationContext-*.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class TestClass {

    //测试业务层
    @Autowired
    private VideoService videoService;
    @Autowired
    private VideoMapper videoMapper;

//    @Test
//    public void find(){
//
//        videoMapper.selectVideoList(videoVo);
//    }
//
//    @Test
//    public void findTest(){
//        List<Employee> list = employeeService.findAllEmp();
//        System.out.println(list.size());
//    }
}
