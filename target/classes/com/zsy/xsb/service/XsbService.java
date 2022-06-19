package com.zsy.xsb.service;

import com.zsy.xsb.VO.XsbVO;
import com.zsy.xsb.entity.Xsb;
import com.baomidou.mybatisplus.extension.service.IService;
import com.zsy.xsb.entity.Zyb;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author testjava
 * @since 2021-10-28
 */
public interface XsbService extends IService<Xsb> {
    public XsbVO<Xsb> findDate(Long page, Long limit);
}
