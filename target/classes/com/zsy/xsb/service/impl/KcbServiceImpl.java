package com.zsy.xsb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zsy.xsb.VO.KcbVO;
import com.zsy.xsb.VO.ZybVO;
import com.zsy.xsb.entity.Kcb;
import com.zsy.xsb.entity.Zyb;
import com.zsy.xsb.service.KcbService;
import com.zsy.xsb.mapper.KcbMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 *
 */
@Service
public class KcbServiceImpl extends ServiceImpl<KcbMapper, Kcb> implements KcbService{

    @Autowired
    private KcbMapper kcbMapper;
    @Override
    public KcbVO<Kcb> findDate(Integer page, Integer limit) {
        KcbVO kcbVO=new KcbVO();
        kcbVO.setCode(0);
        kcbVO.setMsg("");
        IPage<Kcb> productIPage = new Page<>(page,limit);
        IPage<Kcb> result = kcbMapper.selectPage(productIPage,null);
        List<Kcb> records = result.getRecords();
        kcbVO.setCount(result.getTotal());
        kcbVO.setData(records);
        return kcbVO;
    }

}




