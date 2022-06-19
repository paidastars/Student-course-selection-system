package com.zsy.xsb.mapper;

import com.zsy.xsb.entity.Xsb;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author testjava
 * @since 2021-10-28
 */
@Mapper
@Repository
public interface XsbMapper extends BaseMapper<Xsb> {
}
