package com.zsy.xsb.service;

import com.zsy.xsb.VO.CjbKchVO;
import com.zsy.xsb.VO.CjbVO;
import com.zsy.xsb.VO.XskcbVO;
import com.zsy.xsb.VO.XskcbxhVO;
import com.zsy.xsb.entity.Xskcb;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.servlet.http.HttpSession;

/**
 *
 */
public interface XskcbService extends IService<Xskcb> {
    public XskcbVO<XskcbxhVO> findDate(Integer page, Integer limit,HttpSession session);
}
