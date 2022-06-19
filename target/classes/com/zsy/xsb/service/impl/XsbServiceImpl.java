package com.zsy.xsb.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.toolkit.SqlHelper;
import com.zsy.xsb.VO.XsbVO;
import com.zsy.xsb.entity.Xsb;
import com.zsy.xsb.mapper.XsbMapper;
import com.zsy.xsb.service.XsbService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author testjava
 * @since 2021-10-28
 */
@Service
public class XsbServiceImpl extends ServiceImpl<XsbMapper, Xsb> implements XsbService {
    @Autowired
    private XsbMapper xsbMapper;

    @Override
    public XsbVO<Xsb> findDate(Long page, Long limit) {
        XsbVO xsbVO=new XsbVO();
        xsbVO.setCode(0);
        xsbVO.setMsg("");
        IPage<Xsb> xsbIPage = new Page<>(page,limit);
        IPage<Xsb> result = xsbMapper.selectPage(xsbIPage,null);
        List<Xsb> records = result.getRecords();
        xsbVO.setCount(result.getTotal());
        xsbVO.setData(records);
        return xsbVO;
    }
}
