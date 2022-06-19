package com.zsy.xsb.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zsy.xsb.VO.CjbCharVO;
import com.zsy.xsb.VO.CjbKchVO;
import com.zsy.xsb.VO.CjbVO;
import com.zsy.xsb.VO.XsbVO;
import com.zsy.xsb.entity.Cjb;
import com.zsy.xsb.entity.Xsb;
import com.zsy.xsb.service.CjbService;
import com.zsy.xsb.mapper.CjbMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 */
@Service
public class CjbServiceImpl extends ServiceImpl<CjbMapper, Cjb> implements CjbService{

    @Autowired
    private CjbMapper cjbMapper;

    @Override
    public CjbVO<CjbKchVO> findDate(Integer page, Integer limit) {
        CjbVO cjbVO=new CjbVO();
        cjbVO.setCode(0);
        cjbVO.setMsg("");
        IPage<CjbKchVO> xsbIPage = new Page<>(page,limit);
        QueryWrapper<CjbKchVO> queryWrapper=new QueryWrapper<>();
        IPage<CjbKchVO> result = cjbMapper.findAll(xsbIPage,queryWrapper);
        List<CjbKchVO> records = result.getRecords();
        cjbVO.setCount(result.getTotal());
        cjbVO.setData(records);
        return cjbVO;
    }
}




