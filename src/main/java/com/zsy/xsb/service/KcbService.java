package com.zsy.xsb.service;

import com.zsy.xsb.VO.KcbVO;
import com.zsy.xsb.entity.Kcb;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 *
 */
public interface KcbService extends IService<Kcb> {
    public KcbVO<Kcb> findDate(Integer page, Integer limit);
}
