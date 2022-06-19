package com.zsy.xsb.handler;

import cn.hutool.core.date.DateTime;
import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

@Component
public class MyMetaObjectHandler implements MetaObjectHandler {
    @Override
    public void insertFill(MetaObject metaObject) {
        this.setFieldValByName("cssj", DateTime.now(),metaObject);
    }

    @Override
    public void updateFill(MetaObject metaObject) {
    }

}
