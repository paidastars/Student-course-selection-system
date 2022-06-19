package com.zsy.xsb.service;

import com.zsy.xsb.VO.ZybVO;
import com.zsy.xsb.entity.Zyb;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author testjava
 * @since 2021-11-07
 */
public interface ZybService extends IService<Zyb> {
    public ZybVO<Zyb> findDate(Integer page,Integer limit);
}
