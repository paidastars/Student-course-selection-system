package com.zsy.xsb.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zsy.xsb.VO.CjbCharVO;
import com.zsy.xsb.VO.CjbKchVO;
import com.zsy.xsb.entity.Cjb;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @Entity com.zsy.xsb.entity.Cjb
 */
@Mapper
@Repository
public interface CjbMapper extends BaseMapper<Cjb> {
    IPage<CjbKchVO> findAll(IPage<CjbKchVO> page,@Param(Constants.WRAPPER) Wrapper<CjbKchVO> wrapper);
    CjbCharVO findByCJ();
}




