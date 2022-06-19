package com.zsy.xsb.mapper;

import com.zsy.xsb.entity.Zyb;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author testjava
 * @since 2021-11-07
 */

@Mapper
@Repository
public interface ZybMapper extends BaseMapper<Zyb> {

}
