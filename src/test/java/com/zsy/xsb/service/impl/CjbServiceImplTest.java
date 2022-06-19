package com.zsy.xsb.service.impl;

import com.zsy.xsb.VO.CjbCharVO;
import com.zsy.xsb.mapper.CjbMapper;
import junit.framework.TestCase;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CjbServiceImplTest extends TestCase {
    @Autowired
    private CjbMapper cjbMapper;

    @Test
    private CjbCharVO findAll(){
        CjbCharVO byCJ = cjbMapper.findByCJ();
        System.out.println(byCJ);
        return null;
    }
}
