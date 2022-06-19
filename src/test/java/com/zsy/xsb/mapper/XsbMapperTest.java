package com.zsy.xsb.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zsy.xsb.VO.XsbVO;
import com.zsy.xsb.entity.Xsb;
import junit.framework.TestCase;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Repository;

import java.sql.SQLOutput;
import java.util.List;

@SpringBootTest
public class XsbMapperTest extends TestCase {

    @Autowired
    private XsbMapper xsbMapper;
    @Test
    void text(){
        xsbMapper.selectList(null);
        System.out.println();
    }
    @Test
    public void queryUserForPage(){
                IPage<Xsb> xsbIPage = new Page<>(2, 2);//参数一是当前页，参数二是每页个数
                 xsbIPage = xsbMapper.selectPage(xsbIPage, null);
                 List<Xsb> list = xsbIPage.getRecords();
                 for(Xsb xsb : list){
                        System.out.println(xsb);
                     }
             }
}
