package com.zsy.xsb.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zsy.xsb.VO.CjbKchVO;
import com.zsy.xsb.VO.CjbVO;
import com.zsy.xsb.VO.XskcbVO;
import com.zsy.xsb.VO.XskcbxhVO;
import com.zsy.xsb.entity.Xsb;
import com.zsy.xsb.entity.Xskcb;
import com.zsy.xsb.service.XskcbService;
import com.zsy.xsb.mapper.XskcbMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 *
 */
@Service
public class XskcbServiceImpl extends ServiceImpl<XskcbMapper, Xskcb> implements XskcbService{

    @Autowired
    private XskcbMapper xskcbMapper;
    @Override
    public XskcbVO<XskcbxhVO> findDate(Integer page, Integer limit,HttpSession session) {
        XskcbVO xskcbVO=new XskcbVO();
        xskcbVO.setCode(0);
        xskcbVO.setMsg("");
        Xsb xsb =(Xsb) session.getAttribute("xsb");
        Integer xh = xsb.getXh();
        IPage<XskcbxhVO> xsbIPage = new Page<>(page,limit);

        IPage<XskcbxhVO> result = xskcbMapper.findAll(xsbIPage,xh);

        List<XskcbxhVO> records = result.getRecords();
        xskcbVO.setCount(result.getTotal());
        xskcbVO.setData(records);
        return xskcbVO;
    }
}




