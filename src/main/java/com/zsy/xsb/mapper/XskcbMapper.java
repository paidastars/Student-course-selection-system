package com.zsy.xsb.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.zsy.xsb.VO.CjbKchVO;
import com.zsy.xsb.VO.XskcbxhVO;
import com.zsy.xsb.entity.Xskcb;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @Entity com.zsy.xsb.entity.Xskcb
 */

@Mapper
@Repository
public interface XskcbMapper extends BaseMapper<Xskcb> {
    IPage<XskcbxhVO> findAll(IPage<XskcbxhVO> page,@Param("xh") Integer xh);
    int insertnoll(@Param("xh") Integer xh,@Param("kch") Integer kch);
}




