package com.zsy.xsb.service;

import com.zsy.xsb.VO.CjbCharVO;
import com.zsy.xsb.VO.CjbKchVO;
import com.zsy.xsb.VO.CjbVO;
import com.zsy.xsb.VO.ZybVO;
import com.zsy.xsb.entity.Cjb;
import com.baomidou.mybatisplus.extension.service.IService;
import com.zsy.xsb.entity.Zyb;

/**
 *
 */
public interface CjbService extends IService<Cjb> {
    public CjbVO<CjbKchVO> findDate(Integer page, Integer limit);
}
