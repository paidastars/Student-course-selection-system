package com.zsy.xsb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;

/**
 *
 * @TableName xskcb
 */
@TableName(value ="xskcb")
@Data
public class Xskcb implements Serializable {
    /**
     *
     */
    private Integer xh;

    /**
     *
     */
    private Integer kch;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
