package com.zsy.xsb.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zsy.xsb.VO.ZybVO;
import com.zsy.xsb.entity.Zyb;
import com.zsy.xsb.mapper.ZybMapper;
import com.zsy.xsb.service.ZybService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author testjava
 * @since 2021-11-07
 */
@Service
public class ZybServiceImpl extends ServiceImpl<ZybMapper, Zyb> implements ZybService {

    @Autowired
    private ZybMapper zybMapper;

    @Override
    public ZybVO<Zyb> findDate(Integer page, Integer limit) {
        ZybVO zybVO=new ZybVO();
        zybVO.setCode(0);
        zybVO.setMsg("");
        IPage<Zyb> productIPage = new Page<>(page,limit);
        IPage<Zyb> result = zybMapper.selectPage(productIPage,null);
        List<Zyb> records = result.getRecords();
        zybVO.setCount(result.getTotal());
        zybVO.setData(records);
        return zybVO;
    }
}
